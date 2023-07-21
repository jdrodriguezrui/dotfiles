local nnoremap = require("julianr.keymap").nnoremap
local inoremap = require("julianr.keymap").inoremap

--Basic pair completion
inoremap("{", "{}<Left>")
inoremap("{<CR>", "{<CR>}<Esc>O")
inoremap("{{", "{")
inoremap("{}", "{}")

-- Telescope remaps
nnoremap("<leader>sf", "<cmd>Telescope find_files<cr>", { desc = '[S]earch [F]iles' })
nnoremap("<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = '[S]earch by [G]rep' })
nnoremap("<leader>sw", "<cmd>Telescope grep_string<cr>", { desc = '[S]earch current [W]ord' })
nnoremap("<leader>sd", "<cmd>Telescope diagnostics<cr>", { desc = '[S]earch [D]iagnostics' })
nnoremap("<leader>sh", "<cmd>Telescope help_tags<cr>", { desc = '[S]earch [H]elp' })

