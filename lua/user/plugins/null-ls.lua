local null_ls = require "null-ls"

return {
  -- Check supported formatters and linters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  sources = {
    -- JS html css stuff
    null_ls.formatting.prettierd,
    null_ls.diagnostics.eslint.with { command = "eslint_d" },

    -- Lua
    null_ls.formatting.stylua,
    null_ls.diagnostics.luacheck.with { extra_args = { "--global vim" } },

    -- Shell
    null_ls.formatting.shfmt,
    null_ls.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

    -- Rust
    null_ls.formatting.rustfmt,

    -- CSS
    null_ls.diagnostics.stylelint,
    null_ls.formatting.stylelint,

    -- Dart
    null_ls.formatting.dart_format,

    -- Nix
    null_ls.formatting.nixfmt,
    null_ls.diagnostics.statix,

    -- SQL
    null_ls.formatting.sqlfluff.with {
      extra_args = { "--dialect", "mysql" }, -- change to your dialect
    },
    null_ls.diagnostics.sqlfluff.with {
      extra_args = { "--dialect", "mysql" }, -- change to your dialect
    },
  },
  -- set up null-ls's on_attach function
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format {
            bufnr = bufnr,
          }
        end,
      })
    end
  end,

  debounce = 250,
  update_in_insert = true,
}
