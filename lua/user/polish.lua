-- This function is run last
-- good place to configure mappings and vim options
return function()
  -- Set key bindings
  vim.keymap.set("n", "<C-s>", ":w!<CR>")

  -- Set autocommands
  vim.api.nvim_create_augroup("packer_conf", { clear = true })
  vim.api.nvim_create_autocmd("BufWritePost", {
    desc = "Sync packer after modifying plugins.lua",
    group = "packer_conf",
    pattern = "plugins.lua",
    command = "source <afile> | PackerSync",
  })
end
