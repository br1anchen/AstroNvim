return {
  checkOnSave = {
    command = "clippy",
  },
  inlayHints = {
    closureReturnTypeHints = true,
    lifetimeElisionHints = {
      useParameterNames = true,
    },
    reborrowHints = true,
  },
}
