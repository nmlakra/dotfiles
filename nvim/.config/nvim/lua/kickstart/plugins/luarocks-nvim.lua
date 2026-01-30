return {
	"vhyrro/luarocks.nvim",
	priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
	lazy = false,
	opts = {
		rocks = { "fzy", "pathlib.nvim" }, -- specifies a list of rocks to install
		-- luarocks_build_args = { "--with-lua=/my/path" }, -- extra options to pass to luarocks's configuration script
	},
	config = function(_, opts)
		require("luarocks-nvim").setup(opts)
		-- This helps prevent the "Press Enter" screen
		---@diagnostic disable: undefined-global
		vim.g.luarocks_nvim_installed_once = true
	end,
}
