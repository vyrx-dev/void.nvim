local M = {}

function M.colorscheme()
	-- Load the main colors
	require("void.colors").apply()
end

function M.lualine()
	return require("void.lualine")
end

function M.snacks()
	require("void.snacks").apply()
end

function M.treesitter()
	require("nvim-treesitter.configs").setup({
		highlight = { enable = true },
	})
end

return M

