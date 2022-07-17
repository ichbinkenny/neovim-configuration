vim.cmd('colorscheme gruvbox')
vim.cmd('set number relativenumber')
vim.cmd('se cursorline')

-- Have folding work based on syntax of a language
vim.o.fillchars = "fold: "
vim.wo.foldmethod = "expr"
vim.o.foldlevel = 99
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
