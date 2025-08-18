---@class util.toggle
local M = {}

function M.keys()
  Snacks.toggle({
    name = "Keys",
    get = function() return require("showkeys.state").visible end,
    set = function(state) require("showkeys")[state and "open" or "close"]() end,
  }):map("<leader>uK")
end

function M.key_spam()
  Snacks.toggle({
    name = "Key Spam",
    get = function() return Util.key_spam.active end,
    set = function(state) Util.key_spam[state and "enable" or "disable"]() end,
  }):map("<leader>uk")
end

return M
