
vim.cmd('colorscheme tokyonight')
vim.cmd('set number')

require('lualine').setup{
	options = {
		theme = 'tokyonight',
	}
}

vim.g.tokyonight_colors = {
	hint = '#aaccee',
	warning = '#ffaf00',
	error = '#ff0000',
}
