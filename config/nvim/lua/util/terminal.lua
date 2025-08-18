---@class util.terminal
local M = {}

---@param shell string
function M.setup_windows(shell)
  if not LazyVim.is_win() then
    return
  end

  if shell == "pwsh" or shell == "powershell" then
    return M.use(shell)
  end

  local home = vim.fn.getenv("HOME")
  local program_files = vim.fn.getenv("PROGRAMFILES")

  local paths = {
    [home] = home .. "\\scoop\\apps\\git\\current\\usr\\bin\\bash.exe",
    [program_files] = program_files .. "\\Git\\usr\\bin\\bash.exe",
  }

  for key, path in pairs(paths) do
    if string.find(vim.o.shell, key, 1, true) then
      vim.o.shellcmdflag = "-s -c"
      return M.use(path)
    end
  end
end

---@param shell string
function M.use(shell)
  LazyVim.terminal.setup(shell)
end

function M.toggle()
  require("floaterm").toggle()
end

return M
