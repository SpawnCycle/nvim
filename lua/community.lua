return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cs" }, -- omnisharp breaks so fucking often, omfg  TODO: rename to cs-omnisharp once it works again
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.quickfix.quicker-nvim" },
  { import = "astrocommunity.quickfix.nvim-bqf" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
}
