local options = {
  autoread = true,
  clipboard = 'unnamedplus',
  spelllang = 'en',
  hidden = true,
  swapfile = false,
  backup = false,
  mouse = "a",
  number = true,
  relativenumber = false,
  writebackup = false,
  smarttab = true,
  cindent = true,
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  updatetime = 300,
  inccommand = "split",
  splitbelow = true,
  cursorline = true,
  cursorcolumn = true,
  encoding = "UTF-8",
  fileencoding = "UTF-8",
  showcmd = true,
  cmdheight = 1,
  showmode = false,
  hlsearch = true,
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

  -- folding
  foldmethod = "syntax",
  foldenable = false,
}

vim.opt.shortmess:append "c"

vim.g.did_load_filetypes = 1

-- automatically remove any trailing whitespace
vim.cmd "autocmd BufWritePre * %s/\\s\\+$//e"

for k, v in pairs(options) do
  vim.opt[k] = v
end
