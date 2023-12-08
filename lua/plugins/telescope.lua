return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules",
        "vendor",
        "dist",
        "build",
        "target",
        "cache",
        "logs",
        "tmp",
        "deps",
        "out",
        "public",
        "coverage",
        "package%-lock.json",
        "%.lock",
      },
    },
  },
}
