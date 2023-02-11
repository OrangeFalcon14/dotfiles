local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-Tab>', '<Cmd>BufferNext<CR>', opts)

map('n', '<leader>b', '<CMD>NvimTreeToggle<CR>', opts)
map('i', '<C-b>', '<CMD>NvimTreeToggle<CR>', opts)

map('n', '<leader>t', '<CMD>Telescope<CR>', opts)
