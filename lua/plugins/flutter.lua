return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    opts = {
      config = true,
      widget_guides = {
        enabled = true,
      },
    },
    keys = {
      { "<leader>cs", false },
      { "<leader>cs", "<cmd>FlutterOutlineToggle<cr>", desc = "Toggle Outline" },
    },
  },
}
