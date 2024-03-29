local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    --if client.name == "tsserver" then
    --client.resolved_capabilities.document_formating = false
    --end
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})
require("mason-lspconfig").setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = { 'tsserver', 'lua_ls', 'html', 'cssls', 'clangd', 'pyright' },
    handlers = {
        lsp_zero.default_setup,
    },
})
require("lspconfig").pyright.setup({
    on_attach = on_attach,
    settings = {
        pyright = { autoImportCompletion = true },
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "off",
            },
        },
    },
})
require 'lspconfig'.tsserver.setup {
    on_attach = on_attach
}
require 'lspconfig'.lua_ls.setup {
    on_init = function(client)
        local path = client.workspace_folders[1].name
        if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
            client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using
                        -- (most likely LuaJIT in the case of Neovim)
                        version = 'LuaJIT'
                    },
                    -- Make the server aware of Neovim runtime files
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                            -- "${3rd}/luv/library"
                            -- "${3rd}/busted/library",
                        }
                        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                        -- library = vim.api.nvim_get_runtime_file("", true)
                    }
                }
            })

            client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
        end
        return true
    end
}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.html.setup {
    capabilities = capabilities,
}
-- require 'lspconfig'.jsonls.setup {
--     capabilities = capabilities,
-- }
require 'lspconfig'.cssls.setup {
    capabilities = capabilities,
}
require 'lspconfig'.gdscript.setup {
    capabilities = capabilities,
}
require 'lspconfig'.clangd.setup {
    capabilities = capabilities,
}
