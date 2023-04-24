local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },
            {
                'hrsh7th/nvim-cmp',
                config = function()
                    local cmp = require('cmp')

                    cmp.setup({
                        mapping = {
                            ['<CR>'] = cmp.mapping.confirm(),
                        },
                    })
                end,
            },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
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

            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' },
                        },
                    },
                },
            })

            lsp.setup()
        end,
    })

    use({
        'jose-elias-alvarez/null-ls.nvim',
        requires = 'nvim-lua/plenary.nvim',
        after = 'lsp-zero.nvim',
        config = function()
            local null_ls = require('null-ls')

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                },
            })
        end,
    })

    use({
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { 'lua', 'vim' },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            })
        end,
    })

    use({
        'catppuccin/nvim',
        as = 'catppuccin',
        config = function()
            vim.cmd.colorscheme('catppuccin-macchiato')
        end,
    })

    use({
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<leader>pf', function()
                builtin.find_files({ hidden = true })
            end)
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input('Grep > ') })
            end)
            vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        end,
    })

    use({
        'mbbill/undotree',
        config = function()
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
        end,
    })

    use({
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup()
        end,
    })

    use({
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    })

    use({
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end,
    })

    use({
        'windwp/nvim-autopairs',
        after = 'nvim-cmp',
        config = function()
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
            local cmp = require('cmp')
            require('nvim-autopairs').setup({
                check_ts = true,
                ts_config = {
                    lua = { 'string' },
                    javascript = { 'template_string' },
                },
            })

            cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
        end,
    })

    use({
        'theprimeagen/harpoon',
        config = function()
            local mark = require('harpoon.mark')
            local ui = require('harpoon.ui')

            vim.keymap.set('n', '<leader>a', mark.add_file)
            vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

            vim.keymap.set('n', '<C-h>', function()
                ui.nav_file(1)
            end)
            vim.keymap.set('n', '<C-t>', function()
                ui.nav_file(2)
            end)
            vim.keymap.set('n', '<C-n>', function()
                ui.nav_file(3)
            end)
            vim.keymap.set('n', '<C-s>', function()
                ui.nav_file(4)
            end)
        end,
    })

    use({
        'tpope/vim-fugitive',
        config = function()
            vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
        end,
    })

    if packer_bootstrap then
        require('packer').sync()
    end
end)
