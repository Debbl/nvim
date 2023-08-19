local M = {
	"mhartington/formatter.nvim",
}
M.config = function()
	local filetype_config = {}
	-- 前端format
	local ft_names = {
		"html",
		"css",
		"json",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	}
	for _, ft_name in ipairs(ft_names) do
		filetype_config[ft_name] = {
			-- 上述的filetype，都直接使用对应目录下的preitter
			require("formatter.filetypes." .. ft_name).prettier,
		}
	end

	-- lua format
	local lua_format = {
		require("formatter.filetypes.lua").stylua,
	}
	filetype_config.lua = lua_format

	-- setup
	require("formatter").setup({
		logging = true,
		log_level = 2,
		filetype = filetype_config,
	})
	-- keymap设置
	local keymap = vim.keymap.set
	local opts = { noremap = true }

	keymap("n", "<leader>f", "<cmd>Format<CR>", opts)
	keymap("n", "<leader>F", "<cmd>FormatWrite<CR>", opts)
end

return M
