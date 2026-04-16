require("astrolsp").setup {
  features = {
    signature_help = true,
  },
  formatting = {
    disabled = {
      "clangd", -- clang-format
      "omnisharp", -- use clang-format instead, much better than the default c# style formatting
      "csharp_ls", -- see above
      "csharpier", -- the default formatter the community pack installs
      "ts_ls", -- use prettier
    },
  },
}

return {}
