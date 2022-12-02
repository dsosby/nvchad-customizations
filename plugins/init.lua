return {
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      filters = {
        custom = { "^\\.git$" },
      },
      git = {
        enable = true,
      },
      renderer = {
        icons = {
          show = {
            git = true
          },
        },
      },
    },
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      auto_install = true,
      ensure_installed = { "go", "html", "javascript", "json", "jsonnet", "lua", "rust", "typescript" },
    },
  },

  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = { "gopls", "html-lsp", "css-lsp", "typescript-language-server" }
    }
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null_ls"
    end,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
  },
}

