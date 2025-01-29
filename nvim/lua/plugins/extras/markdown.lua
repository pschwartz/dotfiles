return {
  { import = "lazyvim.plugins.extras.lang.markdown" },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        markdown = { "markdownlint" },
        mdx = { "markdownlint" },
      },
    },
  },
}
