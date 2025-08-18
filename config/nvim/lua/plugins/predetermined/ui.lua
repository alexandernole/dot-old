return {
  "nvzone/showkeys",
  {
    "b0o/incline.nvim",
    lazy = false,
    opts = {
      window = {
        margin = { vertical = 0, horizontal = 0 },
      },
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
    lazy = false,
    opts = {
      handlers = { cursor = false, handle = false },
      marks = {
        Search = {
          text = { "▎" },
          priority = 1,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "Search",
        },
        Error = {
          text = { "▎" },
          priority = 2,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "DiagnosticVirtualTextError",
        },
        Warn = {
          text = { "▎" },
          priority = 3,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "DiagnosticVirtualTextWarn",
        },
        Info = {
          text = { "▎" },
          priority = 4,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "DiagnosticVirtualTextInfo",
        },
        Hint = {
          text = { "▎" },
          priority = 5,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "DiagnosticVirtualTextHint",
        },
        Misc = {
          text = { "▎" },
          priority = 6,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "Normal",
        },
        GitAdd = {
          text = "▎ ",
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "GitSignsAdd",
        },
        GitChange = {
          text = "▎ ",
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "GitSignsChange",
        },
        GitDelete = {
          text = "▎ ",
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = "GitSignsDelete",
        },
      },
      excluded_filetypes = { "prompt", "noice", "notify" },
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
