return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x'
    },
    {'hrsh7th/cmp-nvim-lsp'},
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp')
            local cmp_action = require('lsp-zero').cmp_action()

            cmp.setup({
                sources = {
                    {name = 'nvim_lsp'},
                },
                mapping = cmp.mapping.preset.insert({
                    ['<Tab>'] = cmp.mapping.confirm({select = true}),

                    -- Navigate between completion items
                    ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
                    ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),

                    -- `Enter` key to confirm completion
                    ['<CR>'] = cmp.mapping.confirm({select = false}),
                }),
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },
            })
        end
    },
}
