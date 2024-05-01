return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  keys = {
    {
      "<C-h>",
      function()
        local harpoon = require("harpoon")
        local finder = function()
          local paths = {}
          for _, item in ipairs(harpoon:list().items) do
            table.insert(paths, item.value)
          end

          return require("telescope.finders").new_table({
            results = paths,
          })
        end

        local conf = require("telescope.config").values

        require("telescope.pickers")
            .new({}, {
              prompt_title = "Harpoon",
              finder = finder(),
              previewer = conf.file_previewer({}),
              sorter = conf.generic_sorter({}),
              attach_mappings = function(prompt_bufnr, map)
                map("i", "<C-d>", function()
                  local state = require("telescope.actions.state")
                  local selected_entry = state.get_selected_entry()
                  local current_picker = state.get_current_picker(prompt_bufnr)

                  table.remove(harpoon:list().items, selected_entry.index)
                  current_picker:refresh(finder())
                end)
                return true
              end,
            })
            :find()
      end,
    },
    {
      "<leader>a",
      function()
        local harpoon = require("harpoon")
        harpoon:list():add()
      end,
    },
  },
  branch = "harpoon2",
  config = function()
    require("harpoon").setup({})
  end,
}
