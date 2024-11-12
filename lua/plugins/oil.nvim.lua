return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function() 
    require("oil").setup({
      -- default_file_explorer = true, 
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hiddent = function(name, _)
          return name == '.git'
        end
      }
    })
    vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory in floating window" })
  end,
}

