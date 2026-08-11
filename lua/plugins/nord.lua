return {
  "shaunsingh/nord.nvim",
  name = "nord",
  --  opts = {
  -- configuration options...
  -- },
  config = function()
    -- Remove o fundo padrão azulado do Nord para usar o do terminal
    vim.g.nord_disable_background = true

    -- Se quiser que as barras laterais (como Nvim-Tree) também usem o fundo do terminal:
    vim.g.nord_enable_sidebar_background = false
  end,
}
