return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr
			opts.desc = "Show LSP References"
			keymap.set("n", "gR", "<cmd>FzfLua lsp_references<CR>", opts)

			opts.desc = "Show LSP Definitions"
			keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

			opts.desc = "Show LSP Type Definitions"
			keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions<CR>", opts)

			opts.desc = "Show LSP Implementations"
			keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", opts)

			opts.desc = "Show LSP Type Definitions"
			keymap.set("n", "gt", "<cmd>FzfLua lsp_typedefs<CR>", opts)

			opts.desc = "Show workspace symbols"
			keymap.set("n", "<leader>ws", "<cmd>FzfLua lsp_workspace_symbols<CR>", opts)

			opts.desc = "Show Document Symbols"
			keymap.set("n", "<leader>ds", "<cmd>FzfLua lsp_document_symbols<CR>", opts)

			opts.desc = "See available code actions"
			keymap.set("n", "<leader>ca", "<cmd>FzfLua lsp_code_actions<CR>", opts)

			opts.desc = "Smart rename"
			keymap.set("n", "<leader>rn", "<cmd>FzfLua lsp_rename<CR>", opts)

			opts.desc = "Show document diagnostics"
			keymap.set("n", "<leader>D", "<cmd>FzfLua diagnostics_document<CR>", opts)

			opts.desc = "Show workspace diagnostics"
			keymap.set("n", "<leader>wd", "<cmd>FzfLua diagnostics_workspace<CR>", opts)

			opts.desc = "Show line diagnostics"
			keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

			opts.desc = "Go to previous diagnostic"
			keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

			opts.desc = "Go to next diagnostic"
			keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end
		lspconfig["html"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["tsserver"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["cssls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["htmx"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["jsonls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["rust_analyzer"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["gopls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
		lspconfig["emmet_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
	end,
}
