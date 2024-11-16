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
          "marksman",
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
