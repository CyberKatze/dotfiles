local M = {}

local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_ok_1, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_1 then
  return
end

M.servers = {
  "cssls",
  "gopls",
  "svelte",
  "cssmodules_ls",
  "emmet_ls",
  "html",
  -- "jdtls",
  "jsonls",
  "solc",
  "sumneko_lua",
  "tflint",
  "tsserver",
  "pyright",
  "yamlls",
  "bashls",
  "clangd",
  "texlab",
  -- "rust_analyzer",
  -- "taplo",
}

local settings = {
  ui = {
    border = "rounded",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

mason.setup(settings)
mason_lspconfig.setup {
  ensure_installed = M.servers,
  automatic_installation = true,
}



return M
