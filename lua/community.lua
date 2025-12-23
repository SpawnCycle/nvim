return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.typst" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.prettier" },
  { import = "astrocommunity.pack.tailwindcss" },
  -- { import = "astrocommunity.pack.cs" }, -- omnisharp breaks so fucking often, omfg  TODO: rename to cs-omnisharp once it works again
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.hyprlang" },
  { import = "astrocommunity.quickfix.quicker-nvim" },
  { import = "astrocommunity.quickfix.nvim-bqf" },

  { import = "astrocommunity.pack.diff-keybindings" },
}
