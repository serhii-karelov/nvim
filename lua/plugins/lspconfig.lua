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
    local navic = require("nvim-navic")

    require("lspconfig").pyright.setup({
      filetypes = {"python"},
      on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
      end,
    })
  end,
}
