local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

bufferline.setup {
  options = {
    close_command = 'Bdelete %d',
    indicator_icon = '▎',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    diagnostics = "coc",
    offsets = { { filetype = "NvimTree", text = "Files Tree", padding = 1 } },
  },
}
