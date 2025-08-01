return {
	"neovim/nvim-lspconfig",
	opts = function()
		local keys = require("lazyvim.plugins.lsp.keymaps").get()
		keys[#keys + 1] = {
			"gd",
			function()
				vim.lsp.buf.definition()
			end,
			desc = "Go to definition",
		}
		keys[#keys + 1] = {
			"K",
			function()
				vim.lsp.buf.hover()
			end,
			desc = "Hover",
		}
		keys[#keys + 1] = {
			"<leader>vws",
			function()
				vim.lsp.buf.workspace_symbol()
			end,
			desc = "workspace_symbol",
		}
		keys[#keys + 1] = {
			"<leader>vd",
			function()
				vim.diagnostic.open_float()
			end,
			desc = "open_float",
		}
		keys[#keys + 1] = {
			"<leader>vca",
			function()
				vim.lsp.buf.code_action()
			end,
			desc = "View code actions",
		}
		keys[#keys + 1] = {
			"<leader>vrr",
			function()
				vim.lsp.buf.references()
			end,
			desc = "References",
		}
		keys[#keys + 1] = {
			"<leader>vrn",
			function()
				vim.lsp.buf.rename()
			end,
			desc = "Rename",
		}
		keys[#keys + 1] = {
			mode = { "n" },
			"<C-h>",
			function()
				vim.lsp.buf.signature_help()
			end,
			desc = "signature_help",
		}
	end,
}
