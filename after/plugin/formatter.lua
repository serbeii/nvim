local formatter = require('formatter')

formatter.setup({
    filetype = {
        javascript = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote", "--print-width=80", "--tab-width=4" },
                    stdin = true
                }
            end
        },
        typescript = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote", "--print-width=80", "--tab-width=4" },
                    stdin = true
                }
            end
        },
        vue = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote", "--print-width=80", "--tab-width=4" },
                    stdin = true
                }
            end
        },
        c = {
            function()
                return {
                    exe = "clang-format",
                    args = {"--style=\"{BasedOnStyle: Google, IndentWidth: 4}\"" ,"--assume-filename=" .. vim.api.nvim_buf_get_name(0)},
                    stdin = true,
                    cwd = vim.fn.expand('%:p:h'), -- Run clang-format in the directory of the current file
                }
            end
        },
        cpp = {
            function()
                return {
                    exe = "clang-format",
                    args = { "--style=Google", "--assume-filename=" .. vim.api.nvim_buf_get_name(0) },
                    stdin = true,
                    cwd = vim.fn.expand('%:p:h') -- Run clang-format in the directory of the current file
                }
            end
        },
        python = {
            function()
                return {
                    exe = "autopep8",
                    args = { "--indent-size=4", "--max-line-length=80" },
                    stdin = true
                }
            end
        },
        markdown = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote", "--print-width=80", "--tab-width=4" },
                    stdin = true
                }
            end
        },
        yaml = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote", "--print-width=80", "--tab-width=4" },
                    stdin = true
                }
            end
        },
        json = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote", "--print-width=80", "--tab-width=4" },
                    stdin = true
                }
            end
        },
        Dockerfile = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote", "--print-width=80", "--tab-width=4" },
                    stdin = true
                }
            end
        },
--        lua = {
--            function()
--                return {
--                    exe = "luaformatter",
--                    args = { "--indent-width=4", "--column-limit=80" },
--                    stdin = true
--                }
--            end
--        },
    },
    logging = false -- Disable logging for faster performance
})
