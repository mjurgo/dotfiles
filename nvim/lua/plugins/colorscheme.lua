return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            require("tokyonight").setup({ transparent = false })
            -- vim.cmd.colorscheme 'tokyonight-night'
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            require("kanagawa").setup({ transparent = false })
            -- vim.cmd.colorscheme 'kanagawa-dragon'
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        config = function()
            require("nightfox").setup({ options = { transparent = true } })
            vim.cmd.colorscheme 'carbonfox'
        end,
    },
}
