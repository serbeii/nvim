return {
	'stevearc/conform.nvim',
	opts = {
		formatters = {
			prettier_custom = {
				command = 'prettier',
				args = {
					'--stdin-filepath',
					'$FILENAME',
					'--single-quote',
					'--print-width=80',
					'--tab-width=4',
				},
				stdin = true,
			},
			clang_format_custom = {
				command = 'clang-format',
				args = {
					'--style={BasedOnStyle: Google, IndentWidth: 4}',
					'--assume-filename=$FILENAME',
				},
				stdin = true,
			},
			autopep8_custom = {
				command = 'autopep8',
				args = {
					'--indent-size=4',
					'--max-line-length=80',
					'-',
				},
				stdin = true,
			},
			stylua_custom = {
				command = 'stylua',
				args = {
					'--config-path',
					vim.fn.stdpath ('config') .. '/styles/stylua.toml',
					'-',
				},
				stdin = true,
			},
			texfmt_custom = {
				command = 'texfmt',
				args = { '-t 4', '-p', vim.api.nvim_buf_get_name (0) },
				stdin = true,
			},
		},
		formatters_by_ft = {
			javascript = { 'prettier_custom' },
			typescript = { 'prettier_custom' },
			typescriptreact = { 'prettier_custom' },
			vue = { 'prettier_custom' },
			html = { 'prettier_custom' },
			json = { 'prettier_custom' },
			yaml = { 'prettier_custom' },
			markdown = { 'prettier_custom' },
			dockerfile = { 'prettier_custom' },
			c = { 'clang_format_custom' },
			cpp = { 'clang_format_custom' },
			python = { 'autopep8_custom' },
			lua = { 'stylua_custom' },
			tex = { 'texfmt_custom' },
			java = { 'clang_format_custom' },
		},
	},
}
