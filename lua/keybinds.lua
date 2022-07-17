vim.api.nvim_set_keymap('n', '<Space>', '', {})
vim.g.mapleader=' '

function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opts = {noremap = true, silent = true}

-- Require telescope exts here
require('telescope').load_extension('project')
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
map('n', '<leader>op', "<cmd>NvimTreeToggle<cr>", opts)
map('n', '<leader>pp', "<cmd>Telescope project<cr>", opts)

-- Neogen mapping for auto doc generation
map('n', '<leader>cc', ":lua require('neogen').generate()<CR>", opts)

-- Let esc exit term
map('t', '<Esc>', '<C-\\><C-n>', opts)

-- Open and cycle tab shortcuts
map('n', '<leader>to', "<cmd>tabnew<cr>", opts)
map('n', '<leader>tn', "<cmd>tabprevious<cr>", opts)
map('n', '<leader>tp', "<cmd>tabNext<cr>", opts)
map('n', '<leader>tq', "<cmd>tabclose<cr>", opts)
