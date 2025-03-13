local ts_config = require("nvim-treesitter.configs")
ts_config.setup({
    ensure_installed = {
        "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "xml", "python",
        "yaml", "typescript", "bash", "jsdoc",
    },
    sync_install = false,
    auto_install = true,
    indent = { enable = true },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown" },
    },
})
vim.treesitter.language.register('html', 'xml')
