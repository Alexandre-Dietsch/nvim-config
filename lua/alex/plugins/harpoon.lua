local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local keymap = vim.keymap

keymap.set("n", "<leader>a", mark.add_file)
keymap.set("n", "<leader>h", ui.toggle_quick_menu)

keymap.set("n", "<leader>n", function()
	ui.nav_next()
end)
keymap.set("n", "<leader>p", function()
	ui.nav_prev()
end)
