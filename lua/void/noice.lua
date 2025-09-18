local colors = require("void.colors").palette

local M = {}

function M.apply()
	local p = colors

	-- Noice.nvim plugin highlight groups
	-- Command line
	vim.api.nvim_set_hl(0, "NoiceCmdline", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "NoiceCmdlineIconCmdline", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "NoiceCmdlineIconFilter", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "NoiceCmdlineIconLua", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = p.uic1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { fg = p.color2, bold = true })

	-- Command line prompt
	vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", { fg = p.color2, bold = true })

	-- Completion menu
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindDefault", { fg = p.fg2 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindKeyword", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindVariable", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindConstant", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindReference", { fg = p.fg2 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindValue", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindFunction", { fg = p.fg2 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindMethod", { fg = p.fg2 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindConstructor", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindClass", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindInterface", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindStruct", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindEvent", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindOperator", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "NoiceCompletionItemKindTypeParameter", { fg = p.color5 })

	-- Confirm dialog
	vim.api.nvim_set_hl(0, "NoiceConfirm", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoiceConfirmBorder", { fg = p.uic1, bg = p.bg2 })

	-- Messages
	vim.api.nvim_set_hl(0, "NoicePopup", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoicePopupBorder", { fg = p.uic1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoicePopupmenu", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoicePopupmenuBorder", { fg = p.uic1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoicePopupmenuSelected", { fg = p.fg1, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "NoicePopupmenuMatch", { fg = p.color3, bold = true })

	-- Split view
	vim.api.nvim_set_hl(0, "NoiceSplit", { fg = p.fg1, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "NoiceSplitBorder", { fg = p.uic1, bg = p.bg1 })

	-- Virtual text
	vim.api.nvim_set_hl(0, "NoiceVirtualText", { fg = p.uic1, italic = true })

	-- LSP progress
	vim.api.nvim_set_hl(0, "NoiceLspProgressClient", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "NoiceLspProgressSpinner", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "NoiceLspProgressTitle", { fg = p.fg1 })

	-- Search
	vim.api.nvim_set_hl(0, "NoiceFormatProgressDone", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "NoiceFormatProgressTodo", { fg = p.uic1 })

	-- Mini views
	vim.api.nvim_set_hl(0, "NoiceMini", { fg = p.fg1, bg = p.bg2 })

	-- Scrollbar
	vim.api.nvim_set_hl(0, "NoiceScrollbar", { bg = p.bg3 })
	vim.api.nvim_set_hl(0, "NoiceScrollbarThumb", { bg = p.uic1 })

	-- Cursor
	vim.api.nvim_set_hl(0, "NoiceCursor", { fg = p.bg1, bg = p.color2 })

	-- History
	vim.api.nvim_set_hl(0, "NoiceHistory", { fg = p.fg1, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "NoiceHistoryBorder", { fg = p.uic1, bg = p.bg2 })
end

return M
