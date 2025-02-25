return {
    
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup(
                {
                    ensure_installed = { "lua_ls" }
                }
            )
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                name = "godot",
                cmd = vim.lsp.rpc.connect("127.0.0.1", "6005"),
            })
        end
    }
}
