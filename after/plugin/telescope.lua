local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fp', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ft', builtin.tags, {})
vim.keymap.set('n', '<leader>fs', builtin.spell_suggest, {})

--vim.keymap.set('n', '<leader>f', builtin.buffers, {})
--vim.keymap.set('n', '<leader>f', builtin.marks, {})
--vim.keymap.set('n', '<leader>f', builtin.registers, {})

