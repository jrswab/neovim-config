return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},

	-- document existing key chains
	require('which-key').register {
		['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
		['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
		['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
		['<leader>f'] = { name = '[f]ind', _ = 'which_key_ignore' },
		['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
		['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
		['<leader>p'] = { name = '[P]erform', _ = 'which_key_ignore' },
		['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
		['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
		['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
		['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
	}
}
