local M = {}

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

local handlers = require("m3d.lsp.handlers")

local function config(_config)
  return vim.tbl_deep_extend("force", {
    capabilities = handlers.capabilities,
    on_attach = handlers.on_attach,
  }, _config or {})
end

M.setup = function(servers)
  -- all the general lspconfig config is in handlers
  for _, server in pairs(servers) do
    if server == "sumneko_lua" then
      lspconfig[server].setup(config(require("m3d.lsp.settings.sumneko_lua")))
    elseif server == "jsonls" then
      lspconfig[server].setup(config(require("m3d.lsp.settings.jsonls")))
      print(config(require("m3d.lsp.settings.jsonls")))
    else
      lspconfig[server].setup(config())
    end
  end
  -- lspconfig.jsonls.setup(config(require("m3d.lsp.settings.jsonls")))
  handlers.setup()
end


return M
