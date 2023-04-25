return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {
            -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        {
            'hrsh7th/nvim-cmp',
            config = function()
                local cmp = require('cmp')
                local cmp_action = require('lsp-zero').cmp_action()

                cmp.setup({
                    preselect = 'item',
                    completion = {
                        completeopt = 'menu,menuone,noinsert',
                    },
                    mapping = {
                        ['<CR>'] = cmp.mapping.confirm(),
                        ['<C-Space>'] = cmp.mapping.complete(),
                        ['<Tab>'] = cmp_action.tab_complete(),
                        ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
                    },
                    window = {
                        completion = cmp.config.window.bordered(),
                        documentation = cmp.config.window.bordered(),
                    },
                })
            end,
        }, -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' }, -- Required
    },
    config = function()
        local lsp = require('lsp-zero').preset({})
        local lspconfig = require('lspconfig')

        lsp.on_attach(function(_, bufnr)
            lsp.default_keymaps({ buffer = bufnr })

            vim.keymap.set({ 'n', 'x' }, 'gq', function()
                vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
            end)
        end)

        lsp.ensure_installed({
            'lua_ls',
        })

        lsp.setup()
    end,
}
