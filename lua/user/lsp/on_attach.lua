return function(client)
  if client.name ~= "null-ls" then
    client.server_capabilities.documentFormattingProvider = false
  end

  if client.server_capabilities.documentFormattingProvider then
    vim.cmd [[
            augroup LspFormatting autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async=true})
            augroup END
            ]]
  end
end
