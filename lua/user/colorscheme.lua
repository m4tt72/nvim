local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  print("colorscheme " .. colorscheme .. " not found!")

  return
else
  vim.opt.termguicolors = true
  vim.g.gruvbox_transparent_bg = 1

  vim.cmd [[
    syntax enable
    colorscheme gruvbox
    hi Normal ctermbg=NONE guibg=NONE
  ]]
end
