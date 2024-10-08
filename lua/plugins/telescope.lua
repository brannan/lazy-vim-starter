return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      file_ignore_patterns = {
        "^node_modules/",
        "^vendor/",
        "^dist/",
        "^build/",
        "^target/",
        "^cache/",
        "^logs/",
        "^tmp/",
        "^out/",
        "^deps/",
        "^coverage/",
        "package%-lock.json",
        "%.lock",
      },
    },
  },
}
