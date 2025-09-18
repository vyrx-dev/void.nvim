local M = {}
M.palette = {
	---------------------------------------------------------------------------
	-- CORE BACKGROUND SHADES (dark → light)
	bg0 = "#050308", -- extreme darkest purple-black
	bg1 = "NONE", -- transparent primary background
	bg2 = "#1F1635", -- secondary surface (CursorLine, panels)
	bg3 = "#311F4F", -- elevated surface (statusline, titles)
	---------------------------------------------------------------------------
	-- CORE FOREGROUNDS (bright → dim)
	fg0 = "#FFFFFF", -- maximum contrast foreground
	fg1 = "#B497CE", -- primary text (soft pastel)
	fg2 = "#D1C3EB", -- secondary text (graph labels)
	fg3 = "#4A3D5C", -- tertiary / subtle text
	---------------------------------------------------------------------------
	-- SELECTION & MISC
	selbg = "#1F1635", -- visual selection background
	selfg = "#FFFFFF", -- foreground inside selected regions
	comment = "#4A3D5C", -- comment text + doc annotations
	---------------------------------------------------------------------------
	-- ACCENT / SEMANTIC COLOR SLOTS
	color1 = "#E0586A", -- error / critical (crimson accent)
	color2 = "#52B8A3", -- primary accent / info (teal)
	color3 = "#8047B9", -- attention / todo / highlights (purple)
	color4 = "#9266C4", -- modified / constant (title purple)
	color5 = "#B497CE", -- type / secondary accent (main fg)
	color6 = "#C1A3E0", -- keywords / strong tokens (light lavender)
	---------------------------------------------------------------------------
	-- UI DECORATIVE & LOW EMPHASIS ELEMENTS
	uic1 = "#311F4F", -- borders, separators, guides
}

function M.apply()
	local p = M.palette
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "void"
	-- Basic highlight groups
	vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg0, bg = p.color2 })
	vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })
	-- Syntax groups using purple theme colors
	vim.api.nvim_set_hl(0, "Statement", { fg = p.color1 }) -- crimson statements
	vim.api.nvim_set_hl(0, "Keyword", { fg = p.color6 }) -- light lavender keywords
	vim.api.nvim_set_hl(0, "Operator", { fg = p.color6 }) -- operators
	vim.api.nvim_set_hl(0, "Constant", { fg = p.color5 }) -- main purple constants
	vim.api.nvim_set_hl(0, "Number", { fg = p.color5 }) -- numbers
	vim.api.nvim_set_hl(0, "Boolean", { fg = p.color5 }) -- booleans
	vim.api.nvim_set_hl(0, "Type", { fg = p.color4 }) -- title purple types
	vim.api.nvim_set_hl(0, "Structure", { fg = p.color4 }) -- structs
	vim.api.nvim_set_hl(0, "Class", { fg = p.color4 }) -- classes
	vim.api.nvim_set_hl(0, "String", { fg = p.color1 }) -- crimson strings
	vim.api.nvim_set_hl(0, "Special", { fg = p.color1 }) -- special strings
	vim.api.nvim_set_hl(0, "Function", { fg = p.color2 }) -- teal functions
	vim.api.nvim_set_hl(0, "Identifier", { fg = p.color2 }) -- identifiers
	vim.api.nvim_set_hl(0, "PreProc", { fg = p.color3 }) -- purple preprocessor
	vim.api.nvim_set_hl(0, "Underlined", { fg = p.color4, underline = true })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.color3, bg = "NONE", bold = true })
	-- Essential UI elements
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "Visual", { bg = p.selbg, fg = p.selfg })
	vim.api.nvim_set_hl(0, "Search", { fg = p.bg0, bg = p.color3 })
	vim.api.nvim_set_hl(0, "IncSearch", { fg = p.bg0, bg = p.color2 })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg3, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = p.uic1 })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.uic1 })
	vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg3, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true })
	-- Popup menus
	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 })
	-- Error and warning highlights
	vim.api.nvim_set_hl(0, "Error", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "ErrorMsg", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color3, bold = true })
	vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 })
	-- Apply Treesitter theming
	require("void.treesitter").apply()
	-- Apply Snacks.nvim theming
	require("void.snacks").apply()
	-- Apply todo-comments.nvim theming
	require("void.todo-comments").apply()
	-- Apply Noice.nvim theming
	require("void.noice").apply()
	-- Apply neotree theming
	require("void.neotree").apply()
end
return M
