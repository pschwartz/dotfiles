return {
  { import = "lazyvim.plugins.extras.lang.python" },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    opts = {},
    event = "VeryLazy",
    keys = {
      { "n", "<leader>cvs", "<cmd>VenvSelect<CR>", desc = "Select Python Venv" },
      { "n", "<leader>cvc", "<cmd>VenvSelectCached<CR>", desc = "Select Python Venv from Cached list" },
    },
  },
}
