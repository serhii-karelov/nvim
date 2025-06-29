return {
  "nvim-treesitter/nvim-treesitter", 
  config = function() 
    require("nvim-treesitter.configs").setup({
      -- Docs https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#available-modules
      ensure_installed = { "c", "lua", "python", "markdown_inline", "http", "clojure" },
      auto_install = true,
      highlight = {
        enable = true,
        disable = { "csv" }
      },
      indent = {
        enable = true,
        disable = { "csv" }
      }
    })
  end,
}
