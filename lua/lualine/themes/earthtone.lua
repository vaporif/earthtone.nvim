local c = require("earthtone.palette")

return {
	normal = {
		a = { bg = c.statusline1, fg = c.bg, gui = "bold" },
		b = { bg = c.bg_visual, fg = c.dark_grey },
		c = { bg = c.bg_dim, fg = c.dark_grey },
	},
	insert = {
		a = { bg = c.sage, fg = c.bg, gui = "bold" },
		b = { bg = c.bg_visual, fg = c.dark_grey },
		c = { bg = c.bg_dim, fg = c.dark_grey },
	},
	visual = {
		a = { bg = c.dusty_purple, fg = c.bg, gui = "bold" },
		b = { bg = c.bg_visual, fg = c.dark_grey },
		c = { bg = c.bg_dim, fg = c.dark_grey },
	},
	replace = {
		a = { bg = c.coral, fg = c.bg, gui = "bold" },
		b = { bg = c.bg_visual, fg = c.dark_grey },
		c = { bg = c.bg_dim, fg = c.dark_grey },
	},
	command = {
		a = { bg = c.warm_amber, fg = c.bg, gui = "bold" },
		b = { bg = c.bg_visual, fg = c.dark_grey },
		c = { bg = c.bg_dim, fg = c.dark_grey },
	},
	terminal = {
		a = { bg = c.olive, fg = c.bg, gui = "bold" },
		b = { bg = c.bg_visual, fg = c.dark_grey },
		c = { bg = c.bg_dim, fg = c.dark_grey },
	},
	inactive = {
		a = { bg = c.bg_dim, fg = c.light_pebble },
		b = { bg = c.bg_dim, fg = c.light_pebble },
		c = { bg = c.bg_dim, fg = c.light_pebble },
	},
}
