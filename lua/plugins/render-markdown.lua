return {
  "MeanderingProgrammer/render-markdown.nvim",
  cmd = "RenderMarkdown",
  ft = function()
    local plugin = require("lazy.core.config").spec.plugins["render-markdown.nvim"]
    local opts = require("lazy.core.plugin").values(plugin, "opts", false)
    return opts.file_types or { "markdown" }
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  specs = {
    {
      "AstroNvim/astrocore",
      optional = true,
      ---@type AstroCoreOpts
      opts = {
        treesitter = { ensure_installed = { "html", "markdown", "markdown_inline" } },
        -- PARA INSTALAR O latex NO TREESITTER TIVE QUE USAR A VERSÃO 0.25 DO tree-sitter-cli!!!!!!!
      },
    },
  },
  opts = {
    anti_conceal = {
      enabled = true,
      disabled_modes = { "n", "c", "t" },
    },
    render_modes = { "n", "c", "t", "i" },
    latex = {
      enabled = true,
      -- CUIDADO PARA VER SE O SISTEMA TEM O utftex
      converter = "utftex",
      highlight = "RenderMarkdownMath",
      top_pad = 0,
      bottom_pad = 0,
      position = "center",
    },
  },
}
