local M = {}

M.palette = {
	---------------------------------------------------------------------------
	-- CORE BACKGROUND SHADES (dark → light)
	-- bg0: Extreme darkest background. Use sparingly (e.g. backdrop, contrast)
	bg0 = "#0D0D0D",
	-- bg1: Primary editor background (Normal). Change this first when theming.
	bg1 = "#121212",
	-- bg2: Secondary surface (CursorLine, popup menus, subtle panels, selection bg)
	bg2 = "#333333",
	-- bg3: Elevated / emphasized surface (statusline, tabline selected, titles)
	bg3 = "#212121",

	---------------------------------------------------------------------------
	-- CORE FOREGROUNDS (bright → dim)
	-- fg0: Maximum contrast foreground (headings, strong emphasis)
	fg0 = "#FFFFFF",
	-- fg1: Primary text (Normal fg). Your main readable color.
	fg1 = "#EAEAEA",
	-- fg2: Secondary text (less important content, doc strings, mild dim)
	fg2 = "#BEBEBE",
	-- fg3: Tertiary / subtle text (line numbers, inactive, meta info)
	fg3 = "#8A8A8D",

	---------------------------------------------------------------------------
	-- SELECTION & MISC
	-- selbg: Visual selection background, also used for inverse accents
	selbg = "#262626",
	-- selfg: Foreground inside selected regions (ensure contrast vs selbg)
	selfg = "#EAEAEA",
	-- comment: Comment text + doc annotations (generally muted)
	comment = "#8A8A8D",

	---------------------------------------------------------------------------
	-- ACCENT / SEMANTIC COLOR SLOTS
	-- color1: Error / critical / strong statement (used for errors, statements, git removed)
	color1 = "#FF3E55",
	-- color2: Primary accent / info highlight (mode indicators, roots, success/add)
	color2 = "#00D6D1",
	-- color3: Attention / todo / highlight matches (TODO tags, search matches)
	color3 = "#FFD447",
	-- color4: Modified / constant / neutral warm accent (constants, modified files)
	color4 = "#5A7CFF",
	-- color5: Type / secondary accent / soft alert (types, replace mode, interface)
	color5 = "#FF7DEB",
	-- color6: Keywords / strong structural tokens / alternate error (keywords, visual mode bg, directives)
	color6 = "#4CFF8F",

	---------------------------------------------------------------------------
	-- UI DECORATIVE & LOW EMPHASIS ELEMENTS
	-- uic1: Borders, separators, guides, non-content structural UI
	uic1 = "#5C6370",
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
	vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg1, bg = p.color2 })
	vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })
	-- Syntax groups using all 6 colors logically:
	vim.api.nvim_set_hl(0, "Statement", { fg = p.color1 }) -- Statements, error, danger
	vim.api.nvim_set_hl(0, "Keyword", { fg = p.color2 }) -- Keywords, control flow
	vim.api.nvim_set_hl(0, "Operator", { fg = p.color2 }) -- Operators
	vim.api.nvim_set_hl(0, "Constant", { fg = p.color3 }) -- Constants, numbers, enums
	vim.api.nvim_set_hl(0, "Number", { fg = p.color3 }) -- Numbers
	vim.api.nvim_set_hl(0, "Boolean", { fg = p.color3 }) -- Booleans
	vim.api.nvim_set_hl(0, "Type", { fg = p.color4 }) -- Types, classes
	vim.api.nvim_set_hl(0, "Structure", { fg = p.color4 }) -- Structs, interfaces
	vim.api.nvim_set_hl(0, "Class", { fg = p.color4 }) -- Classes
	vim.api.nvim_set_hl(0, "String", { fg = p.color5 }) -- Strings, regex, docstrings
	vim.api.nvim_set_hl(0, "Special", { fg = p.color5 }) -- Special strings, regex
	vim.api.nvim_set_hl(0, "Function", { fg = p.color6 }) -- Functions, methods
	vim.api.nvim_set_hl(0, "Identifier", { fg = p.color6 }) -- Identifiers, builtins
	vim.api.nvim_set_hl(0, "PreProc", { fg = p.color2 }) -- Preprocessor, macros
	vim.api.nvim_set_hl(0, "Underlined", { fg = p.color4, underline = true })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.color3, bg = p.bg1, bold = true })

	-- Essential UI elements for better readability
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 }) -- Line numbers in subtle gray
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color2, bold = true }) -- Current line number highlighted
	vim.api.nvim_set_hl(0, "Visual", { bg = p.selbg, fg = p.selfg }) -- Selection highlighting
	vim.api.nvim_set_hl(0, "Search", { fg = p.bg1, bg = p.color3 }) -- Search highlighting
	vim.api.nvim_set_hl(0, "IncSearch", { fg = p.bg1, bg = p.color2 }) -- Incremental search
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 }) -- Status line
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg3, bg = p.bg2 }) -- Inactive status line
	vim.api.nvim_set_hl(0, "VertSplit", { fg = p.bg2 }) -- Window splits
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.bg2 }) -- Modern window separators
	vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg3, bg = p.bg2 }) -- Tab line
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 }) -- Tab line fill
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true }) -- Selected tab

	-- Popup menus for better completion readability
	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg3 }) -- Popup menu
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg2 }) -- Selected popup item
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg2 }) -- Popup scrollbar
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 }) -- Popup scrollbar thumb

	-- Error and warning highlights
	vim.api.nvim_set_hl(0, "Error", { fg = p.color1, bold = true }) -- Error text
	vim.api.nvim_set_hl(0, "ErrorMsg", { fg = p.color1, bold = true }) -- Error messages
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color2, bold = true }) -- Warning messages
	vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 }) -- Mode messages

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

