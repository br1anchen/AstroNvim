-- CMP Source Priorities
-- modify here the priorities of default cmp sources
-- higher value == higher priority
-- The value can also be set to a boolean for disabling default sources:
-- false == disabled
-- true == 1000
return {
  nvim_lsp = 1110,
  luasnip = 111,
  crates = 110,
  emoji = 11,
  buffer = 10,
  path = 1,
}
