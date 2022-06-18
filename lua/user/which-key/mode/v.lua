return {
  ["<leader>"] = {
    h = {
      name = "+Hop",
      c = { "<cmd>HopChar1<cr>", "Character" },
      C = { "<cmd>HopChar2<cr>", "2 Characters" },
      l = { "<cmd>HopLine<cr>", "Line" },
      p = { "<cmd>HopPattern<cr>", "Pattern" },
      w = { "<cmd>HopWord<cr>", "Word" },
    },
  },
  J = {
    function()
      require("syntax-tree-surfer").surf("next", "visual")
    end,
    "Next",
  },
  K = {
    function()
      require("syntax-tree-surfer").surf("prev", "visual")
    end,
    "Prev",
  },
  H = {
    function()
      require("syntax-tree-surfer").surf("parent", "visual")
    end,
    "Parent",
  },
  L = {
    function()
      require("syntax-tree-surfer").surf("child", "visual")
    end,
    "Child",
  },
  ["<C-j>"] = {
    function()
      require("syntax-tree-surfer").surf("next", "visual", true)
    end,
    "Swap Next",
  },
  ["<C-k>"] = {
    function()
      require("syntax-tree-surfer").surf("prev", "visual", true)
    end,
    "Swap Prev",
  },
}
