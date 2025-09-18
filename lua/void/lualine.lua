local colors = require("void.colors").palette

local void = {}

void.normal = {
	a = { fg = colors.bg1, bg = colors.color2, gui = "bold" },
	b = { fg = colors.fg1, bg = "#0E0B22" },
	c = { fg = colors.uic1, bg = "#201723" },
}

void.insert = {
	a = { fg = colors.bg1, bg = colors.color1, gui = "bold" },
}

void.visual = {
	a = { fg = colors.bg1, bg = colors.color6, gui = "bold" },
}

void.replace = {
	a = { fg = colors.bg1, bg = colors.color5, gui = "bold" },
}

void.command = {
	a = { fg = colors.bg1, bg = colors.color3, gui = "bold" },
}

void.inactive = {
	a = { fg = colors.uic1, bg = colors.bg1 },
	b = { fg = colors.uic1, bg = colors.bg1 },
	c = { fg = colors.uic1, bg = colors.bg1 },
}

return void
