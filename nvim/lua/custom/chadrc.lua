---@type ChadrcConfig
local M = {}

M.ui = {
  threme = 'melange',

  statusline = {
    enabled = true,
    theme = "default",
    separator_style = "default",
    overriden_modules = nil,
  },
  tabufline = {
    enabled = true,
    lazyload = false,
    overriden_modules = nil,
  }
}

return M
