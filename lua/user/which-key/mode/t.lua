local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

return {
  ["<C-e>"] = { termcodes "<C-\\><C-N>", "Escape terminal mode" },
}
