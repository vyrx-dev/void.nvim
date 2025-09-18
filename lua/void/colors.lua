local M = {}
M.palette = {
	-- BACKGROUNDS
	bg0 = "#080611", -- deepest purple-black
	bg1 = "#1B152B", -- main editor background
	bg2 = "#2D2540", -- panels & selection
	bg3 = "#392D57", -- status / titles

	-- FOREGROUNDS
	fg0 = "#EDE8FA", -- headings
	fg1 = "#C7C0E8", -- main text
	fg2 = "#A99FE3", -- secondary text
	fg3 = "#7E6FB7", -- muted text

	-- SELECTION & COMMENTS
	selbg = "#392D57",
	selfg = "#EDE8FA",
	comment = "#7E6FB7",

	-- ACCENTS
	color1 = "#FF5370", -- errors, FIXMEs, TODOs (rose red)
	color2 = "#BD93F9", -- constants, types, keywords (soft violet)

	-- DECORATIVE
	uic1 = "#392D57",
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
	vim.api.nvim_set_hl(0, "Keyword", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "Operator", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "Constant", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "String", { fg = p.color1 })
	vim.api.nvim_set_hl(0, "Function", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "Identifier", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "PreProc", { fg = p.color1 })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.color1, bg = p.bg1, bold = true })

	-- UI
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "Visual", { fg = p.selfg, bg = p.selbg })
	vim.api.nvim_set_hl(0, "Search", { fg = p.bg0, bg = p.color1 })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg0, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg0, bg = p.bg3, bold = true })

	-- Popups
	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg3 })

	-- Diagnostics
	vim.api.nvim_set_hl(0, "Error", { fg = p.color1, underline = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color1, underline = true })

	-- Plugins
	require("void.treesitter").apply()
	require("void.snacks").apply()
	require("void.todo-comments").apply()
	require("void.noice").apply()
	require("void.neotree").apply()
end

return M
