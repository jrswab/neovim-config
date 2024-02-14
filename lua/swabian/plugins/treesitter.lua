return {
	-- Highlight, edit, and navigate code
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
	},
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup({
			-- Add languages to be installed here that you want installed for treesitter
			ensure_installed = {
				'go', 'yaml', 'lua', 'templ', 'javascript',
				'typescript', 'vimdoc', 'vim', 'bash'
			},

			-- Autoinstall languages that are not installed.
			auto_install = true,

			-- Install languages synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- List of parsers to ignore installing
			ignore_install = {},

			-- You can specify additional Treesitter modules here: -- For example: -- playground = {--enable = true,-- },
			modules = {},
			highlight = { enable = true },
			indent = { enable = true },
		})

		local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		treesitter_parser_config.templ = {
			install_info = {
				url = "https://github.com/vrischmann/tree-sitter-templ.git",
				files = { "src/parser.c", "src/scanner.c" },
				branch = "master",
			},
		}

		vim.treesitter.language.register("templ", "templ")
	end
}
