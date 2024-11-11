vim.cmd("inoremap <C-A> <Home>")
vim.cmd("inoremap <C-E> <End>")
vim.cmd("inoremap <C-F> <Right>")
vim.cmd("inoremap <C-B> <Left>")

function hello()
  print("Hello!!")
end
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>E", hello);

vim.cmd("colorscheme nightfox")
vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set smarttab")
vim.cmd("set tabstop=2") 
vim.cmd("set shiftwidth=2")
