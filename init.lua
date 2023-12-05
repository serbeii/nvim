require("core")
local dir = vim.fn.getcwd()
print("updating config from the repository")
local result = vim.fn.system({
    "git",
    "pull",
    dir,
})
if not result == 0 or not result:match("Already up to date%.") then
    print("update failed error code:" .. result)
end
