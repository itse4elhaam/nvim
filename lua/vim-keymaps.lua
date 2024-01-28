vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set foldmethod=manual")
vim.cmd("set foldcolumn=1")
vim.g.mapleader = " "
vim.opt.signcolumn = "number"
vim.opt.number = true
vim.opt.relativenumber = true
-- keymaps for me:
-- just a keymap for closing stuff
vim.api.nvim_set_keymap('n', '<C-c>', ':close<CR>', {
    noremap = true,
    silent = true
})

vim.api.nvim_set_keymap("n", "<leader>as", ":ASToggle<CR>", {})
-- Map <Leader>t to open a new terminal window
vim.api.nvim_set_keymap('n', '<Leader>t', ':term<CR>', {
    noremap = true,
    silent = true
})
-- Map 'el' to move cursor to the end of the line
vim.api.nvim_set_keymap('n', 'el', '$', {
    noremap = true,
    silent = true
})
-- Map 'sl' to move cursor to the start of the line
vim.api.nvim_set_keymap('n', 'sl', '_', {
    noremap = true,
    silent = true
})

-- Set cursor to underscore in normal mode
vim.api.nvim_win_set_option(0, 'cursorline', true)
vim.api.nvim_win_set_option(0, 'cursorcolumn', false)
vim.api.nvim_win_set_option(0, 'signcolumn', 'no')

-- to comment using the vs code bind: 
vim.keymap.set("n", "<C-_>", function()
    require('Comment.api').toggle.linewise.current()
end, {
    noremap = true,
    silent = true
})

-- to make sure neovim ignores some of the files that are not req
vim.cmd([[
  let g:nvim_tree_ignore = [
      \ 'node_modules',
      \ '.git',
      \ '__pycache__',
      \ ]
]])

-- -- harpoon
-- vim.keymap.set('n', '<leader>hx', require('harpoon.mark').add_file)
-- vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next)
-- vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev)
-- utils.map('n', [[<leader>hm]], ':Telescope harpoon marks<CR>')

-- -- Harpoon Which-key mappings
-- wk.register({
--     -- The first key you are pressing
--     h = {
--         name = "harpoon",
--         -- the second key
--         x = {function()
--             require('harpoon.mark').add_file()
--         end, "Mark file"}
--     }
-- }, {
--     prefix = "<leader>"
-- })
