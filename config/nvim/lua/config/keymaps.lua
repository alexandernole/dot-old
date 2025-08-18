local map = vim.keymap.set
local nomap = vim.keymap.del

Snacks.toggle({
  name = "Key Spam",
  get = function() return Util.key_spam.active end,
  set = function(state) Util.key_spam[state and "enable" or "disable"]() end,
}):map("<leader>uk")

-- Move Lines
map("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- floating terminal
nomap("n", "<leader>fT")
map("n", "<leader>ft", function() Util.terminal.toggle() end, { desc = "Terminal (Root Dir)" })
map("n", "<c-/>", function() Util.terminal.toggle() end, { desc = "Terminal (Root Dir)" })
map("n", "<c-_>", function() Util.terminal.toggle() end, { desc = "which_key_ignore" })

-- Terminal Mappings
map("t", "<C-/>", function() Util.terminal.toggle() end, { desc = "Hide Terminal" })
map("t", "<c-_>", function() Util.terminal.toggle() end, { desc = "which_key_ignore" })

-- LazyVim Changelog
map("n", "<leader>Lc", function() LazyVim.news.changelog() end, { desc = "Changelog" })
map("n", "<leader>Le", function() LazyVim.extras.show() end, { desc = "Extras" })

-- nvzone
Snacks.toggle({
  name = "Keys",
  get = function() return require("showkeys.state").visible end,
  set = function(state) require("showkeys")[state and "open" or "close"]() end,
}):map("<leader>Nk")
map("n", "<leader>NT", function() require("timerly").toggle() end, { desc = "Timerly Toggle" })
map("n", "<leader>Nts", function() require("typr").open() end, { desc = "Start" })
map("n", "<leader>Ntt", function() require("typr.stats").open() end, { desc = "Stats" })
