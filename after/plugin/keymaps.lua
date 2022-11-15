local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }


-- Center search results
keymap("n", "n", "nzz", default_opts)
keymap("n", "N", "Nzz", default_opts)

-- Visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
keymap("n", "<A-Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<A-Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<A-Up>", ":resize -1<CR>", default_opts)
keymap("n", "<A-Down>", ":resize +1<CR>", default_opts)

keymap("t", "<C-w><Left>", "<C-\\><C-n><C-w>h", default_opts)
keymap("t", "<C-w><Up>", "<C-\\><C-n><C-w>j", default_opts)
keymap("t", "<C-w><Down>", "<C-\\><C-n><C-w>k", default_opts)
keymap("t", "<C-w><Right>", "<C-\\><C-n><C-w>l", default_opts)
