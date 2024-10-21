return {
    "neovim/nvim-lspconfig",
    version = "v1.x.x",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        { "williamboman/mason.nvim", config = true },
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "pylsp", "eslint", "lemminx", "lua_ls", "jinja_lsp" }
        })
    end,
}
