-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.mouse = ""

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.opt.scrolloff = 8

vim.opt.nu = true
vim.opt.relativenumber = true

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "vue", "typescript", "typescriptreact" } }
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "eslint",
    filetypes = { "vue", "typescript", "typescriptreact" },
  },
}


require("luasnip/loaders/from_vscode").load { paths = { "~/.config/lvim/snippets/vscode-es7-javascript-react-snippets" } }

lvim.plugins = {
  { "mg979/vim-visual-multi" },
  {
    "AckslD/swenv.nvim",
    opts = {
      -- Should return a list of tables with a `name` and a `path` entry each.
      -- Gets the argument `venvs_path` set below.
      -- By default just lists the entries in `venvs_path`.
      get_venvs = function(venvs_path)
        return require('swenv.api').get_venvs(venvs_path)
      end,
      -- Path passed to `get_venvs`.
      venvs_path = vim.fn.expand('~/.pyenv/versions/3.11.2/envs/'),
      -- Something to do after setting an environment, for example call vim.cmd.LspRestart
      post_set_venv = nil,
    }
  },
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'tpope/vim-fugitive'
  }
}

lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}
