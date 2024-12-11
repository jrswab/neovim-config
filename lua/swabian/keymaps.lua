-- Custom Keymaps:
--
-- Buffer
vim.keymap.set("n", "<leader>bd", ":bd%<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>bp", ":bp&<CR>", { desc = "Switch to previous buffer" })
vim.keymap.set("n", "<leader>bn", ":bn&<CR>", { desc = "Switch to next buffer" })

-- Jump to closing }
vim.keymap.set("n", "<leader>fe", [[:call search('^\s*}\|$\')<CR>]],
	{ desc = "Jump to closing curly bracket", noremap = true, silent = true })

-- Load Vim's default file viewer:
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "Open Vim explorer" })

-- Replace selected text with yanked text:
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Replace selected with yanked" })

-- Copy to system clipboard instead of Vim's:
vim.keymap.set({"n", "v" }, "<leader>y", [["+y]], { desc = "Copy from cursor to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy line to system clipboard" })

-- No more fat finger W on save:
vim.keymap.set("n", ":W", ":w")

-- For Git:
vim.keymap.set("n", "<leader>gs", ":!git status<CR>", { desc = "Run git status" });
 -- No carriage return in order to add files manually.
vim.keymap.set("n", "<leader>ga", ":!git add ", { desc = "Run git add" });
vim.keymap.set("n", "<leader>gaa", ":!git add .<CR>", { desc = "Run git add ." });
vim.keymap.set("n", "<leader>gc", ":!git commit<CR>", { desc = "Run git comit" });
vim.keymap.set("n", "<leader>gca", ":!git commit -a<CR>", { desc = "Run git commit -a" });

-- Window navigation:
vim.keymap.set("n", "<leader>Wl", ":wincmd l<CR>", { desc = "Move to the left window" })
vim.keymap.set("n", "<leader>Wh", ":wincmd h<CR>", { desc = "Move to the right window" })

-- [[ Keymaps from Kickstart.nvim]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Telescope Keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find with Live Grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find Help Tags' })
