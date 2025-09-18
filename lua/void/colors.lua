local M = {}
M.palette = {
	---------------------------------------------------------------------------
	-- CORE BACKGROUNDS
	bg0 = "#080611", -- deepest purple-black
	bg1 = "#1A162A", -- primary background (rich dark purple)
	bg2 = "#2C223E", -- secondary surfaces (panels, selection)
	bg3 = "#3F2A5E", -- elevated surfaces (status, titles)
	---------------------------------------------------------------------------
	-- CORE FOREGROUNDS
	fg0 = "#ECE5FA", -- max contrast (headings)
	fg1 = "#C7BFE8", -- primary text (soft lavender)
	fg2 = "#A99FE3", -- secondary text (subtle)
	fg3 = "#7E6FB7", -- tertiary text (muted purple)
	---------------------------------------------------------------------------
	-- SELECTION & MISC
	selbg = "#3F2A5E", -- visual selection (deeper purple)
	selfg = "#ECE5FA", -- selection text
	comment = "#7E6FB7", -- comments
	---------------------------------------------------------------------------
	-- ACCENT / SEMANTIC COLORS
	color1 = "#FF5370", -- errors/FIXMEs (vibrant rose red)
	color2 = "#8BE9FD", -- functions/success (bright cyan)
	color3 = "#F1FA8C", -- warnings/TODOs (golden yellow)
	color4 = "#BD93F9", -- constants/types (soft violet)
	color5 = "#FFB86C", -- strings (warm peach)
	color6 = "#FF79C6", -- keywords/tags (bubblegum pink)
	---------------------------------------------------------------------------
	-- UI DECORATIVE & LOW EMPHASIS
	uic1 = "#3F2A5E", -- borders & separators
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
	vim.api.nvim_set_hl(0, "Operator", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "Constant", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "Number", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "Boolean", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "Type", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "String", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "Function", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "Identifier", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "PreProc", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.color3, bg = p.bg1, bold = true })

	-- UI
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "Visual", { fg = p.selfg, bg = p.selbg })
	vim.api.nvim_set_hl(0, "Search", { fg = p.bg0, bg = p.color3 })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg0, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg0, bg = p.bg3, bold = true })

	-- Popup
	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg3 })

	-- Diagnostics
	vim.api.nvim_set_hl(0, "Error", { fg = p.color1, underline = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color3, underline = true })

	-- Plugins
	require("void.treesitter").apply()
	require("void.snacks").apply()
	require("void.todo-comments").apply()
	require("void.noice").apply()
	require("void.neotree").apply()
end

return M
