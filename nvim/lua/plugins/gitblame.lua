return {
  "f-person/git-blame.nvim",
  lazy = true,
  keys = {
    { "<leader>gb", ":GitBlameToggle<CR>" },
  },
  config = function()
    require("gitblame").setup({
      enabled = false,
      date_format = "%r",
      message_template = "  <author>, <date> • <summary> <<sha>>",
      message_when_not_committed = "",
    })
  end,
}
