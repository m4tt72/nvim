local M = {}

local g = vim.g

function M.disabled_builtins()
  g.loaded_gzip = false
  g.loaded_netrwPlugin = false
  g.loaded_netrwSettngs = false
  g.loaded_netrwFileHandlers = false
  g.loaded_tar = false
  g.loaded_tarPlugin = false
  g.zipPlugin = false
  g.loaded_zipPlugin = false
  g.loaded_2html_plugin = false
  g.loaded_remote_plugins = false
end

function M.impatient()
  local impatient_ok, _ = pcall(require, "impatient")
  if impatient_ok then
    require("impatient").enable_profile()
  end
end

function M.compiled()
  local compiled_ok, _ = pcall(require, "packer_compiled")
  if compiled_ok then
    require "packer_compiled"
  end
end

return M
