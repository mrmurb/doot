return {
    'nvim-tree/nvim-tree.lua',
    keys = {
        { '<leader>e', vim.cmd.NvimTreeToggle, desc = 'Toggle NvimTree' },
    },
    config = function()
        require('nvim-tree').setup({
            filters = {
                dotfiles = true,
            },
        })
    end,
}
