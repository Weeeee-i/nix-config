local lsp = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.lua_ls.setup({ capabilities = capabilities })
lsp.postgres_lsp.setup({ capabilities = capabilities })
lsp.ruff.setup({ capabilities = capabilities })
lsp.markdown_oxide.setup({ capabilities = capabilities })
lsp.nixd.setup({ capabilities = capabilities })
lsp.rust_analyzer.setup({ capabilities = capabilities })
