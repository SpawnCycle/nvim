return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "AstroNvim/astroui",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },
  {
    "AstroNvim/astrolsp",
    opts = {
      features = {
        signature_help = true,
      },
      formatting = {
        disabled = {
          "clangd",
          "omnisharp",
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
      window = {
        position = "right",
        width = 30,
      },
    },
  },
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },
  {
    "smjonas/inc-rename.nvim",
    config = function() require("inc_rename").setup() end,
  },
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    opts = {
      theme = "Dracula",
    },
  },
  { "echasnovski/mini.icons", version = "*" },
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      columns = {
        "icon",
        "permissions",
        "size",
        "msize",
      },
      keymaps = {
        ["<C-s>"] = false,
      },
      watch_for_changes = true,
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
  {
    "https://git.sr.ht/~swaits/scratch.nvim",
    lazy = true,
    keys = {
      { "<leader>bt", "<cmd>Scratch<cr>", desc = "Scratch Buffer", mode = "n" },
      { "<leader>bT", "<cmd>ScratchSplit<cr>", desc = "Scratch Buffer (split)", mode = "n" },
    },
    cmd = {
      "Scratch",
      "ScratchSplit",
    },
    opts = {},
  },
  {
    "Vonr/align.nvim", -- mini.align? don't quite like the defaults
    branch = "v2",
    lazy = true,
    init = function() end,
  },
  -- {
  --   "folke/snacks.nvim",
  --   opts = {
  --     -- Add opts for snack.notifier
  --     notifier = {
  --       top_down = false,
  --     },
  --   },
  -- },
}
