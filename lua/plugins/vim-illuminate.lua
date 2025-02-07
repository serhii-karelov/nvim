return {
  "RRethy/vim-illuminate",
  opts = {
    delay = 150,
    providers = {
        'treesitter',
        'lsp',
        -- 'regex',
    },
    large_file_cutoff = 800,
  },
  config = function(_, opts)
    require("illuminate").configure(opts)
  end,
}
