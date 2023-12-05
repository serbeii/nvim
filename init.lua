require("core")
local dir = vim.fn.stdpath('config').."/.git"
print("updating config from the repository")
local result = vim.fn.system({
    "git",
    "--git-dir="..dir,
    "pull",
})
if not result == 0 or not result:match("Already up to date%.") then
    print("update failed error code:" .. result)
end
