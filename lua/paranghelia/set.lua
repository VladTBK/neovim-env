-------------- General -----------------
vim.opt.nu = true
vim.opt.relativenumber = false
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.mousemoveevent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.cmd([[autocmd FileType sh,gdscript,python,text setlocal commentstring=#%s]])
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-------------- KeyBindings -----------------
vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)
-- Map Enter to create a new line and stay in Normal mode
vim.keymap.set("n", "<CR>", "o<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>G", vim.cmd.Git)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set(
	"n",
	"<leader>e",
	":Neotree source=filesystem position=left toggle=true reveal<CR>",
	{ noremap = true, silent = true }
)
----- Docker & Database
vim.keymap.set("n", "<leader>dk", "<cmd>lua docker_client_toggle()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>db", "<cmd>:DBUIToggle<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "q", "b")
vim.keymap.set("n", "Q", "B")

vim.cmd([[command! Format execute 'lua vim.lsp.buf.format()']])

vim.keymap.set("n", "<Esc>", ":Format<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<Esc>", "<Esc>:w<CR>:Format<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.clear_breakpoints()<CR>")

vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F6>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F7>", ":lua require'dap'.step_back()<CR>")
vim.keymap.set("n", "<F9>", ":lua require'dapui'.toggle()<CR>")
vim.keymap.set("n", "<F10>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F11>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<F12>", ":lua require'dap'.terminate()<CR>")
