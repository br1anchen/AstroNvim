return function()
  local ok, neogen = pcall(require, "neogen")

  if not ok then
    return
  end

  neogen.setup {
    snippet_engine = "luasnip",
    languages = {
      python = { template = { annotation_convention = "google_docstrings" } },
      typescript = { template = { annotation_convention = "tsdoc" } },
      typescriptreact = { template = { annotation_convention = "tsdoc" } },
    },
  }
end
