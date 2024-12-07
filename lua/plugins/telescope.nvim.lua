return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local actions = require("telescope.actions")
    local open_with_trouble = require("trouble.sources.telescope").open

    -- Use this to add more results without clearing the trouble list
    -- local add_to_trouble = require("trouble.sources.telescope").add

    require("telescope").setup({
      defaults = {
        layout_strategy = 'vertical',
        layout_config = {
          vertical = {
            prompt_position = "top",
            width = 0.75,
            height = 0.85,
            mirror = 1,
            preview_cutoff = 0,
            preview_height = 0.6,
          },
        },
        mappings = {
          i = {
            ["<c-b>"] = open_with_trouble,
          },
          n = {
            ["<c-b>"] = open_with_trouble,
          },
        },
      },
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
    vim.keymap.set("n", "<leader><leader>", builtin.lsp_references)  -- show all references of a symbol under cursor
    vim.keymap.set("n", "<leader>ff", builtin.find_files)  -- [f]ind all [f]iles
    vim.keymap.set("n", "<leader>fg", builtin.git_files)   -- [f]ind only files tracked by [g]it 

    vim.keymap.set("n", "<leader>f.", builtin.grep_string) -- [f]ind string under cursor
    vim.keymap.set("n", "<leader>fa", builtin.live_grep)   -- [f]ind in workdir a string (respect .gitignore)
    vim.keymap.set("n", "<leader>f/", builtin.search_history)  -- [f]ind in search history
    vim.keymap.set("n", "<leader>f:", builtin.command_history) -- [f]ind in command history 
    vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find) -- fuzzy find in current buffer

    vim.keymap.set("n", "<leader>bb", builtin.buffers)        -- [b]uiltin open buffers

    vim.keymap.set("n", "<leader>ss", builtin.lsp_references) -- find refernces of a [s]ymbol under cursor
    vim.keymap.set("n", "<leader>si", builtin.lsp_incoming_calls) -- find [i]ncoming calls for a symbor under cursor
    vim.keymap.set("n", "<leader>so", builtin.lsp_outgoing_calls) -- find [o]utgoing calls for a symbol under cursor
    vim.keymap.set("n", "<leader>sa", builtin.lsp_dynamic_workspace_symbols) -- find among [a]ll [s]ymbols in the workspace
    vim.keymap.set("n", "<leader>s/", builtin.lsp_document_symbols) -- find among [s]ymbols in current buffer

    vim.keymap.set("n", "<leader>gs", builtin.git_status) -- [g]it [s]tatus - search among files returned by
    vim.keymap.set("n", "<leader>gc", builtin.git_bcommits) -- find [g]it [c]comming of current buffer - view history if changes for current buffer
    vim.keymap.set("n", "<leader>gC", builtin.git_commits) -- find all [g]it [c]commits in the workspace
    vim.keymap.set("n", "<leader>gb", builtin.git_branches) -- [g]it [b]rances - find and checkout
    vim.keymap.set("n", "<leader>gS", builtin.git_stash) -- [g]it [s]tash 

  end,
}

