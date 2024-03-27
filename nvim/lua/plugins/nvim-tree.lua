-- nvim-tree.lua

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = true,
			},
      sort = {
        sorter = "case_sensitive",
      },
			view = {
				adaptive_size = true,
			},
		})
	end,
}

-- EOF
