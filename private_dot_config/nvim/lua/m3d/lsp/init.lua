local servers = require("m3d.lsp.mason").servers
require("m3d.lsp.lsp-signature")
-- all the general lspconfig config is in handlers
require("m3d.lsp.lspconfig").setup(servers)
--require "m3d.lsp.null-ls"
--require "m3d.lsp.go"
-- For debuging other than GO use this
-- require "m3d.lsp.dap"
