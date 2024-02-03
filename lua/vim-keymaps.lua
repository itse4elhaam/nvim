vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set foldmethod=manual")
vim.cmd("set foldcolumn=1")
vim.cmd("set clipboard+=unnamedplus")
vim.g.mapleader = " "
vim.opt.signcolumn = "number"
vim.opt.number = true
vim.opt.relativenumber = true
-- keymaps for me:
-- just a keymap for closing stuff
vim.api.nvim_set_keymap("n", "<C-c>", ":close<CR>", {
	noremap = true,
	silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>as", ":ASToggle<CR>", {})
-- keymap to view today's time spent coding
vim.api.nvim_set_keymap("n", "<leader>wt", ":WakaTimeToday<CR>", {})
-- Map <Leader>t to open a new terminal window
vim.api.nvim_set_keymap("n", "<Leader>t", ":term<CR>", {
	noremap = true,
	silent = true,
})
-- Map 'el' to move cursor to the end of the line
vim.api.nvim_set_keymap("n", "el", "$", {
	noremap = true,
	silent = true,
})
-- Map 'sl' to move cursor to the start of the line
vim.api.nvim_set_keymap("n", "sl", "_", {
	noremap = true,
	silent = true,
})

-- Set cursor styles using Vimscript command
-- vim.cmd("set guicursor=")

-- to make sure neovim ignores some of the files that are not req
vim.cmd([[
  let g:nvim_tree_ignore = [
      \ 'node_modules',
      \ '.git',
      \ '__pycache__',
      \ ]
]])
vim.keymap.set("n", "Y", "y$", {})
-- for handling buffers:
vim.api.nvim_set_keymap("n", "<leader>bw", ":bd!<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>h", ":bprevious<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>l", ":bnext<CR>", {})
-- harpoon
--vim.keymap.set('n', '<leader>hx', require('harpoon.mark').add_file)
--vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next)
--vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev)
--utils.map('n', [[<leader>hm]], ':Telescope harpoon marks<CR>')
--
---- Harpoon Which-key mappings
--wk.register({
--    -- The first key you are pressing
--    h = {
--        name = "harpoon",
--        -- the second key
--        x = {function()
--            require('harpoon.mark').add_file()
--        end, "Mark file"}
--    }
--}, {
--    prefix = "<leader>"
--})
-- this is for yank highlighting:
-- vim.cmd([[augroup highlight_yank
--     autocmd!
--     autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
-- augroup END]])
