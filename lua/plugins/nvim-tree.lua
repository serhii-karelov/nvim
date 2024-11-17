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
      modified = {
        enable = true
      },
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
      renderer = {
        highlight_opened_files = "name",
        indent_markers = {
          enable = false,
        },
        icons = {
          git_placement = "right_align",
          show = {
            folder_arrow = false,
          }
        }
      }
    })
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFile<CR>")
    vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeToggle<CR>")
  end,
}
