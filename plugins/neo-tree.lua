return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = { "filesystem", "git_status" },
    filesystem = {
      filtered_items = {
        hide_gitignored = false,
        always_show = {
          ".gitignored",
        },
        never_show = {
          ".git",
          ".DS_Store",
        },
      },
    },
  },
}
