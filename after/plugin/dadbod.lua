local status_ok, dadbod = pcall(require, "dadbod")
if not status_ok then
    return
end
local function db_completion()
    require("cmp").setup.buffer { sources = { { name = "vim-dadbod-completion" } } }
end


dadbod.setup() {
    vim.api.nvim_create_autocmd("FileType", {
        pattern = {
            "sql",
            "mysql",
            "plsql",
        },
        callback = function()
            vim.schedule(db_completion)
        end,
    })
}
