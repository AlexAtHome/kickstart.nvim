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
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'rose-pine'
    end,
  },
  {
    'joeveiga/ng.nvim',
    cond = function()
      local util = require 'lspconfig.util'
      return util.root_pattern('angular.json', 'project.json', 'package.json')
    end,
    config = function()
      local ng = require 'ng'
      vim.keymap.set('n', 'gat', ng.goto_template_for_component, { noremap = true, silent = true, desc = 'Go to template' })
      vim.keymap.set('n', 'gac', ng.goto_component_with_template_file, { noremap = true, silent = true, desc = 'Go to component' })
      vim.keymap.set('n', 'gaT', ng.get_template_tcb, { noremap = true, silent = true, desc = 'Get template built file' })
    end,
  },
}
