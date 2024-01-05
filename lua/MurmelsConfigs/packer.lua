-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'

		use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
		}



		use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

		use({
			'rose-pine/neovim', 
			as = 'rose-pine', 
			config = function()
				vim.cmd('colorscheme rose-pine')
			end
		})


		use('theprimeagen/harpoon')
		use('mbbill/undotree')
		use('tpope/vim-fugitive')

        use {
            "williamboman/mason.nvim"
        }
		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v3.x',
			requires = {
				--- Uncomment these if you want to manage the language servers from neovim
				{'williamboman/mason-lspconfig.nvim'},

				-- LSP Support
				{'neovim/nvim-lspconfig'},
				-- Autocompletion
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-buffer'},
				{'hrsh7th/cmp-path'},
				{'hrsh7th/cmp-nvim-lua'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'L3MON4D3/LuaSnip'},
				{'rafamadriz/friendly-snippets'},
				{'saadparwaiz1/cmp_luasnip'},
			}
		}		

        use({
            "nvimtools/none-ls.nvim",
            config = function()
                require("null-ls").setup()
            end,
            requires = { 
                { "nvim-lua/plenary.nvim" },
                { "jay-babu/mason-null-ls.nvim" },
            },
        })
end)
