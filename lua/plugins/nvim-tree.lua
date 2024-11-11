return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local tree = require("nvim-tree")
    tree.setup({
      filters = {
        dotfiles = false,
        gitignore = false,
      }
    })
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFile<CR>")
    vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeClose<CR>")
  end,
}
