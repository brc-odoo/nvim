local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

local servers = { 'pylsp', 'denols', 'ts_ls', 'dockerls', 'lua_ls', 'lemminx', 'tailwindcss' }

lspconfig.pylsp.setup{
    cmd = (vim.fn.has('wsl') == 1) and {'/home/mudkip/.local/bin/pylsp'} or {'/usr/bin/pylsp'},
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

lspconfig.ts_ls.setup{
    on_attach = on_attach
}

lspconfig.dockerls.setup{
    on_attach = on_attach
}

lspconfig.lua_ls.setup{
    on_attach = on_attach
}

lspconfig.lemminx.setup{
    on_attach = on_attach
}

lspconfig.tailwindcss.setup{
    on_attach = on_attach
}
