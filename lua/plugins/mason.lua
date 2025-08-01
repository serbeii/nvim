return {
	{ 'mason-org/mason.nvim', opts = {} },
	{
		'mason-org/mason-lspconfig.nvim',
		dependencies = {
			'neovim/nvim-lspconfig',
			'mason-org/mason.nvim',
		},
		opts = {
			ensure_installed = {
				--'ts_ls',
				'vtsls',
				'clangd',
				'lua_ls',
				'jdtls',
				'vue_ls',
				'rust_analyzer',
				'sqlls',
				'docker_compose_language_service',
				'dockerls',
				'texlab',
				--'pylyzer',
				'jedi_language_server',
			},
			automatic_installation = true,
		},
		{
			'WhoIsSethDaniel/mason-tool-installer.nvim',
		},
	},
}
