-- Switch to header/cpp - only works in a c/cpp file
vim.keymap.set("n", "<leader>h", ":Ouroboros<CR>")

--autocmd! Filetype c,cpp map<buffer> <C-e> :Ouroboros<CR>
--vim.api.nvim_create_autocmd('FileType', {
--	pattern = ['c', 'cpp'],
--	group = vim.api.nvim_create_augroup('c_only_keymap', { clear = true }),
--	callback = function ()
--		vim.keymap.set('n', ';1s', '\\section{}<CR><CR>(!)<ESC>2kf}i', { silent = true, buffer = true })
--	end,
--})
