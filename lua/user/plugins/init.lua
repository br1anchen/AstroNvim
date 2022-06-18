-- Configure plugins
return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },

  ["lewis6991/impatient.nvim"] = { disable = true },

  ["norcalli/nvim-colorizer.lua"] = { disable = true },
  ["NvChad/nvim-colorizer.lua"] = {
    event = { "BufRead", "BufNewFile" },
    config = require "user.plugins.colorizer",
  },

  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {}
    end,
  },

  ["sheerun/vim-polyglot"] = {},

  ["psliwka/vim-dirtytalk"] = { run = ":DirtytalkUpdate", event = "BufRead" },
  ["tpope/vim-abolish"] = {},
  ["tpope/vim-surround"] = {},
  ["phaazon/hop.nvim"] = {
    branch = "v1", -- optional but strongly recommended
    event = "BufRead", -- I want to use it all the time
    config = function()
      require("hop").setup()
    end,
  },
  ["andymass/vim-matchup"] = {
    event = "BufRead",
    config = function()
      vim.g.matchup_matchparen_offscreen = {}
    end,
  },

  ["beauwilliams/focus.nvim"] = {
    module = "focus",
    config = function()
      require("focus").setup {
        excluded_filetypes = { "toggleterm", "TelescopePrompt" },
        cursorline = false,
        signcolumn = false,
      }
    end,
  },
  ["sindrets/winshift.nvim"] = {
    cmd = "WinShift",
    config = require "user.plugins.winshift",
  },

  ["aserowy/tmux.nvim"] = {
    module = "tmux",
    config = require "user.plugins.tmux",
  },

  ["ntpeters/vim-better-whitespace"] = {
    config = function()
      vim.g.better_whitespace_enabled = 1
      vim.g.strip_whitespace_on_save = 1
      vim.g.strip_whitespace_confirm = 0
    end,
  },

  ["VonHeikemen/searchbox.nvim"] = {
    requires = {
      { "MunifTanjim/nui.nvim" },
    },
    config = function()
      require("searchbox").setup()
    end,
  },

  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = require "user.plugins.todo-comments",
  },

  ["tzachar/cmp-tabnine"] = {
    run = "./install.sh",
    after = "nvim-cmp",
    requires = "hrsh7th/nvim-cmp",
    config = require "user.plugins.cmp-tabnine",
  },
  ["hrsh7th/cmp-emoji"] = {
    after = "nvim-cmp",
    config = function()
      astronvim.add_user_cmp_source "emoji"
    end,
  },
  ["hrsh7th/cmp-nvim-lua"] = {
    after = "cmp_luasnip",
  },

  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end,
  },

  ["nvim-telescope/telescope-file-browser.nvim"] = {
    module = "telescope._extensions.file_browser",
  },
  ["nvim-telescope/telescope-packer.nvim"] = {
    module = "telescope._extensions.packer",
  },
  ["nvim-telescope/telescope-project.nvim"] = {
    module = "telescope._extensions.project",
  },
  ["cljoly/telescope-repo.nvim"] = {
    module = "telescope._extensions.repo",
  },
  ["nvim-telescope/telescope-media-files.nvim"] = {
    module = "telescope._extensions.media_files",
  },

  ["AckslD/nvim-neoclip.lua"] = {
    after = "telescope.nvim",
    requires = {
      { "nvim-telescope/telescope.nvim" },
    },
    config = require "user.plugins.nvim-neoclip",
  },

  ["pwntester/octo.nvim"] = {
    after = "telescope.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "kyazdani42/nvim-web-devicons",
    },
    config = require "user.plugins.octo",
  },

  ["ray-x/lsp_signature.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("lsp_signature").setup()
    end,
  },

  ["danymat/neogen"] = {
    module = "neogen",
    cmd = "Neogen",
    config = require "user.plugins.neogen",
    requires = "nvim-treesitter/nvim-treesitter",
  },

  ["nvim-treesitter/playground"] = {
    cmd = { "TSPlaygroundToggle", "TSHighlightCapturesUnderCursor" },
  },
  ["nvim-treesitter/nvim-treesitter-textobjects"] = {
    after = "nvim-treesitter",
  },
  ["ziontee113/syntax-tree-surfer"] = {
    module = "syntax-tree-surfer",
  },

  ["nanotee/sqls.nvim"] = { module = "sqls" },

  ["ron-rs/ron.vim"] = {
    after = "nvim-lspconfig",
  },

  ["akinsho/flutter-tools.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    after = { "nvim-lsp-installer", "telescope.nvim" }, -- make sure to load after nvim-lsp-installer
    config = require "user.plugins.flutter-tools",
  },

  ["simrat39/rust-tools.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    after = { "nvim-lspconfig", "nvim-lsp-installer" },
    config = require "user.plugins.rust-tools",
  },

  ["saecki/crates.nvim"] = {
    event = { "BufRead Cargo.toml" },
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }

      astronvim.add_user_cmp_source "crates"
    end,
  },

  -- You can also add new plugins here as well:
  -- { "andweeb/presence.nvim" },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
