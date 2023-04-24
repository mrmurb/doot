return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end,
    keys = { { "gc", mode = { "n", "v" } }, { "gb", mode = { "n", "v" } } },
}
