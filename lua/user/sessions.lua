local status_ok, auto_session = pcall(require, "auto-session")
if not status_ok then
  return
end

auto_session.setup {
  log_level = 'info',
  auto_session_suppress_dirs = {'~/'}
}
