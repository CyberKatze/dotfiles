local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "m3d.lsp.lsp-installer"
require("m3d.lsp.handlers").setup()
require "m3d.lsp.null-ls"
require "m3d.lsp.go"
-- For debuging other than GO use this
-- require "m3d.lsp.dap"
