local M = {}

-- Detect system theme
M.get_system_theme = function()
  if vim.fn.has("macunix") == 1 then
    local handle = io.popen('defaults read -g AppleInterfaceStyle 2>/dev/null || echo "Light"')
    local result = handle:read("*a")
    handle:close()
    return result:match("Dark") and "dark" or "light"
  elseif vim.fn.has("unix") == 1 then
    local handle = io.popen('gsettings get org.gnome.desktop.interface gtk-theme 2>/dev/null || echo ""')
    local result = handle:read("*a")
    handle:close()
    return result:lower():match("dark") and "dark" or "light"
  else
    return "dark" -- fallback
  end
end

-- Set theme based on system
M.set_theme = function()
  local theme = M.get_system_theme()

  if theme == "dark" then
    vim.o.background = "dark"
    vim.cmd.colorscheme("kanagawa-wave") -- or any dark theme
  else
    vim.o.background = "light"
    vim.cmd.colorscheme("catppuccin-latte") -- or any light theme
  end
end

return M
