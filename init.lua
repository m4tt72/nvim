local utils = require "user.utils"

utils.disabled_builtins()
utils.impatient()

require "user.options"
require "user.plugins"
require "user.keymaps"
require "user.colorscheme"
require "user.colorizer"
require "user.nvim-tree"
require "user.telescope"
require "user.treesitter"
require "user.bufferline"
require "user.lualine"
require "user.gitsigns"
require "user.comments"
require "user.terminal"
require "user.sessions"
require "user.coc"

utils.compiled()
