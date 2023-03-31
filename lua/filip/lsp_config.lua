require('mason').setup()
require('mason-lspconfig').setup({
        ensure_installed = { 
                'lua_ls',
                'ansiblels',
                'bashls',
                'yamlls',
                'rust_analyzer'
        }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup {
        capabilities = capabilities
}

require('lspconfig').ansiblels.setup{
        capabilities = capabilities
}

require('lspconfig').bashls.setup{
        capabilities = capabilities
}

require('lspconfig').yamlls.setup{
        capabilities = capabilities
}

require('lspconfig').rust_analyzer.setup{
        capabilities = capabilities
}
