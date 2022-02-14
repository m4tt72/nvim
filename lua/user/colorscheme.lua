local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "color " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")

  return
else
  vim.cmd [[
    color gruvbox
    let g:gruvbox_contrast_dark='hard'
    autocmd vimenter * ++nested colorscheme gruvbox
    autocmd vimenter * hi Normal ctermbg=none

    hi ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
  ]]
end
