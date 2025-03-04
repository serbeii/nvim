require ('mason-tool-installer').setup ({
	ensure_installed = {
		'sonarlint-language-server',
		'prettier',
		'clang-format',
		'autopep8',
		'tex-fmt',
	},
})

require ('sonarlint').setup ({
	server = {
		cmd = {
			'sonarlint-language-server',
			-- Ensure that sonarlint-language-server uses stdio channel
			'-stdio',
			'-analyzers',
			-- paths to the analyzers you need, using those for python and java in this example
			vim.fn.expand ('$MASON/share/sonarlint-analyzers/sonarpython.jar'),
			vim.fn.expand ('$MASON/share/sonarlint-analyzers/sonarcfamily.jar'),
			-- vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
		},
	},
	filetypes = {
		-- Tested and working
		'python',
		'cpp',
		-- 'java',
	},
})
