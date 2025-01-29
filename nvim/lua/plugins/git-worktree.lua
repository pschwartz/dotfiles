return {
  "ThePrimeagen/git-worktree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    {
      "<leader>gwr",
      "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
      desc = "Switch Git Worktrees",
    },
    {
      "<leader>gwR",
      "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>",
      desc = "Createa Git Worktree",
    },
  },
  config = function()
    require("git-worktree").setup()
    require("telescope").load_extension("git_worktree")
  end,
}
