return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  after = "catppuccin",
  config = function ()
    vim.opt.termguicolors = true
    bufferline = require("bufferline")
    bufferline.setup({
      options = {
        mode = "tabs",
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        -- add diagnistics icons to the tabs
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        -- -- Turn off numbers for now to reduce visual noise
        -- numbers = function(opts)
        -- -- Adds small superscript number that corresponds to the tab number.
        -- -- Can be used with {n}gt
        --   return opts.raise(opts.ordinal)
        -- end,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File tree",
            text_align = "center",
            separator = false
          }
        },
      }
    })
  end
}
