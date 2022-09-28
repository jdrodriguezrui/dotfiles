local nnoremap = require("julianr.keymap").nnoremap
local inoremap = require("julianr.keymap").inoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")

--Basic pair completion
inoremap("{", "{}<Left>")
inoremap("{<CR>", "{<CR>}<Esc>O")
inoremap("{{", "{")
inoremap("{}", "{}")

-- Telescope remaps
nnoremap("<C-p>", "<cmd>Telescope find_files<cr>")
nnoremap("<C-f>", "<cmd>Telescope live_grep<cr>")

