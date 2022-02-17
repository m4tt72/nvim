local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

bufferline.setup {
  options = {
    close_command = 'Bdelete %d',
    indicator_icon = '▎',
    modified_icon = '●',
    left_trunc_marker = '',
    right_trunc_marker = '',
    diagnostics = "coc",
    offsets = { { filetype = "NvimTree", text = "Files Tree", padding = 1 } },
    show_buffer_close_icons = false,
    show_close_icon = false,
  },
}
