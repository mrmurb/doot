return {
    'nvim-tree/nvim-tree.lua',
    cmd = { 'NvimTreeToggle', 'NvimTreeOpen', 'NvimTreeFocus', 'NvimTreeFindFileToggle' },
    config = function()
        require('nvim-tree').setup({
            filters = {
                dotfiles = true,
            },
        })

        vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle)
    end,
}
