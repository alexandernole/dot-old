---@class util.key_spam
local M = {}

local PRESS_THRESHOLD = 10
local RESET_DELAY = 2000
local WATCHED_KEYS = { "h", "j", "k", "l", "+", "-" }

M.active = false
local press_count = 0
local keymap_store = {}

---@param id any
local function notify_spam(id)
  return pcall(vim.notify, "Hold it Cowboy!", vim.log.levels.WARN, {
    icon = "🤠",
    replace = id,
    keep = function()
      return press_count >= PRESS_THRESHOLD
    end,
  })
end

---@param key string
local function setup_keymap(key)
  local notification_id
  local timer = assert(vim.uv.new_timer())

  local function handler()
    if vim.v.count > 0 then
      press_count = 0
    end

    if press_count >= PRESS_THRESHOLD and vim.bo.buftype ~= "nofile" then
      local ok, id = notify_spam(notification_id)
      notification_id = ok and id or nil
    else
      press_count = press_count + 1
      timer:start(RESET_DELAY, 0, function()
        press_count = 0
      end)
      return key
    end
  end

  vim.keymap.set("n", key, handler, { expr = true, silent = true })
  keymap_store[key] = true
end

function M.enable()
  if M.active then
    return
  end
  for _, key in ipairs(WATCHED_KEYS) do
    setup_keymap(key)
  end
  M.active = true
end

function M.disable()
  if not M.active then
    return
  end
  for _, key in ipairs(WATCHED_KEYS) do
    if keymap_store[key] then
      vim.keymap.del("n", key)
      keymap_store[key] = nil
    end
  end
  M.active = false
end

vim.api.nvim_create_user_command("KeySpamToggle", function()
  M[M.active and "enable" or "disable"]()
end, { desc = "Key Spam Toggle" })

return M
