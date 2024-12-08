require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'rust_analyzer', 'solargraph', 'gopls', 'phpactor'},
  handlers = {
    function(server_name, on_attach)
	    if server_name == "phpactor" then
		require('lspconfig')[server_name].setup({
			on_attach = on_attach,
			init_options = {
				["language_server_phpstan.enabled"] = true,
				["language_server_psalm.enabled"] = true,
				["language_server_phpcs.enabled"] = true,
			}
		})
	    else
		require('lspconfig')[server_name].setup({})
	    end
    end,
  },
})

