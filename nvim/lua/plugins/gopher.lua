return {
  "olexsmir/gopher.nvim",
  ft = { "go" },
  keys = {
    { "<leader>cgsj", "<cmd> GoTagAdd json <CR>", desc = "Add JSON struct tags" },
    { "<leader>cgsy", "<cmd> GoTagAdd yaml <CR>", desc = "Add YAML struct tags" },
  },
  config = function(_, opts)
    require("gopher").setup(opts)
  end,
  build = function()
    vim.cmd([[silent! GoInstallDeps]])
  end,
}
