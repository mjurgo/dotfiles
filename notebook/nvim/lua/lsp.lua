require("mason").setup()

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
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.format{ async = true }<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
end

local servers = { "docker_compose_language_service", "dockerls", "gopls", "jsonls", "lua_ls", "pyright", "tsserver", "zls" }

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

require("lspconfig")["clangd"].setup {
    on_attach = on_attach,
    signs = {
        active = signs,
    },
    capabilities = capabilities,
    cmd = {
        "clangd",
        "--query-driver=/usr/bin/g++-12"
    }
}
