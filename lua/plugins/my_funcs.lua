local wk = require "which-key"

-- I am a 2 space tab person
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.backup = false

if vim.g.neovide then
  vim.g.gui_font_default_size = 11
  vim.g.gui_font_size = vim.g.gui_font_default_size
  vim.g.gui_font_face = "CaskaydiaCove Nerd Font Mono"

  local RefreshGuiFont = function() vim.opt.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size) end

  local ResizeGuiFont = function(delta)
    vim.g.gui_font_size = vim.g.gui_font_size + delta
    RefreshGuiFont()
  end

  local ResetGuiFont = function()
    vim.g.gui_font_size = vim.g.gui_font_default_size
    RefreshGuiFont()
  end

  -- Call function on startup to set default value
  ResetGuiFont()

  -- Keymaps

  local opts = { noremap = true, silent = true }

  -- stylua: ignore start
  vim.keymap.set({ "n", "i" }, "<C-+>",  function() ResizeGuiFont(1)  end, opts)
  vim.keymap.set({ "n", "i" }, "<C-->",  function() ResizeGuiFont(-1) end, opts)
  vim.keymap.set({ "n", "i" }, "<C-BS>", function() ResetGuiFont()    end, opts)
  -- stylua: ignore end
end

-- description for whichkey
-- stylua: ignore
wk.add {
  mode = { "n" },
  { "<leader>rn", desc = "Renames variables using treesitter", expr = true, },
  { "<leader>E",  function() vim.cmd "Oil ." end, desc = "Open cwd with oil.nvim"},
}
-- the actual increname function
vim.keymap.set("n", "<leader>rn", function() return ":IncRename " .. vim.fn.expand "<cword>" end, { expr = true })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  -- vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  -- vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  -- vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n>]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"

-- align.nvim
-- stylua: ignore
wk.add {
  mode = { "v" },
  { "<leader>a", group = "Align" },
  { "<leader>aa", function() require("align").align_to_char { length = 1 }                      end, desc = "Align to 1 character" },
  { "<leader>ad", function() require("align").align_to_char { length = 1, preview = true }      end, desc = "Align to 1 character with preview", },
  { "<leader>aw", function() require("align").align_to_string { preview = true, regex = false } end, desc = "Align to string", },
  { "<leader>ar", function() require("align").align_to_string { preview = true, regex = true }  end, desc = "Align to string with regex", },
}

-- stylua: ignore
wk.add {
  mode = { "v" },
  { "<leader>s", group = "Silicon" },
  { "<leader>sc", function() require("nvim-silicon").shoot() end, desc = "Copy code screenshot to clipboard" },
  { "<leader>sf", function() require("nvim-silicon").file()  end, desc = "Save code screenshot as file" },
  { "<leader>ss", function() require("nvim-silicon").clip()  end, desc = "Create code screenshot" },
}

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("x", "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

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
