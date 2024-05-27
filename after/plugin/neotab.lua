require("neotab").setup({
    tabkey = "<Tab>",
    act_as_tab = true,
    behavior = "nested", ---@type ntab.behavior
    pairs = { ---@type ntab.pair[]
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "<", close = ">" },
    },
    exclude = {},
    smart_punctuators = {
        enabled = true,
        semicolon = {
            enabled = true,
            ft = { "cpp" },
        },
        escape = {
            enabled = false,
            triggers = {}, ---@type table<string, ntab.trigger>
        },
    },
})
