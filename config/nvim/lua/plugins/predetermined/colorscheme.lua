return {
  {
    "tokyonight.nvim",
    opts = {
      style = "night",
      on_highlights = function(hl, colors)
        local bg = colors.bg
        local dark = colors.bg_dark

        hl.InclineNormal = { bg = colors.magenta2, fg = colors.black }
        hl.InclineNormalNC = { bg = bg }
        hl.DapUINormal = { bg = dark }
        hl.DapUINormalNC = { bg = dark }
        hl.WinBarNC = { bg = dark }
        hl.WinBar = { bg = dark }
        hl.EdgyWinBar = { bg = dark, fg = "#7AA2F7" }
        hl.TelescopeResultsBorder = { bg = dark, fg = dark }
        hl.TelescopeResultsTitle = { fg = dark }
        hl.TelescopePreviewBorder = { bg = dark, fg = dark }
        hl.SnacksPickerPreviewBorder = { bg = dark, fg = dark }
        hl.SnacksWinBar = { bold = true, bg = dark, fg = colors.blue }
      end,
    },
  },
}
