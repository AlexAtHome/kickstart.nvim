-- vim: tabstop=4 shiftwidth=4 noexpandtab
-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = false

return {
  {
    'tpope/vim-fugitive',
    lazy = false,
  },
  {
    'Shatur/neovim-ayu',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      vim.cmd.colorscheme 'ayu'
    end,
  },
}
