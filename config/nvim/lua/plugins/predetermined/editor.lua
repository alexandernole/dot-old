return {
  {
    "snacks.nvim",
    opts = {
      picker = {
        layout = {
          preview = true,
          preset = "vscode",
        },
      },
    },
  },
  {
    "gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = { delay = 300 },
    },
  },
  {
    "which-key.nvim",
    opts = {
      preset = "classic",
      spec = {
        { "<leader>o", group = "overseer", icon = "" },
        { "<leader>L", group = "lazyvim" },
        {
          "<leader>N",
          group = "nvzone",
          icon = { icon = "", color = "purple" },
        },
        {
          "<leader>Nt",
          group = "typing",
          icon = { icon = "", color = "yellow" },
        },
        {
          "<leader>Nts",
          icon = { icon = "", color = "green" },
        },
        {
          "<leader>NT",
          icon = { icon = "󰥔", color = "red" },
        },
        { "<leader>Ntt", icon = "" },
      },
    },
  },
}
