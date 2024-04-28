return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    lazy = true,
    config = function()
        local conform = require "conform"

        conform.setup {
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                liquid = { "prettier" },
                lua = { "stylua" },
                python = { "isort", "black" },
            },
        }

        vim.keymap.set({ "n", "v" }, "<leader>fm", function()
            conform.format {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            }
        end, { desc = "Format file or range (in visual mode)" })
    end,
}