-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
	{
		'tpope/vim-fugitive',
		lazy = false,
	},
	{
		'3rd/image.nvim',
		lazy = true,
		build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
		opts = {
			processor = 'magick_cli',
			html = {
				enabled = false,
			},
		},
	},
}
-- vim: ts=2 sts=2 sw=2 et
