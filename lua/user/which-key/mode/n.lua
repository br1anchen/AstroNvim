local mappings = {
  ["<leader>"] = {
    f = {
      name = "+Telescope",
      ["?"] = { "<cmd>Telescope help_tags<cr>", "Find Help" },
      ["'"] = { "<cmd>Telescope marks<cr>", "Marks" },
      a = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "All" },
      b = { "<cmd> Telescope buffers<cr>", "Buffers" },
      c = { "<cmd>Telescope commands<cr>", "Commands" },
      e = { "<cmd>Telescope file_browser<cr>", "Explorer" },
      h = { "<cmd>Telescope oldfiles<cr>", "History" },
      k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
      l = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace symbols" },
      m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
      M = { "<cmd>Telescope media_files<cr>", "Media" },
      p = { "<cmd>Telescope neoclip<cr>", "Clipboard" },
      P = { "<cmd>Telescope project<cr>", "Projects" },
      r = { "<cmd>Telescope registers<cr>", "Registers" },
      t = { "<cmd>Telescope live_grep <cr>", "Live grep" },
      T = { "<cmd>TodoTelescope<cr>", "Todos" },
      w = { "<cmd>Telescope grep_string<cr>", "Word" },
    },

    h = {
      name = "+Hop",
      c = { "<cmd>HopChar1<cr>", "Character" },
      C = { "<cmd>HopChar2<cr>", "2 Characters" },
      l = { "<cmd>HopLine<cr>", "Line" },
      p = { "<cmd>HopPattern<cr>", "Pattern" },
      w = { "<cmd>HopWord<cr>", "Word" },
    },

    o = {
      name = "+Octo",
      d = { "<cmd>Octo review discard<cr>", "Octo review discard" },
      m = { "<cmd>Octo pr merge rebase<cr>", "Octo pr merge rebase" },
      i = { "<cmd>Octo review start<cr>", "Octo review start" },
      s = { "<cmd>Octo review submit<cr>", "Octo review submit" },
      a = { "<cmd>Octo review resume<cr>", "Octo review resume" },
      x = { "<cmd>Octo review close<cr>", "Octo review close" },
      p = { "<cmd>Octo pr list<cr>", "Octo pr list" },
      c = { "<cmd>Octo review commit<cr>", "Octo review commits list" },
    },

    s = {
      name = "+Surf",
      s = { "<cmd>STSSelectMasterNode<cr>", "Surf" },
      S = { "<cmd>STSSelectCurrentNode<cr>", "Surf Node" },
    },
  },

  ["]"] = {
    name = "+Next objects",
    f = "Next function",
    c = "Next class",
    F = "Next end function",
    C = "Next end class",
    ["/"] = "Next comment",
  },
  ["["] = {
    name = "+Prev objects",
    f = "Prev function",
    c = "Prev class",
    F = "Prev end function",
    C = "Prev end class",
    ["/"] = "Prev comment",
  },

  g = {
    t = {
      name = "+Treesitter",
      v = {
        function()
          require("syntax-tree-surfer").targeted_jump { "variable_declaration" }
        end,
        "Go to Variables",
      },
      f = {
        function()
          require("syntax-tree-surfer").targeted_jump { "function" }
        end,
        "Go to Functions",
      },
      i = {
        function()
          require("syntax-tree-surfer").targeted_jump {
            "if_statement",
            "else_clause",
            "else_statement",
            "elseif_statement",
          }
        end,
        "Go to If Statements",
      },
      r = {
        function()
          require("syntax-tree-surfer").targeted_jump { "for_statement" }
        end,
        "Go to If Statements",
      },
      w = {
        function()
          require("syntax-tree-surfer").targeted_jump { "white_statement" }
        end,
        "Go to While Statements",
      },
      s = {
        function()
          require("syntax-tree-surfer").targeted_jump { "switch_statement" }
        end,
        "Go to Switch Statements",
      },
      t = {
        function()
          require("syntax-tree-surfer").targeted_jump {
            "function",
            "if_statement",
            "else_clause",
            "else_statement",
            "elseif_statement",
            "for_statement",
            "while_statement",
            "switch_statement",
          }
        end,
        "Go to Statement",
      },
    },
  },
}
local ignore = {
  "z<CR>",
  "z+",
  "z-",
  "z^",
  "zl",
  "zh",
  "z.",
  "Y",
  "n",
  "N",
  "J",
  "<A-c>",
  "<SNR>",
  "y",
  "c",
  "d",
  "<PageUp>",
  "<PageDown>",
  "<Up>",
  "<Down>",
  "<Left>",
  "<Right>",
  "j",
  "k",
  "l",
  "h",
  "^",
  "*",
  "-",
  "^",
  "0",
  "%",
  "#",
  "$",
  "<LeftMouse>",
  "<2-LeftMouse>",
  "<C-i>",
  "<C-o>",
  "G",
  "gg",
}
for _, key in pairs(ignore) do
  mappings[key] = { "which_key_ignore" }
end

return mappings
