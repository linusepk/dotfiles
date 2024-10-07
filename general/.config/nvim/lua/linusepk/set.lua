vim.opt.nu = true;
vim.opt.rnu = true;
vim.opt.signcolumn = "yes";
vim.wo.wrap = false;

vim.opt.tabstop = 4;
vim.opt.softtabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.expandtab = true;

vim.opt.smartindent = true;

vim.opt.hlsearch = true;
vim.opt.incsearch = true;

vim.opt.termguicolors = true;

vim.opt.scrolloff = 8;

vim.opt.updatetime = 50;
vim.g.c_syntax_for_h = true;

vim.opt.conceallevel = 2;

vim.opt.list = true;
vim.opt.listchars = { trail = ".", tab = "  " };

vim.opt.colorcolumn = "80";

set = {};

function set.obsidian()
    vim.opt.linebreak = true;
    vim.opt.wrap = true;
end

return set;
