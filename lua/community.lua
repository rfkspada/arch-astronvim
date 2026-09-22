-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  -- import/override with your plugins folder

  -- Sobrescreve o vimtex importado acima para fixar a tag desejada
  {
    "lervag/vimtex",
    tag = "v2.18", -- ⚠️ Mude aqui para a versão que você precisa (ex: v2.14, v2.15, etc.)
    init = function()
      -- Lista original do VimTeX, removendo APENAS o "bbl"
      vim.g.vimtex_compiler_clean_outputs = {
        "aux",
        "blg",
        "glg",
        "glo",
        "gls",
        "idx",
        "ilg",
        "ind",
        "ist",
        "lof",
        "log",
        "lot",
        "nav",
        "out",
        "snm",
        "toc",
        "vrb",
        "fls",
        "fdb_latexmk",
        "synctex.gz",
        "pdfsync",
      }
    end,
  },
}
