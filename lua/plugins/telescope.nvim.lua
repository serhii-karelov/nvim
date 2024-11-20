return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      pickers = {
        buffers = {
          initial_mode = "normal",
          mappings = {
            n = {
              ["dd"] = actions.delete_buffer,
            },
          },
        },
        lsp_document_symbols = {
          initial_mode = "normal",
        },
      }
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader><leader>", builtin.lsp_references)  -- show all references
    vim.keymap.set("n", "<leader>ff", builtin.find_files)  -- [f]ind all files
    vim.keymap.set("n", "<leader>fg", builtin.git_files)   -- [f]ind only files tracked by git 

    vim.keymap.set("n", "<leader>g.", builtin.grep_string) -- [g]rep string under cursor in workdir
    vim.keymap.set("n", "<leader>ga", builtin.live_grep)   -- [g]rep all workdir for the string (respect .gitignore)
    vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find)

    vim.keymap.set("n", "<leader>bb", builtin.buffers)     -- [b]uiltin open buffers
    vim.keymap.set("n", "<leader>b/", builtin.search_history)
    vim.keymap.set("n", "<leader>b:", builtin.command_history)

    vim.keymap.set("n", "<leader>ss", builtin.lsp_references)
    vim.keymap.set("n", "<leader>si", builtin.lsp_incoming_calls)
    vim.keymap.set("n", "<leader>so", builtin.lsp_outgoing_calls)
    vim.keymap.set("n", "<leader>S.", builtin.lsp_dynamic_workspace_symbols)
    vim.keymap.set("n", "<leader>s.", builtin.lsp_document_symbols)
  end,
}

