vim.g.mapleader = " ";
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");

vim.keymap.set("n", "gl", vim.diagnostic.open_float);
vim.keymap.set("n", "<leader>nh", ":noh<CR>");

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww fzftmux<CR>");

vim.keymap.set("n", "<leader>y", "\"+y");
vim.keymap.set("v", "<leader>y", "\"+y");
vim.keymap.set("n", "<leader>Y", "\"+y$");

vim.keymap.set("n", "<leader>p", "\"+p");
vim.keymap.set("v", "<leader>p", "\"+p");
vim.keymap.set("n", "<leader>P", "\"+P");
vim.keymap.set("v", "<leader>P", "\"+P");

-- Obsidian rebinds
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>");
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>");
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>");
vim.keymap.set("v", "<leader>ot", "\"_d<cmd>ObsidianTemplate<CR>");
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>");
vim.keymap.set("n", "<leader>odt", "<cmd>ObsidianToday<CR>");
vim.keymap.set("n", "<leader>ody", "<cmd>ObsidianYesterday<CR>");
vim.keymap.set("n", "<leader>odT", "<cmd>ObsidianTomorrow<CR>");
vim.keymap.set("n", "<leader>of", "<cmd>silent! s/-/ /g<CR><cmd>noh<CR>0wvU$");
