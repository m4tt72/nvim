local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  print("colorscheme " .. colorscheme .. " not found!")

  return
else
  vim.g.tokyonight_style = "night"
  vim.g.tokyonight_italic_functions = true
  vim.g.tokyonight_italic_variables = false
  vim.g.tokyonight_transparent = true
  vim.g.tokyonight_transparent_sidebar = true
  vim.g.tokyonight_lualine_bold = true
  vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

  vim.cmd[[
    colorscheme tokyonight
  ]]
end
