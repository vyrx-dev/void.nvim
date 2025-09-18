local M = {}
M.palette = {
	---------------------------------------------------------------------------
	-- CORE BACKGROUNDS
	bg0 = "#080611", -- deepest purple-black
	bg1 = "#1B152B", -- primary editor background (rich dark purple)
	bg2 = "#2D2540", -- secondary surfaces (panels, selection)
	bg3 = "#392D57", -- elevated surfaces (status, titles)

	---------------------------------------------------------------------------
	-- CORE FOREGROUNDS
	fg0 = "#EDE8FA", -- headings
	fg1 = "#C7C0E8", -- main text
	fg2 = "#A99FE3", -- secondary text
	fg3 = "#7E6FB7", -- tertiary text

	---------------------------------------------------------------------------
	-- SELECTION & COMMENTS
	selbg = "#392D57", -- visual selection
	selfg = "#EDE8FA", -- selection text
	comment = "#8E7FCF", -- comments (muted violet)

	---------------------------------------------------------------------------
	-- ACCENT / SEMANTIC COLORS
	color1 = "#FF5370", -- errors, FIXMEs, TODOs (deep rose)
	color2 = "#BD93F9", -- constants, types (soft violet)
	color3 = "#F1FA8C", -- warnings (golden yellow)
	color4 = "#FFB86C", -- strings (warm peach)
	color5 = "#FF79C6", -- keywords (bubblegum pink)

	---------------------------------------------------------------------------
	-- UI DECORATIVE
	uic1 = "#392D57", -- borders & separators
}

function M.apply()
	local p = M.palette
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "void"

	-- Basic UI
	vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg0, bg = p.color2 })
	vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })

	-- Syntax
	vim.api.nvim_set_hl(0, "Statement", { fg = p.color1 })
	vim.api.nvim_set_hl(0, "Keyword", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "Operator", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "Constant", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "Number", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "Boolean", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "Type", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "String", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "Function", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "Identifier", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "PreProc", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.color3, bg = p.bg1, bold = true })

	-- UI Elements
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "Visual", { fg = p.selfg, bg = p.selbg })
	vim.api.nvim_set_hl(0, "Search", { fg = p.bg0, bg = p.color3 })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg0, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg0, bg = p.bg3, bold = true })

	-- Popup Menus
	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 })

	-- Diagnostics
	vim.api.nvim_set_hl(0, "Error", { fg = p.color1, underline = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color3, underline = true })

	-- HTML / XML
	vim.api.nvim_set_hl(0, "htmlTag", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "htmlTagName", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "htmlArg", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "htmlArgName", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "htmlString", { fg = p.color4 })

	-- JSON / YAML
	vim.api.nvim_set_hl(0, "jsonBoolean", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "jsonNumber", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "jsonString", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "jsonComment", { fg = p.comment, italic = true })

	-- Markdown Headings
	vim.api.nvim_set_hl(0, "markdownH1", { fg = p.fg0, bold = true })
	vim.api.nvim_set_hl(0, "markdownH2", { fg = p.color5, bold = true })
	vim.api.nvim_set_hl(0, "markdownH3", { fg = p.color2, bold = true })

	-- Plugins
	require("void.treesitter").apply()
	require("void.snacks").apply()
	require("void.todo-comments").apply()
	require("void.noice").apply()
	require("void.neotree").apply()
end

return M
