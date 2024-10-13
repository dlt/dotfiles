require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'rust_analyzer', 'solargraph', 'gopls'},
  handlers = {
    function(server_name)
	require('lspconfig')[server_name].setup({})
    end,
  },
})
