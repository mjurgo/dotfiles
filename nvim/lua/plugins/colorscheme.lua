return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            require("tokyonight").setup({ transparent = true })
            -- vim.cmd.colorscheme 'tokyonight-night'
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            require("kanagawa").setup({ transparent = false })
            vim.cmd.colorscheme 'kanagawa'
        end,
    },
}
