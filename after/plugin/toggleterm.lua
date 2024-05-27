local toggleterm = require("toggleterm")
toggleterm.setup({
	size = 70,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	inert_mappings = true,
	persist_size = true,
	direction = "vertical",
	close_on_exit = true,
	shell = vim.o.shell,
})
local Terminal = require("toggleterm.terminal").Terminal

-- Docker

local docker_client = Terminal:new({
	cmd = "lazydocker",
	hidden = true,
	direction = "float",
	float_opts = {
		border = "double",
	},
})

function docker_client_toggle()
	docker_client:toggle()
end
