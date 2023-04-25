return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require('bufferline').setup({
            options = {
                numbers = 'none',
                separator_style = 'thin',
            },
        })
    end,
}
