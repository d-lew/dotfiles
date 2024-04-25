return {
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    keys = {
      {
        "<C-p>",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files()
        end,
      },
      {
        "<leader>fg",
        function()
          local builtin = require("telescope.builtin")
          builtin.live_grep()
        end,
      },
      {
        "<leader>fd",
        function()
          local builtin = require("telescope.builtin")
          builtin.diagnostics({ bufnr = 0 })
        end,
      },
      {
        "<leader>gd",
        function()
          local builtin = require("telescope.builtin")
          builtin.diagnostics()
        end,
      },
      {
        "<leader>gr",
        function()
          local builtin = require("telescope.builtin")
          builtin.lsp_references()
        end,
      },
    },
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      defaults = {
        layout_strategy = "center",
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
      opts["extensions"] = {
        ["ui-select"] = {
          require("telescope.themes").get_cursor({
            initial_mode = "normal",
          }),
        },
      }
      require("telescope").setup(opts)
      require("telescope").load_extension("ui-select")
    end,
  },
  { "nvim-telescope/telescope-ui-select.nvim", lazy = true },
}
