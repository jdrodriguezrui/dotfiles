local nnoremap = require("utils.keymap").nnoremap
local inoremap = require("utils.keymap").inoremap

require('hlslens').setup()

local kopts = {noremap = true, silent = true}

nnoremap('n', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
nnoremap('N', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
nnoremap('*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
nnoremap('#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
nnoremap('g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
nnoremap('g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

nnoremap('<Leader>l', '<Cmd>noh<CR>', kopts)
