return {
	'stevearc/conform.nvim',
	opts = {
		formatters = {
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
				command = 'tex-fmt',
				args = { '-t', '4', '-p', '--stdin'},
				stdin = true,
			},
			java_format_custom = {
				command = 'clang-format',
				args = {
					'--style={ '
						.. 'Language: Java, '
						.. 'BasedOnStyle: Google, '
						.. 'IndentWidth: 4, '
						.. 'ColumnLimit: 80, '
						.. 'AlignOperands: false, '
						.. 'BinPackParameters: false, '
						.. 'AllowAllParametersOfDeclarationOnNextLine: false, '
						.. 'BreakBeforeBraces: Allman, '
						.. 'BreakAfterJavaFieldAnnotations: true, '
						.. 'BreakStringLiterals: true '
						.. '}',
					'$FILENAME',
				},
				stdin = true,
			},
		},
		formatters_by_ft = {
			javascript = { 'prettier' },
			typescript = { 'prettier' },
			typescriptreact = { 'prettier' },
			vue = { 'prettier' },
			html = { 'prettier' },
			json = { 'prettier' },
			yaml = { 'prettier' },
			markdown = { 'prettier' },
			dockerfile = { 'prettier' },
			c = { 'clang_format_custom' },
			opencl = { 'clang_format_custom' },
			cuda = { 'clang_format_custom' },
			metal = { 'clang_format_custom' },
			cpp = { 'clang_format_custom' },
			python = { 'autopep8_custom' },
			lua = { 'stylua_custom' },
			tex = { 'texfmt_custom' },
			latex = { 'texfmt_custom' },
			plaintex = { 'texfmt_custom' },
			java = { 'java_format_custom' },
		},
	},
}
