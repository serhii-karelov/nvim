-- Configure `ruff-lsp`.
-- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#ruff_lsp
-- For the default config, along with instructions on how to customize the settings
require('lspconfig').ruff.setup {
  init_options = {
    settings = {
      args = {},
    }
  }
}
