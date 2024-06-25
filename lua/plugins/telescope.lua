return {
	{
		-- plugin: telescope-ui-select.nvim
		-- function: display vim.lsp.buf.code_action() in floating telescope
		-- src: https://github.com/nvim-telescope/telescope-ui-select.nvim
		"nvim-telescope/telescope-ui-select.nvim",
		config = function() end,
	},
	{
		-- plugin: nvim-telescope
		-- function: files finder and filter
		-- src: https://github.com/nvim-telescope/telescope.nvim
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                              , branch = '0.1.x',
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

			require("telescope").load_extension("ui-select")
		end,
	},
}
