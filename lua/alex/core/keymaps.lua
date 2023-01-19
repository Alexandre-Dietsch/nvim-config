vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>") -- return to normal mode when we are in insert mode with "jk"

keymap.set("n", "<C-s>", ":w<CR>") -- save the file
keymap.set("n", "<leader>q", ":q<CR>") -- quit the file

keymap.set("n", "<leader>u", ":nohl<CR>") -- undo the selection when search to a specific word

keymap.set("n", "x", '"_x') -- not copy into the clipboard when delete a word

keymap.set("n", "<leader>+", "<C-a>") -- add one to a number
keymap.set("n", "<leader>-", "<C-x>") -- -1 to a number

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>m", "<C-w>w") -- move between split windows
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes'))<cr>")
keymap.set("n", "<C-p>", "<cmd>lua require'telescope.builtin'.git_files(require('telescope.themes'))<cr>")

-- diffview
keymap.set("n", "<leader>do", ":DiffviewOpen<CR>") -- open diffview
keymap.set("n", "<leader>df", ":DiffviewFileHistory<CR>") -- open file history in diffview on the current branch
keymap.set("n", "<leader>dc", ":DiffviewFileHistory %<CR>") -- open file history in diffview on the current file
keymap.set("n", "<leader>dx", ":DiffviewClose<CR>") -- close diffview

-- flog
keymap.set("n", "<leader>t", ":Flog<CR>") -- open flog

--vim-fugitive
keymap.set("n", "<leader>gl", ":G log --all<CR>") -- git log
keymap.set("n", "<leader>gd", ":G diff<CR>") -- git diff
keymap.set("n", "<leader>gs", ":G status<CR>") -- git status
keymap.set("n", "<leader>gi", ":Git<CR>") -- git
