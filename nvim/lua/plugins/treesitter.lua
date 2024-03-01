return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
    event = "VeryLazy",
    opts = {
        ensure_installed = {},
        sync_install = false,
        ignore_install = { "" },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true,
        },
        indent = { enable = true, disable = { "yaml" } },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end
}
