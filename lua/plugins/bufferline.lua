return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup {}
        -- bufferline
        vim.keymap.set('n', [[gb]], ':BufferLinePick<CR>')
    end
}
