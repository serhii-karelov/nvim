function vnoremap(from, to)
  vim.keymap.set("v", from, to)
end

function nnoremap(from, to)
  vim.keymap.set("n", from, to)
end

function inoremap(from, to)
  vim.keymap.set("i", from, to)
end

function vn_noremap(from, to)
  vnoremap(from, to)
  nnoremap(from, to)
end

inoremap("<C-A>", "<Home>")
inoremap("<C-E>", "<End>")
inoremap("<C-F>", "<Right>")
inoremap("<C-B>", "<Left>")

vim.g.mapleader = " "
vim.keymap.set("n", "Q", "gq")

vn_noremap("<leader>y", "\"+y")
vn_noremap("<leader>p", "\"+p")
vn_noremap("<leader>P", "\"+P")

