local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Selection text and copy/delete
keymap.set("n", "<leader>a", "gg<S-v>G", { desc = "Select All text" })
keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to clipboard", noremap = true })
keymap.set({ "n", "v" }, "<leader>d", '"+d', { desc = "Cut to clipboard", remap = true })

keymap.set({ "n", "v" }, "<leader>|", ":vsplit<CR>", { desc = "Split vertical" })
keymap.set({ "n", "v" }, "<leader>-", ":split<CR>", { desc = "Split Horizontal" })

--gloabal
keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- Save file
keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Change window
keymap.set("n", "<C-h>", "<C-w><left>", opts)
keymap.set("n", "<C-l>", "<C-w><right>", opts)
keymap.set("n", "<C-j>", "<C-w><up>", opts)
keymap.set("n", "<C-k>", "<C-w><down>", opts)

-- Resize Windows
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Buffers
keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap.set("n", "<leader>bd", function()
	local current_buf = vim.api.nvim_get_current_buf()
	local buf_modified = vim.api.nvim_buf_get_option(current_buf, "modified")

	if buf_modified then
		local choice = vim.fn.confirm("Buffer has unsaved changes. Delete anyway?", "&Yes\n&No", 2)
		if choice == 1 then
			vim.cmd("bd!")
		end
	else
		vim.cmd("bd")
	end
end, { desc = "Delete Buffer" })

-- custom for some plugs
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { noremap = true, desc = "Toggle File Explorer" })

-- noice
keymap.set("n", "<Esc>", function()
	require("notify").dismiss()
	vim.cmd("noh")
	vim.cmd("echo")
end, { desc = "discard notifications" })

keymap.set("n", "<leader>n", "<cmd>NoiceTelescope<CR>", { noremap = true, desc = "Toggle Noice Telescope" })

-- sessions
keymap.set("n", "<leader>rs", function()
	require("persistence").load({ last = true })
end, { desc = "Load last session for the current directory" })

keymap.set("n", "<leader>sp", function()
	require("persistence").stop()
end, { desc = "Session wont't be sabed on exit" })

keymap.set("n", "<leader>Ss", function()
	require("persistence").select()
end, { desc = "Select session to Load" })
