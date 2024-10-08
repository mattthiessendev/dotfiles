return {
    'neovim/nvim-lspconfig',
    config = function()
        local lsp_zero = require('lsp-zero')

        local lsp_attach = function(client, bufnr)
            local opts = {buffer = bufnr}

            vim.keymap.set('n', 'K', vim.lsp.buf.hover(), opts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition(), opts)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration(), opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation(), opts)
            vim.keymap.set('n', 'go', vim.lsp.buf.type_definition(), opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references(), opts)
            vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help(), opts)
            vim.keymap.set('n', '<F2>', vim.lsp.buf.rename(), opts)
            vim.keymap.set({'n', 'x'}, '<F3>', vim.lsp.buf.format({async = true}), opts)
            vim.keymap.set('n', '<F4>', vim.lsp.buf.code_action(), opts)
        end

        lsp_zero.extend_lspconfig({
            sign_text = true,
            lsp_attach = lsp_attach,
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
        })

        require('mason-lspconfig').setup({
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        })
    end
}

