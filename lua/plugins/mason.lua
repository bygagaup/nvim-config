-- lua/plugins/mason.lua

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "rust_analyzer", "jsonls", "lua_ls"},
})
