-- plugin: CopilotChat.nvim
-- function: CopilotChat.nvim is a plugin that allows you to chat with Copilot from within Neovim.
-- src: https://github.com/CopilotC-Nvim/CopilotChat.nvim
return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			debug = true, -- Enable debugging
			-- See Configuration section for rest
		},
    config = function()
      require("CopilotChat").setup({
        debug = true,
      })
    end
		-- config = function()
		-- 	local config = reuqire("CopilotChat").setup({
		-- 		debug = true,
		-- 	})
		-- end,
		-- See Commands section for default commands if you want to lazy load on them
	},
}
