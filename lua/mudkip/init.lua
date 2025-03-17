require("mudkip.remap")
-- local statuscolumn = require("mudkip.statuscolumn")

-- OS Info
vim.g.linux = vim.fn.has('linux') == 1
vim.g.wsl = vim.fn.has('wsl') == 1

vim.g.cmp = true

-- vim.opt.statuscolumn = "%!v:lua.statuscolumn. myStatusColumn()"

vim.g.have_nerd_font = true

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.showmode = false

vim.opt.timeoutlen = 500
vim.opt.updatetime = 250

vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true

-- Save / Backup / Undo settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- Split to right / below by default
vim.opt.splitright = true
vim.opt.splitbelow = true

-- completion
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

vim.opt.clipboard:append("unnamedplus")
-- if vim.fn.has('wsl') == 1 then
--     vim.g.clipboard = {
--         name = "win32yank-wsl",
--         copy = {
--             ["+"] = "win32yank.exe -i --crlf",
--             ["*"] = "win32yank.exe -i --crlf",
--         },
--         paste = {
--             ["+"] = "win32yank.exe -i --lf",
--             ["*"] = "win32yank.exe -i --lf",
--         },
--         cache_enabled = 0,
--     }
-- end
