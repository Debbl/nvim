local M = {
	"nvim-treesitter/nvim-treesitter",
}

M.config = function()
	require("nvim-treesitter.configs").setup({
		-- A list of parser names, or "all"
		ensure_installed = { "markdown", "markdown_inline", "lua", "javascript" },
		highlight = {
			enable = true,
		},
		auto_install = true,
	})
end

return M
