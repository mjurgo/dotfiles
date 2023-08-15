local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Packer will use popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

return packer.startup(function(use)
    -- Plugins
    use "wbthomason/packer.nvim"
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use {
        "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end
    }

    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-nvim-lsp"
    use "saadparwaiz1/cmp_luasnip"
    use "L3MON4D3/LuaSnip"

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    use { "akinsho/bufferline.nvim", tag = "v4.1.0", requires = "kyazdani42/nvim-web-devicons" }

    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    use "kyazdani42/nvim-tree.lua"


    use {
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use "numToStr/Comment.nvim"
    use "akinsho/toggleterm.nvim"

    -- Colorschemes
    use "rebelot/kanagawa.nvim"
    use "Shatur/neovim-ayu"

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
