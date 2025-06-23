return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-neotest/neotest-python",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-python")({
          dap = { justMyCode = false },
        }),
      },
    })

    vim.keymap.set("n", "<leader>nr", neotest.run.run) -- run nearest test
    vim.keymap.set("n", "<leader>nf", function() neotest.run.run(vim.fn.expand("%s")) end) -- run current file
    vim.keymap.set("n", "<leader>ns", neotest.run.stop) -- stop nearest test
    vim.keymap.set("n", "<leader>na", neotest.run.attach) -- attach to the nearest test
  end,
}
