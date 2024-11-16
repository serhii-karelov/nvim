-- TODO:
--
--
require("config.lazy")
require("remap")
require("basic_config")
require("config.ruff")

---------------------------------
--      netrw start              
---------------------------------

-- disable in favor of neo-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd("let g:netrw_browse_split=4")
-- vim.cmd("let g:netrw_altv")
vim.cmd("let g:netrw_preview=1")
vim.cmd("let g:netrw_winsize=-25")
vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_liststyle=3")
vim.cmd("let g:netrw_keepdir=0")
-- vim.cmd("Ve") -- open Vertical Explorer
---------------------------------
--        netrw end             |
---------------------------------
