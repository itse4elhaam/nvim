return {{
    "lukas-reineke/indent-blankline.nvim",
    opts = {
        indent = {
            char = "│",
            tab_char = "│"
        },
        scope = {
            enabled = false
        },
        exclude = {
            filetypes = {"help", "alpha", "dashboard", "neo-tree", "Trouble", "trouble", "lazy", "mason", "notify",
                         "toggleterm", "lazyterm"}
        }
    },
    main = "ibl",
    config = function()
        require("ibl").setup()
    end
}, {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
        require("mini.indentscope").setup({
            symbol = "|",
            delay = 10,
            options = {
                try_as_border = true,
                style = "solid"
            },
            vim.api.nvim_create_autocmd("FileType", {
                pattern = {"help", "alpha", "dashboard", "neo-tree", "Trouble", "trouble", "lazy", "mason", "notify",
                           "toggleterm", "lazyterm"},
                callback = function()
                    vim.b.miniindentscope_disable = true
                end
            })
        })
    end
}}
