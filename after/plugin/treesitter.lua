local configs = require("nvim-treesitter.configs")
configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "xml", "python", "yaml" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
})
vim.treesitter.language.register('html', 'xml')
