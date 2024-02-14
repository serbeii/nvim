local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})


require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'clangd',
        'lua_ls',
        'jdtls',
        'volar',
        'jedi_language_server',
        'sqlls',
    },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,

    }
})

require('mason-tool-installer').setup({
    ensure_installed = {
        'sonarlint-language-server'
    }
})

require('sonarlint').setup({
            server = {
                cmd = {
                    'sonarlint-language-server',
                    -- Ensure that sonarlint-language-server uses stdio channel
                    '-stdio',
                    '-analyzers',
                    -- paths to the analyzers you need, using those for python and java in this example
                    vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
                    vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
                    vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
                }
            },
            filetypes = {
                -- Tested and working
                'python',
                'cpp',
                'java',
            }
        })

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
    },
    formatting = lsp_zero.cmp_format(),
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
})
