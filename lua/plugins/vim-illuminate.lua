return {
  "RRethy/vim-illuminate",
  opts = {
    delay = 150,
    providers = {
        'treesitter',
        'lsp',
        -- 'regex',
    },
  },
  config = function(_, opts)
    require("illuminate").configure(opts)
  end,
}
