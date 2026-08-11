vim.pack.add {
	'https://github.com/tpope/vim-fugitive',
	'https://github.com/hedyhli/outline.nvim',
}

require('outline').setup {
	lazy = true,
	cmd = { 'Outline', 'OutlineOpen' }
}

vim.keymap.set('n', '|', '<cmd>Outline<CR>', { desc = 'Toggle outline' })
