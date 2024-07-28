vim.g.mapleader = " ";
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");

vim.keymap.set("n", "gl", vim.diagnostic.open_float);
vim.keymap.set("n", "<leader>nh", ":noh<CR>");

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww fzftmux<CR>");

vim.keymap.set("n", "<leader>y", "\"+y");
vim.keymap.set("v", "<leader>y", "\"+y");
vim.keymap.set("n", "<leader>Y", "\"+Y");
vim.keymap.set("v", "<leader>Y", "\"+Y");
