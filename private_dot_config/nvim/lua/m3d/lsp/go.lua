local go_ok, go = pcall(require, "go")
if not go_ok then
  return
end

local path_ok, path = pcall(require, "nvim-lsp-installer.core.path")
if not path_ok then
  return
end
local install_root_dir = path.concat {
  vim.fn.stdpath "data",
  "lsp_servers",
}

go.setup {
  gopls_cmd = { install_root_dir .. "/go/gopls" },
  fillstruct = "gopls",
  dap_debug = true,
  dap_debug_gui = true,
  lsp_cfg = true,
  lsp_on_attach = true,
}
