local M = {}
M.palette = {
	---------------------------------------------------------------------------
	-- CORE BACKGROUND SHADES (dark → light)
	bg0 = "#050308", -- deepest purple-black
	bg1 = "#12121B", -- primary editor background (navy-purple)
	bg2 = "#2A1F3A", -- secondary surface (panels, selection)
	bg3 = "#311F4F", -- elevated surface (statusline, titles)
	---------------------------------------------------------------------------
	-- CORE FOREGROUNDS (bright → dim)
	fg0 = "#FFFFFF", -- max contrast (headings)
	fg1 = "#C7C2E0", -- primary text (soft lavender)
	fg2 = "#D8CFF3", -- secondary text (subtle labels)
	fg3 = "#6B578F", -- tertiary text (muted purple)
	---------------------------------------------------------------------------
	-- SELECTION & MISC
	selbg = "#3A274B", -- visual selection
	selfg = "#FFFFFF", -- selection text
	comment = "#6B578F", -- comments/doc
	---------------------------------------------------------------------------
	-- ACCENT / SEMANTIC COLORS (inspired by Catppuccin, Gruvbox, TokyoNight)
	color1 = "#F38BA8", -- errors, FIXMEs (rose pink)
	color2 = "#A6E3A1", -- success, functions (mint green)
	color3 = "#F9E2AF", -- warnings, TODOs (soft yellow)
	color4 = "#89B4FA", -- constants, types (sky blue)
	color5 = "#CBA6F7", -- strings, constants (lavender)
	color6 = "#F5C2E7", -- keywords, tags (pale magenta)
	---------------------------------------------------------------------------
	-- UI DECORATIVE & LOW EMPHASIS
	uic1 = "#311F4F", -- borders, separators
}

function M.apply()
	local p = M.palette
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "void"

	-- Basics
	vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg0, bg = p.color2 })
	vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })

	-- Syntax
	vim.api.nvim_set_hl(0, "Statement", { fg = p.color1 }) -- errors
	vim.api.nvim_set_hl(0, "Keyword", { fg = p.color6 }) -- keywords
	vim.api.nvim_set_hl(0, "Operator", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "Constant", { fg = p.color5 }) -- strings
	vim.api.nvim_set_hl(0, "Number", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "Boolean", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "Type", { fg = p.color4 }) -- types
	vim.api.nvim_set_hl(0, "Structure", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "Class", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "String", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "Special", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "Function", { fg = p.color2 }) -- mint
	vim.api.nvim_set_hl(0, "Identifier", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "PreProc", { fg = p.color3 }) -- TODO
	vim.api.nvim_set_hl(0, "Underlined", { fg = p.color4, underline = true })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.color3, bg = p.bg1, bold = true })

	-- UI
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "Visual", { fg = p.selfg, bg = p.selbg })
	vim.api.nvim_set_hl(0, "Search", { fg = p.bg0, bg = p.color3 })
	vim.api.nvim_set_hl(0, "IncSearch", { fg = p.bg0, bg = p.color2 })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg3, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = p.uic1 })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.uic1 })
	vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg3, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true })

	-- Popup
	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 })

	-- Diagnostics
	vim.api.nvim_set_hl(0, "Error", { fg = p.color1, underline = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color3, underline = true })
	vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 })

	-- Plugins
	require("void.treesitter").apply()
	require("void.snacks").apply()
	require("void.todo-comments").apply()
	require("void.noice").apply()
	require("void.neotree").apply()
end

return M
