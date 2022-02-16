local options = {
  autoread = true,
  hidden = true,
  swapfile = false,
  backup = false,
  number = true,
  relativenumber = true,
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

-- automatically remove any trailing whitespace
vim.cmd "autocmd BufWritePre * %s/\\s\\+$//e"

-- jump to last position
vim.cmd [[
  if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif
]]

for k, v in pairs(options) do
  vim.opt[k] = v
end
