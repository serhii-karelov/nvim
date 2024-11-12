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
