local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities
local util = require "lspconfig/util"
local lspconfig = require("lspconfig")

on_attach = require("plugins.configs.lspconfig").on_attach
capabilities = require("plugins.configs.lspconfig").capabilities


lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
