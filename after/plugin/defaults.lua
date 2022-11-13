local api = vim.api
local g = vim.g
local opt = vim.opt

-- Remap leader and local leader to ","
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = ","
g.maplocalleader = ","

g.taboo_tab_format = ' %N:%P '
g.argwrap_tail_comma = 1
g.argwrap_padded_braces = '{'

opt.termguicolors = true -- Enable colors in terminal
opt.hlsearch = true --Set highlight on search
opt.number = true --Make line numbers default
opt.relativenumber = true --Make relative number default
opt.expandtab = true -- Tabs are space
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.splitbelow = true -- Set preview window to appear at bottom
opt.mouse = "a" --Enable mouse mode
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case
opt.updatetime = 250 --Decrease update time
opt.signcolumn = "yes" -- Always show sign column
opt.clipboard = "unnamedplus" -- Access system clipboard
opt.wildignore:append "**/node_modules/*"
opt.wildignore:append "**/.git/*"
opt.wildignore:append "*.swp"
opt.wildignore:append "*.bak"
opt.wildignore:append ".pyc"
opt.wildignore:append "*.class"
opt.wildignore:append ".jar"
opt.wildignore:append "*.gif"
opt.wildignore:append "*.png"
opt.wildignore:append "*.jpg"
opt.wildignore:append "*.dcm"
opt.winbar = "%{%v:lua.require'config.winbar'.get_winbar()%}"
opt.showtabline = 2
opt.spell = true
opt.backupdir = './_backup,/tmp,.'

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
  autocmd BufEnter *.md exe 'noremap <leader>p :!open -a "Google Chrome.app" %:p<CR>'
  syntax on
  filetype on
  filetype plugin indent on
]]
