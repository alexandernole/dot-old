return {
  "nvzone/volt",
  "nvzone/floaterm",
  "nvzone/timerly",
  "nvzone/typr",
  {
    "snacks.nvim",
    opts = { terminal = { enabled = false } },
  },
  {
    "obsidian-nvim/obsidian.nvim",
    event = "VeryLazy",
    version = "*",
    opts = {
      workspaces = { { name = "personal", path = "~/vaults/personal" } },
      notes_subdir = "_notes",
      daily_notes = { folder = "dailies" },
      templates = { folder = "_templates" },
      attachments = { img_folder = "_attachments/images" },
      completion = { blink = true },
      picker = { name = "snacks.pick" },
      note_id_func = function(title)
        local suffix = title and title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
          or string.char(math.random(65, 90), math.random(65, 90), math.random(65, 90), math.random(65, 90))
        return tostring(os.time()) .. "-" .. suffix
      end,
    },
  },
}
