---@class util
---@field terminal util.terminal
---@field key_spam util.key_spam
local M = {}

setmetatable(M, {
  __index = function(t, k)
    t[k] = require("util." .. k)
    return t[k]
  end,
})

return M
