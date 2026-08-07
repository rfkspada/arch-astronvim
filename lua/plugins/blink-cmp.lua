-- In your blink.cmp configuration
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = {
        "select_next",
        -- Função para só expandir o snippet, sem pular entre placeholders!
        function()
          local luasnip = require "luasnip"
          if luasnip.expandable() then
            vim.schedule(function() luasnip.expand() end)
            return true -- Avisa ao blink que o Tab foi lidado e impede o fallback
          end
        end,
        "snippet_forward",
        "fallback",
      },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    },
    -- Optional: auto-insert the selection while tabbing
    completion = {
      list = { selection = { preselect = true, auto_insert = false } },
      menu = { auto_show = false },
    },
    sources = {
      providers = { buffer = { enabled = false } },
    },
  },
}
