-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

-- saga.init_lsp_saga({
-- })
--

require("lspsaga").setup({
	definition = {
		edit = "<CR>",
		vsplit = "<C-c>v",
		split = "<C-c>i",
		tabe = "<C-c>t",
		quit = "q",
		close = "<Esc>",
	},
	ui = {
		colors = {
			normal_bg = "#012b4d",
			border_style = "rounded",
		},
	},
})
