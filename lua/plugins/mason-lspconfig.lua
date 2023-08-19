local M = {
  'williamboman/mason-lspconfig.nvim'
}

M.config = function()
 local mason_lspconfig = require("mason")
 mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "tsserver",
    "lua",
  },
  -- auto-install configured servers (with lspconfig)
  automaticinstallation = true, -- not the same as ensure_installed
 })
end

return M
