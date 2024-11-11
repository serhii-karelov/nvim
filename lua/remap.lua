function vnoremap(from, to)
  vim.keymap.set("v", from, to)
end

function nnoremap(from, to)
  vim.keymap.set("n", from, to)
end

function vn_noremap(from, to)
  vnoremap(from, to)
  nnoremap(from, to)
end

vim.cmd("inoremap <C-A> <Home>")
vim.cmd("inoremap <C-E> <End>")
vim.cmd("inoremap <C-F> <Right>")
vim.cmd("inoremap <C-B> <Left>")

vim.g.mapleader = " "
vim.keymap.set("n", "Q", "gq")

vn_noremap("<leader>y", "\"+y")
vn_noremap("<leader>p", "\"+p")
vn_noremap("<leader>P", "\"+P")

