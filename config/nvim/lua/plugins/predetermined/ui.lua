return {
  "nvzone/showkeys",
  {
    "b0o/incline.nvim",
    event = "VeryLazy",
    opts = {
      window = { margin = { vertical = 0, horizontal = 0 } },
      hide = { cursorline = true },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        filename = filename ~= "" and filename or "[No Name]"

        local icon, color = require("nvim-web-devicons").get_icon_color(filename)
        return { { icon, guifg = color }, { " " }, { filename } }
      end,
    },
  },
  {
    "petertriho/nvim-scrollbar",
    event = "VeryLazy",
    opts = {
      handlers = { cursor = false, handle = false },
      excluded_filetypes = { "prompt", "noice", "notify" },
      marks = {
        Search = { text = { "▎" } },
        Error = { text = { "▎" } },
        Warn = { text = { "▎" } },
        Info = { text = { "▎" } },
        Hint = { text = { "▎" } },
        Misc = { text = { "▎" } },
        GitAdd = { text = "▎ " },
        GitChange = { text = "▎ " },
        GitDelete = { text = "▎ " },
      },
    },
  },
  {
    "lualine.nvim",
    opts = {
      options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
    },
  },
}
