
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ 'rose-pine/neovim', as = 'rose-pine' })

	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use( 'nvim-treesitter/playground' ) 
	use( 'theprimeagen/harpoon' )
	use( 'mbbill/undotree')
	use( 'tpope/vim-fugitive' )
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
end)
