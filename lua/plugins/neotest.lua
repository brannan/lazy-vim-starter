return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
    "rouge8/neotest-rust",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-jest")({}),
        require("neotest-vitest"),
        require("neotest-rust")({
          args = { "--nocapture" },
        }),
      },
      icons = {
        child_indent = "│",
        child_prefix = "├",
        collapsed = "─",
        expanded = "╮",
        final_child_indent = " ",
        final_child_prefix = "╰",
        non_collapsible = "─",
        passed = "✓",
        failed = "✗",
        running = "r",
        running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
        skipped = "s",
        unknown = "u",
        watching = "w",
      },
      status = {
        enabled = true,
        signs = true,
        virtual_text = true,
      },
      highlights = {},
    })
  end,
  -- stylua: ignore
  keys = {
    { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end,                      desc = "Run File" },
    { "<leader>tT", function() require("neotest").run.run(vim.loop.cwd()) end,                          desc = "Run All Test Files" },
    { "<leader>tr", function() require("neotest").run.run() end,                                        desc = "Run Nearest" },
    { "<leader>ts", function() require("neotest").summary.toggle() end,                                 desc = "Toggle Summary" },
    { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
    { "<leader>tO", function() require("neotest").output_panel.toggle() end,                            desc = "Toggle Output Panel" },
    { "<leader>tS", function() require("neotest").run.stop() end,                                       desc = "Stop" },
    { "<leader>tl", function() require("neotest").run.run_last() end,                                   desc = "Run Last Test" },
  },
}
