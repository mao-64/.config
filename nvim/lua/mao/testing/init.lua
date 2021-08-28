require("os")

function Maotest()
	local x = vim.api.nvim_get_current_line()
	-- ~/.config/nvim/init.lua test
	print(x)
	os.execute("st")
end
