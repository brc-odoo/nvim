local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

local servers = { 'pylsp', 'eslint' }

lspconfig.pylsp.setup{
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = { enabled = false },
                flake8 = {
                    enabled = true,
                    ignore = 'W391, E301, E302, E501, W504',
                    maxLineLength = 200
                },
                pylint = {
                    enabled = false,
                    executable = 'pylint'
                },
                jedi_completion = { fuzzy = true },
                isort = { enabled = true },
            }
        }
    },
    flags = {
        debounce_text_changes = 200,
    },
}
lspconfig.eslint.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
        })
    end,
    settings = {
        workingDirectory = { mode = "auto"}
    }
})

