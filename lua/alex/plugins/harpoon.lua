local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local keymap = vim.keymap

keymap.set("n", "<leader>ha", mark.add_file)
keymap.set("n", "<leader>he", ui.toggle_quick_menu)

keymap.set("n", "<leader>hh", function()
	ui.nav_file(1)
end)
keymap.set("n", "<leader>hj", function()
	ui.nav_file(2)
end)
keymap.set("n", "<leader>hk", function()
	ui.nav_file(3)
end)
keymap.set("n", "<leader>hl", function()
	ui.nav_file(4)
end)

keymap.set("n", "<leader>hn", function()
	ui.nav_next()
end)
keymap.set("n", "<leader>hp", function()
	ui.nav_prev()
end)
