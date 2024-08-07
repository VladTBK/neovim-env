local null_ls_status_ok, null_ls = pcall(require, "null-ls")

if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.gdformat,
		formatting.djlint,
		formatting.stylua,
		diagnostics.djlint,
		diagnostics.gdlint,
		diagnostics.mypy.with({ extra_args = { "--strict", "--ignore-missing-imports" } }),
	},
})
