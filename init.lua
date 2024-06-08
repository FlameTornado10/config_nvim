-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- DO NOT USE THIS FOR The it change things in "+" and "*",
-- which is buggy with some internal autocomds in LazyVim.
-- -- vim.o.clipboard = 'unnamedplus'
-- -- vim.g.clipboard = {
-- --   name = 'OSC 52',
-- --   copy = {
-- --     ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
-- --     ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
-- --   },
-- --   paste = {
-- --     ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
-- --     ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
-- --   },
-- -- }

vim.opt.wrap = true
