# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
PATH="/opt/homebrew/bin:$PATH"

# Customize to your needs...

export CPPFLAGS="-I/opt/homebrew/opt/bzip2/include -I/opt/homebrew/opt/zlib/include -I/opt/homebrew/opt/openssl@1.1/include -I/opt/homebrew/opt/postgresql@11/include $CPPFLAGS"
export CPPFLAGS="-I/usr/local/opt/bzip2/include -I/usr/local/opt/zlib/include -I/usr/local/opt/openssl@1.1/include -I/usr/local/opt/postgresql@15/include $CPPFLAGS"
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1
export LDFLAGS='-L/opt/homebrew/opt/bzip2/lib -L/opt/homebrew/opt/zlib/lib -L/opt/homebrew/opt/openssl@1.1/lib -L/opt/homebrew/opt/postgresql@15/lib -L/opt/homebrew/opt/libxml2/lib -L/opt/homebrew/opt/readline/lib'

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:/Users/dlt/flutter/bin"
export PATH="/Users/dlt/CSGO_HLTV_Web_Scraping/csgo_hltv:/opt/homebrew/opt/openssl@1.1/bin:/opt/homebrew/opt/postgresql@15/bin:/opt/homebrew/opt/rabbitmq/sbin:$PATH"
export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:/usr/local/opt/postgresql@15/bin:/usr/local/opt/rabbitmq/sbin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig:/opt/homebrew/opt/postgresql@15/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig:/usr/local/opt/postgresql@15/lib/pkgconfig:$PKG_CONFIG_PATH"



export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


AWS_REGION='us-east-2'
export LC_CTYPE=en_US.UTF-8
export PGDATA=/usr/local/var/postgres
export PGHOST=localhost
export WORKON_HOME=~/.virtualenvs
#export OPENBLAS=/usr/local/opt/openblas
export OPENBLAS=/opt/homebrew/opt/openblas


if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
fi

eval "$(pyenv init -)"
pyenv virtualenvwrapper

# hack for cocoapods-keys
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

prompt powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $HOME/.cargo/env

alias gd='git diff'
alias gs='git status'
alias gb='git branch'
alias gp='git push'
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'

#eval "$(atuin init zsh)"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(rbenv init -)"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
