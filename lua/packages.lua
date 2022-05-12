vim.cmd [[packadd packer.nvim]]

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
	use 'nvim-telescope/telescope-project.nvim'
	use 'pwntester/octo.nvim'
	use 'TimUntersberger/neogit'
	use 'folke/tokyonight.nvim'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'romgrk/barbar.nvim'
	use 'L3MON4D3/LuaSnip'
	use 'mfussenegger/nvim-dap'
	use { 'folke/which-key.nvim', config = function() require('which-key').setup{} end }
	use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
	use { 'saecki/crates.nvim', config = function() require('crates').setup() end}
	use 'nvim-orgmode/orgmode'
	use { 'kyazdani42/nvim-tree.lua', config = function() require('nvim-tree').setup{} end }
	use { 'danymat/neogen', config = function() require('neogen').setup{} end, requires = 'nvim-treesitter/nvim-treesitter'}
end)
