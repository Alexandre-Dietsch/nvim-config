-- import plugin safely
local setup, diffview = pcall(require, "diffview")
if not setup then
	return
end

local actions = require("diffview.actions")

diffview.setup({
	keymaps = {
		disable_defaults = false,
		view = {
			{ "n", "<tab>", actions.select_next_entry, { desc = "Open the diff for the next file" } },
			{ "n", "<s-tab>", actions.select_prev_entry, { desc = "Open the diff for the previous file" } },
			{
				"n",
				"gf",
				actions.goto_file,
				{ desc = "Open the file in a new split in the previous tabpage" },
			},
			{ "n", "<C-w><C-f>", actions.goto_file_split, { desc = "Open the file in a new split" } },
			{ "n", "<C-w>gf", actions.goto_file_tab, { desc = "Open the file in a new tabpage" } },
			{ "n", "<leader>e", actions.focus_files, { desc = "Bring focus to the file panel" } },
			{ "n", "<leader>b", actions.toggle_files, { desc = "Toggle the file panel." } },
			{
				"n",
				"[x",
				actions.prev_conflict,
				{ desc = "In the merge-tool: jump to the previous conflict" },
			},
			{
				"n",
				"]x",
				actions.next_conflict,
				{ desc = "In the merge-tool: jump to the next conflict" },
			},
			{
				"n",
				"<leader>co",
				actions.conflict_choose("ours"),
				{ desc = "Choose the OURS version of a conflict" },
			},
			{
				"n",
				"<leader>ct",
				actions.conflict_choose("theirs"),
				{ desc = "Choose the THEIRS version of a conflict" },
			},
			{
				"n",
				"<leader>cb",
				actions.conflict_choose("base"),
				{ desc = "Choose the BASE version of a conflict" },
			},
			{
				"n",
				"<leader>ca",
				actions.conflict_choose("all"),
				{ desc = "Choose all the versions of a conflict" },
			},
			{ "n", "dx", actions.conflict_choose("none"), { desc = "Delete the conflict region" } },
		},
	},
})
