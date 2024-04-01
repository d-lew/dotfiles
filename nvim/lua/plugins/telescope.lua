return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = 
    {
      pickers = {
        find_files = {
          follow = true
        },
        live_grep = {
          additional_args ={'-L'}
        },
      }
    },
  config = function(_, opts)
    require('telescope').setup(opts)
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
}
