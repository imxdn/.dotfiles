return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    config = function()
        local telescope = require "telescope"
        local actions = require "telescope.actions"

        telescope.setup {
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        }

        telescope.load_extension "fzf"

        -- Keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
        keymap.set("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
        keymap.set("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
        keymap.set("n", "<leader>gt", "<cmd> Telescope git_status <CR>")
        keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    end,
}
