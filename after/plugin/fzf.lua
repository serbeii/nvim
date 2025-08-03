local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>pf", function()
	fzf.files()
end, { desc = "FZF - Find files" })

vim.keymap.set("n", "<C-p>", function()
	fzf.git_files()
end, { desc = "FZF - Find git files" })

vim.keymap.set("n", "<leader>ps", function()
	fzf.grep_project()
end, { desc = "FZF - Grep" })
