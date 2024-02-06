-- Leader is spacebar:
vim.g.mapleader = " "

-- Load Vim default file viewer:
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard instead of Vim's
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- No more fat finger W on save:
vim.keymap.set("n", ":W", ":w")

-- For Git:
vim.keymap.set("n", "<leader>gs", ":!git status<CR>");
vim.keymap.set("n", "<leader>gc", ":!git commit<CR>");
vim.keymap.set("n", "<leader>gca", ":!git commit -a<CR>");
vim.keymap.set("n", "<leader>ga", ":!git add "); -- No carriage return in order to add files manually.
vim.keymap.set("n", "<leader>gaa", ":!git add .<CR>");

