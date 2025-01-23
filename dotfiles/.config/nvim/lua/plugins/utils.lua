return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "modern",
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.pairs").setup()
			require("mini.icons").setup()
			require("mini.files").setup()

			vim.keymap.set("n", "<leader>e", ":lua MiniFiles.open()<CR>", { desc = "File Explorer" })
		end,
	},
}
