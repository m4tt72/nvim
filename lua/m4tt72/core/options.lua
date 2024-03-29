local options = {
  autoread = true,
  spelllang = 'en',
  hidden = true,
  swapfile = false,
  backup = false,
  mouse = "a",
  number = true,
  relativenumber = true,
  writebackup = false,
  smarttab = true,
  cindent = true,
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  updatetime = 50,
  inccommand = "split",
  splitbelow = true,
  cursorline = true,
  cursorcolumn = true,
  encoding = "UTF-8",
  fileencoding = "UTF-8",
  showcmd = true,
  cmdheight = 1,
  showmode = false,
  hlsearch = false,
  sidescroll = 6,
  confirm = true,
  autowriteall = true,
  list = true,
  undofile = true,
  conceallevel = 0,
  scrolloff = 8,
  ignorecase = true,
  smartcase = true,
  timeoutlen = 1000,
  numberwidth = 4,
  signcolumn = "yes",
  incsearch = true,
  colorcolumn = "80"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
