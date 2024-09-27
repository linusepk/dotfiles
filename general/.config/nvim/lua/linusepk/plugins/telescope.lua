return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim"
    },
    keys = {
        { "<leader>pf", function() require("telescope.builtin").find_files() end, mode = "n" },
        { "<C-p>", function() require("telescope.builtin").git_files() end, mode = "n" },
        { "<leader>ps", function() require("telescope.builtin").live_grep({additional_args = {"-U"}}) end, mode = "n" },
        { "<leader>pv", ":Telescope file_browser<CR>", mode = "n", noremap = true }
    },
    config = function()
        require("telescope").setup {
            pickers = {
                colorscheme = {
                    enable_preview = true
                }
            }
        }
        require("telescope").load_extension "file_browser"
    end
}
