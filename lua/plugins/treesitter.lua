return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- this is for tree sitter 
        local config = require("nvim-treesitter.configs")
        config.setup({
            -- ensure_installed = {"lua", "javascript", "typescript", "c", "cpp", "html", "css", "rust", "go", "zig"},
            auto_install = true,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })

    end
}
