local M = {}
M.palette = {
	-- CORE BACKGROUNDS
	bg0 = "#050308", -- darkest accents
	bg1 = "#121212", -- solid editor background (restore solid for legibility)
	bg2 = "#2A1F3A", -- lighten secondary surface slightly
	bg3 = "#311F4F", -- elevated surfaces

	-- CORE FOREGROUNDS
	fg0 = "#FFFFFF",
	fg1 = "#C7C2E0", -- brighten main text
	fg2 = "#D8CFF3", -- soft graph labels
	fg3 = "#6B578F", -- muted tertiary text

	-- SELECTION & MISC
	selbg = "#2A1F3A", -- deeper than bg2 for contrast
	selfg = "#FFFFFF",
	comment = "#6B578F",

	-- ACCENT COLORS
	color1 = "#E0586A",
	color2 = "#4AB562", -- slightly brighter teal
	color3 = "#9266C4",
	color4 = "#B497CE",
	color5 = "#D1C3EB",
	color6 = "#C1A3E0",

	-- UI DECORATIVE
	uic1 = "#311F4F",
}

function M.apply()
	local p = M.palette
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "void"

	-- Basic
	vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg0, bg = p.color2 })
	vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })

	-- Syntax
	vim.api.nvim_set_hl(0, "Statement", { fg = p.color1 })
	vim.api.nvim_set_hl(0, "Keyword", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "Constant", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "String", { fg = p.color1 })
	vim.api.nvim_set_hl(0, "Function", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "Identifier", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "Type", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.color3, bg = p.bg1, bold = true })

	-- UI
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "Visual", { fg = p.selfg, bg = p.selbg })
	vim.api.nvim_set_hl(0, "Search", { fg = p.bg0, bg = p.color3 })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 })

	-- Popup
	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg1 })

	-- Errors
	vim.api.nvim_set_hl(0, "Error", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color3, bold = true })

	-- Plugins
	require("void.treesitter").apply()
	require("void.snacks").apply()
	require("void.todo-comments").apply()
	require("void.noice").apply()
	require("void.neotree").apply()
end

return M
