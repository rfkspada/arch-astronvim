-- In your blink.cmp configuration
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter", -- Use 'enter' as a base or 'none'
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    },
    -- Optional: auto-insert the selection while tabbing
    completion = {
      list = { selection = { preselect = false, auto_insert = true } },
      menu = { auto_show = false },
    },
    sources = {
      providers = { buffer = { enabled = false } },
    },
  },
}
