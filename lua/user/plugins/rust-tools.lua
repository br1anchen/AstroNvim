return function()
  local present, rust = pcall(require, "rust-tools")

  if not present then
    return
  end

  local opts = {
    tools = {
      autoSetHints = true,
      hover_with_actions = true,
      executor = require("rust-tools/executors").termopen,
      runnables = {
        use_telescope = true,
      },
      inlay_hints = {
        show_parameter_hints = true,
        parameter_hints_prefix = "<- ",
        other_hints_prefix = "=> ",
        max_len_align = false,
        max_len_align_padding = 1,
        right_align = false,
        right_align_padding = 7,
      },
      hover_actions = {
        border = "single",
        auto_focus = false,
      },
    },
    server = astronvim.lsp.server_settings "rust-analyzer",
  }
  rust.setup(opts)
end
