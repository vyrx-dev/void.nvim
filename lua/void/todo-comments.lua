local colors = require("void.colors").palette

local M = {}

function M.apply()
	local p = colors

	-- todo-comments.nvim specific highlight groups
	vim.api.nvim_set_hl(0, "TodoBgTODO", { fg = p.bg1, bg = p.color3, bold = true })
	vim.api.nvim_set_hl(0, "TodoFgTODO", { fg = p.color3, bold = true })
	vim.api.nvim_set_hl(0, "TodoBgFIX", { fg = p.bg1, bg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoFgFIX", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoBgFIXME", { fg = p.bg1, bg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoFgFIXME", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoBgHACK", { fg = p.bg1, bg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "TodoFgHACK", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "TodoBgNOTE", { fg = p.bg1, bg = p.fg3, italic = true })
	vim.api.nvim_set_hl(0, "TodoFgNOTE", { fg = p.fg2, italic = true })
	vim.api.nvim_set_hl(0, "TodoBgWARN", { fg = p.bg1, bg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoFgWARN", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoBgPERF", { fg = p.bg1, bg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "TodoFgPERF", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "TodoBgTEST", { fg = p.bg1, bg = p.color4, bold = true })
	vim.api.nvim_set_hl(0, "TodoFgTEST", { fg = p.color4, bold = true })

	-- Additional todo-comments.nvim variants
	vim.api.nvim_set_hl(0, "TodoSignTODO", { fg = p.color3, bold = true })
	vim.api.nvim_set_hl(0, "TodoSignFIX", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoSignFIXME", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoSignHACK", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "TodoSignNOTE", { fg = p.fg2, italic = true })
	vim.api.nvim_set_hl(0, "TodoSignWARN", { fg = p.color1, bold = true })
	vim.api.nvim_set_hl(0, "TodoSignPERF", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "TodoSignTEST", { fg = p.color4, bold = true })
end

return M
