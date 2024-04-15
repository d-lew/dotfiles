return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      defaults = {
        file_ignore_patterns = { ".git/", "node_modules/" },
      },
      pickers = {
        find_files = {
          follow = true,
          hidden = true,
          no_ignore = true,
        },
        live_grep = {
          additional_args = { "-L", "--hidden" },
        },
      },
    },
    config = function(_, opts)
      require("telescope").setup(opts)
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fd", function()
        builtin.diagnostics({ bufnr = 0 })
      end, {})
      vim.keymap.set("n", "<leader>ad", builtin.diagnostics, {})
      vim.keymap.set("n", "<leader>gr", builtin.lsp_references, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local tele = require("telescope")
      tele.setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
              initial_mode = "normal",
            }),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
