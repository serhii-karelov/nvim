-- vim.cmd("colorscheme catppuccin-frappe")
vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set smarttab")
vim.cmd("set tabstop=2") 
vim.cmd("set shiftwidth=2")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
-- resize windows
vim.keymap.set("n", "<C-w>H", "<Cmd>vertical resize -10<CR>")
vim.keymap.set("n", "<C-w>L", "<Cmd>vertical resize +10<CR>")
vim.keymap.set("n", "<C-w>K", "<Cmd>resize +5<CR>")
vim.keymap.set("n", "<C-w>J", "<Cmd>resize -5<CR>")

-- TODO
-- Switch tabs with <leader>+1, <leader>+2, ...
-- Create new tab?
-- Resize windows using repetitive shift+h,h,j,k
-- Git 
-- search and replace
-- Todo??? Why doesn't work? 
--
