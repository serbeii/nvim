require ('rose-pine').setup ({
	variant = 'auto', -- auto, main, moon, or dawn
	dark_variant = 'moon', -- main, moon, or dawn
	dim_inactive_windows = true,
	extend_background_behind_borders = false,

	enable = {
		terminal = true,
		legacy_highlights = true,
		migrations = true,
	},

	styles = {
		bold = true,
		italic = true,
		transparency = false,
	},

	-- NOTE: Highlight groups are extended (merged) by default. Disable this
	-- per group via `inherit = false`
	highlight_groups = {
		-- Comment = { fg = "foam" },
		-- StatusLine = { fg = "love", bg = "love", blend = 15 },
		-- VertSplit = { fg = "muted", bg = "muted" },
		-- Visual = { fg = "base", bg = "text", inherit = false },
	},

	before_highlight = function (group, highlight, palette)
		-- Disable all undercurls
		-- if highlight.undercurl then
		--     highlight.undercurl = false
		-- end
		--
		-- Change palette colour
		-- if highlight.fg == palette.pine then
		--     highlight.fg = palette.foam
		-- end
	end,
})

vim.api.nvim_set_hl (0, 'Normal', { bg = 'none' })
-- vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme rose-pine-main")
vim.cmd ('colorscheme rose-pine-moon')
-- vim.cmd("colorscheme rose-pine-dawn")
