return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    -- sources = { "filesystem", "git_status" },
    sources = { "filesystem" },
    source_selector = {
      winbar = false,
    },
    filesystem = {
      filtered_items = {
        hide_gitignored = false,
        always_show = {
          ".gitignore",
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
