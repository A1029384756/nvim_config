vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>fe', ':E<CR>', {})

--folding
vim.keymap.set('n', '<leader>sf', 'za', {})

local telescope_present, builtin = pcall(require, 'telescope.builtin')
if not telescope_present then
  return
end
local harpoon_present = pcall(require, 'harpoon')
if not harpoon_present then
  return
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>mf', require('harpoon.mark').add_file, {})
vim.keymap.set('n', '<leader>rm', require('harpoon.mark').rm_file, {})
vim.keymap.set('n', '<leader>hf', require('harpoon.ui').toggle_quick_menu, {})
vim.keymap.set('n', '<leader>fh', ':Telescope harpoon marks<CR>', {})

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
