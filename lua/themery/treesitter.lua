local colors = require("void.colors").palette

local M = {}

function M.apply()
	local p = colors

	-- Treesitter highlight groups using all 6 syntax colors
	vim.api.nvim_set_hl(0, "@comment", { fg = p.comment, italic = true })
	vim.api.nvim_set_hl(0, "@comment.error", { fg = p.color1, italic = true })
	vim.api.nvim_set_hl(0, "@comment.warning", { fg = p.color2, italic = true })
	vim.api.nvim_set_hl(0, "@comment.todo", { fg = p.color3, bold = true })
	vim.api.nvim_set_hl(0, "@comment.hack", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "@comment.xxx", { fg = p.color6, bold = true })

	-- Core syntax roles
	vim.api.nvim_set_hl(0, "@constant", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "@constant.builtin", { fg = p.color3, bold = true })
	vim.api.nvim_set_hl(0, "@constant.macro", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "@number", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "@boolean", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "@string", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "@string.documentation", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "@string.regex", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "@string.escape", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "@string.special", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "@character", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "@character.special", { fg = p.color2 })

	vim.api.nvim_set_hl(0, "@type", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "@type.builtin", { fg = p.color4, bold = true })
	vim.api.nvim_set_hl(0, "@type.definition", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "@type.qualifier", { fg = p.color2 })

	vim.api.nvim_set_hl(0, "@function", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "@function.builtin", { fg = p.color6, bold = true })
	vim.api.nvim_set_hl(0, "@function.call", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "@function.macro", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@method", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "@method.call", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "@constructor", { fg = p.color4 })

	vim.api.nvim_set_hl(0, "@variable", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "@variable.builtin", { fg = p.color1, italic = true })
	vim.api.nvim_set_hl(0, "@variable.parameter", { fg = p.color5, italic = true })
	vim.api.nvim_set_hl(0, "@variable.member", { fg = p.color4 })

	vim.api.nvim_set_hl(0, "@property", { fg = p.color4 })
	vim.api.nvim_set_hl(0, "@field", { fg = p.color4 })

	vim.api.nvim_set_hl(0, "@keyword", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@keyword.function", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@keyword.operator", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@keyword.return", { fg = p.color2, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.import", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@keyword.exception", { fg = p.color1 })
	vim.api.nvim_set_hl(0, "@keyword.directive", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = p.color2 })

	vim.api.nvim_set_hl(0, "@operator", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@punctuation", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "@punctuation.special", { fg = p.color6 })

	-- Markup (for markdown, etc.)
	vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.fg1, bold = true })
	vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.fg1, italic = true })
	vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = p.uic1, strikethrough = true })
	vim.api.nvim_set_hl(0, "@markup.underline", { fg = p.fg1, underline = true })
	vim.api.nvim_set_hl(0, "@markup.heading", { fg = p.fg0, bold = true })
	vim.api.nvim_set_hl(0, "@markup.quote", { fg = p.uic1, italic = true })
	vim.api.nvim_set_hl(0, "@markup.math", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "@markup.link", { fg = p.color4, underline = true })
	vim.api.nvim_set_hl(0, "@markup.link.label", { fg = p.color5 })
	vim.api.nvim_set_hl(0, "@markup.link.url", { fg = p.color4, underline = true })
	vim.api.nvim_set_hl(0, "@markup.raw", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = p.color3 })
	vim.api.nvim_set_hl(0, "@markup.list", { fg = p.color6 })
	vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = p.color2 })
	vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = p.color2 })

	-- Tags (HTML/XML: <div>, <Header>, <p>, <MyComponent>)
	vim.api.nvim_set_hl(0, "@tag", { fg = p.color2 }) -- div, header, main, MyComponent
	vim.api.nvim_set_hl(0, "@tag.attribute", { fg = p.color5 }) -- className, id, href, onClick
	vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = p.uic1 }) -- < > </ />

	-- Attributes (@decorators, [attributes], #[derive])
	vim.api.nvim_set_hl(0, "@attribute", { fg = p.color3 }) -- @Component, @override, [Serializable]

	-- Labels (goto labels, break/continue labels)
	vim.api.nvim_set_hl(0, "@label", { fg = p.color6 }) -- label:, break label

	-- Namespace (std::, React., namespace MyNamespace)
	vim.api.nvim_set_hl(0, "@namespace", { fg = p.color5 }) -- std, React, System
	vim.api.nvim_set_hl(0, "@module", { fg = p.color5 }) -- import * from 'module'

	-- Preproc
	vim.api.nvim_set_hl(0, "@preproc", { fg = p.color6 })

	-- Include
	vim.api.nvim_set_hl(0, "@include", { fg = p.color6 })

	-- Define
	vim.api.nvim_set_hl(0, "@define", { fg = p.color6 })

	-- Conditional
	vim.api.nvim_set_hl(0, "@conditional", { fg = p.color6 })

	-- Repeat
	vim.api.nvim_set_hl(0, "@repeat", { fg = p.color6 })

	-- Exception
	vim.api.nvim_set_hl(0, "@exception", { fg = p.color1 })

	-- Special characters
	vim.api.nvim_set_hl(0, "@character.printf", { fg = p.color2 })

	-- Diff (git diff colors: +added, -removed, ~modified)
	vim.api.nvim_set_hl(0, "@diff.plus", { fg = p.color2 }) -- + added lines
	vim.api.nvim_set_hl(0, "@diff.minus", { fg = p.color1 }) -- - removed lines
	vim.api.nvim_set_hl(0, "@diff.delta", { fg = p.color3 }) -- ~ modified lines

	-- Language-specific
	-- Lua
	vim.api.nvim_set_hl(0, "@function.builtin.lua", { fg = p.fg2, bold = true })
	vim.api.nvim_set_hl(0, "@variable.builtin.lua", { fg = p.color1, italic = true })

	-- Python
	vim.api.nvim_set_hl(0, "@function.builtin.python", { fg = p.fg2, bold = true })
	vim.api.nvim_set_hl(0, "@variable.builtin.python", { fg = p.color1, italic = true })

	-- JavaScript/TypeScript
	vim.api.nvim_set_hl(0, "@function.builtin.javascript", { fg = p.fg2, bold = true })
	vim.api.nvim_set_hl(0, "@variable.builtin.javascript", { fg = p.color1, italic = true })
end

return M
