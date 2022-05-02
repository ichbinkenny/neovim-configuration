vim.cmd('colorscheme nightfox')
vim.cmd('set number')

require('lualine').setup{
	options = {
		theme = 'nightfox'
	}
}
