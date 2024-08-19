vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = "*.md",
    callback = function ()
        vim.opt.wrap = true;
        vim.opt.linebreak = true;
    end,
});
