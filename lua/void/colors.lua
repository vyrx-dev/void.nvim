local M = {}
M.palette = {
	---------------------------------------------------------------------------
	-- CORE BACKGROUNDS
	bg0 = "#080611", -- deep purple-black
	bg1 = "#14121A", -- primary editor background (very dark purple)
	bg2 = "#2F2742", -- secondary surface (panels & selections)
	bg3 = "#3C2E5A", -- elevated surfaces (statusline, titles)
	---------------------------------------------------------------------------
	-- CORE FOREGROUNDS
	fg0 = "#EDE8F2", -- max contrast (headings)
	fg1 = "#CFC7E8", -- primary text (soft lilac)
	fg2 = "#B5AED2", -- secondary text (subtle)
	fg3 = "#8E84AB", -- tertiary text (muted)
	---------------------------------------------------------------------------
	-- SELECTION & MISC
	selbg = "#3C2E5A", -- visual selection
	selfg = "#EDE8F2", -- selection text
	comment = "#8E84AB", -- comments
	---------------------------------------------------------------------------
	-- ACCENT COLORS
	color1 = "#FF5370", -- errors/FIXMEs (vibrant rose red)
	color2 = "#C3E88D", -- functions/success (bright mint)
	color3 = "#FFCB6B", -- warnings/TODOs (warm yellow)
	color4 = "#82AAFF", -- types/constants (cool blue)
	color5 = "#C792EA", -- strings (rich orchid)
	color6 = "#FF5370", -- keywords/tags (reuse rose red for punch)
	---------------------------------------------------------------------------
	-- UI DECORATIVE
	uic1 = "#3C2E5A", -- borders & separators
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
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg0, bg = p.bg3, bold = true })

	-- Popup menus
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
