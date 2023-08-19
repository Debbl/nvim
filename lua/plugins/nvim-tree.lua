local M = {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
	keys = {
		{ "<C-b>", "<cmd>NvimTreeToggle<CR>", desc = "toggle NvimTree" },
		{ "<leader>e", "<cmd>NvimTreeOpen<CR>", desc = "open NvimTree" },
	},
}

M.config = function()
	local function on_attach(bufnr)
		local api = require("nvim-tree.api")

		local function opts(desc)
			return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end

		-- use all default mappings
		api.config.mappings.default_on_attach(bufnr)

		-- add your mappings
		vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
	end

	local nvim_tree = require("nvim-tree")

	nvim_tree.setup({
		on_attach = on_attach,
	})
end

return M

