local M = {
	"bluz71/vim-nightfly-colors",
	name = "nightfly",
	lazy = false,
	priority = 1000,
}

M.config = function()
	local ok, _ = pcall(vim.cmd, "colorscheme nightfly")

	if not ok then
		print("Colorschemes not found!")
		return
	end
end

return M
