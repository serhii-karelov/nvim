return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim", opts = {}},
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = {
          "pyright",
          "ruff",
        }
      }
    },
  },
  config = function()

    require("lspconfig").pyright.setup({
      filetypes = {"python"},
    })
  end,
}
