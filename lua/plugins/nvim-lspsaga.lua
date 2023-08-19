local M = {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons'
  }
}

M.config = function()
  require('lspsaga').setup({})
end

return M

