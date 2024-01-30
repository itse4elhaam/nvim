return {{
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end
}, {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            -- ensure_installed = {"lua_ls", "javascript", "pyright", "pylsp", "clangd", "bashls", "astro", "cssls",
            --                     "eslint", "gopls", "golangci_lint_ls", "html", "htmx", "graphql", "jsonls", "tsserver",
            --                     "quick_lint_js", "sqlls", "rust_analyzer", "tailwindcss", "zls"}
            ensure_installed = {"lua_ls", "tsserver", "clangd", "bashls", "jsonls", "html", "tailwindcss", "quick_lint_js", "cssls"}

        })
    end

}, {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities() 
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup({})
        lspconfig.tsserver.setup({})
        lspconfig.clangd.setup({})
        lspconfig.bashls.setup({})
        lspconfig.jsonls.setup({})
        lspconfig.html.setup({})
        lspconfig.tailwindcss.setup({})
        lspconfig.quick_lint_js.setup({})
        vim.keymap.set('n', 'DC', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'GD', vim.lsp.buf.definition, {})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format {
                async = true
            }
        end, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
    end

}}
