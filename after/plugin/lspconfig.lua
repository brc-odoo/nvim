local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

local servers = { 'pylsp', 'denols' }

lspconfig.pylsp.setup{
    cmd = {'/home/mudkip/.local/bin/pylsp'}, 
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

lspconfig.denols.setup{
    on_attach = on_attach
}
