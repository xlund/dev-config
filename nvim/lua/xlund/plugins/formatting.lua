return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local keymap = vim.keymap

		local format = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		}

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				markdown = { "prettier" },
				go = { "gofmt" },
				rust = { "rustfmt" },
				html = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
			},
			format_on_save = format,
		})

		keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format(format)
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
