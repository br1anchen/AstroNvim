return {
  ensure_installed = {
    "css",
    "html",
    "java",
    "javascript",
    "json",
    "kotlin",
    "lua",
    "markdown",
    "nix",
    "python",
    "rust",
    "toml",
    "typescript",
    "vim",
    "yaml",
  },
  highlight = {
    disable = { "dart" },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ax"] = "@class.outer",
        ["ix"] = "@class.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]f"] = "@function.outer",
        ["]x"] = "@class.outer",
      },
      goto_next_end = {
        ["]F"] = "@function.outer",
        ["]X"] = "@class.outer",
      },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[x"] = "@class.outer",
      },
      goto_previous_end = {
        ["[F"] = "@function.outer",
        ["[X"] = "@class.outer",
      },
    },
    swap = { enable = false },
  },
}
