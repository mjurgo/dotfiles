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
            -- vim.cmd.colorscheme 'kanagawa'
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        config = function()
            require("nightfox").setup({ options = { transparent = false } })
            -- vim.cmd.colorscheme 'carbonfox'
        end,
    },
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.background = "dark"
            vim.g.gruvbox_material_background = "hard"
            vim.cmd.colorscheme('gruvbox-material')
        end
    }
}
