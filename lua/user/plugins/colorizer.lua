return function()
  local present, colorizer = pcall(require, "colorizer")

  if not present then
    return
  end
  local options = {
    filetypes = {
      "*",
      dart = { AARRGGBB = true },
    },
    user_default_options = {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = false, -- "Name" codes like Blue
      RRGGBBAA = false, -- #RRGGBBAA hex codes
      rgb_fn = false, -- CSS rgb() and rgba() functions
      hsl_fn = false, -- CSS hsl() and hsla() functions
      css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn

      mode = "virtualtext",
    },
  }

  colorizer.setup(options["filetypes"], options["user_default_options"])

  vim.cmd "ColorizerAttachToBuffer"
end
