-- telescope.lua

local k = vim.keymap

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = true,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = true,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
  keys = {
		k.set("n", "<leader>tk", "Telescope keymaps<CR>", {}),
		k.set("n", "<leader>th", "Telescope help_tags<CR>", {}),
		k.set("n", "<leader>tf", "Telescope find_files<CR>", {}),
		k.set("n", "<leader>tg", "Telescope live_grep<CR>", {}),
		k.set("n", "<leader>tb", "Telescope buffers<CR>", {}),
	},
}
