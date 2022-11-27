require("nvim-lsp-installer").setup {}

local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local opts = { noremap = true, silent = true }

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>s", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

local servers = { "gopls", "sumneko_lua", "solargraph", "rust_analyzer", "pyright" }

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in pairs(servers) do
  require("lspconfig")[lsp].setup {
    on_attach = on_attach,
    signs = {
      active = signs,
    },
    capabilities = capabilities,
  }
end
