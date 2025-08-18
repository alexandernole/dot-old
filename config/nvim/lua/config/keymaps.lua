local map = vim.keymap.set
local nomap = vim.keymap.del

Util.toggle.key_spam()

-- Move Lines
map("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- floating terminal
nomap("n", "<leader>fT")
map("n", "<leader>ft", function() Util.terminal.open() end, { desc = "Terminal (Root Dir)" })
map("n", "<c-/>", function() Util.terminal.open() end, { desc = "Terminal (Root Dir)" })
map("n", "<c-_>", function() Util.terminal.open() end, { desc = "which_key_ignore" })

-- Terminal Mappings
map("t", "<C-/>", function() Util.terminal.hide() end, { desc = "Hide Terminal" })
map("t", "<c-_>", function() Util.terminal.hide() end, { desc = "which_key_ignore" })

-- LazyVim Changelog
map("n", "<leader>Lc", function() LazyVim.news.changelog() end, { desc = "Changelog" })
map("n", "<leader>Le", function() LazyVim.extras.show() end, { desc = "Extras" })

-- nvzone
Util.toggle.keys()
map("n", "<leader>NT", function() require("timerly").toggle() end, { desc = "Timerly Toggle" })
map("n", "<leader>Nts", function() require("typr").open() end, { desc = "Start" })
map("n", "<leader>Ntt", function() require("typr.stats").open() end, { desc = "Stats" })
