-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('swabian.lazy_init')
require('swabian.tweaks')
require('swabian.keymaps')

vim.filetype.add({
	extention = {
		templ = 'templ',
	},
})
