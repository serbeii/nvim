require("core")
local dir = vim.fn.getcwd()
print("updating config from the repository")
vim.fn.system({
    "git",
    "pull",
    dir
})
print("updated")
