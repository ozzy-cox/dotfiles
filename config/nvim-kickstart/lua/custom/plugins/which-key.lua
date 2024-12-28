-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

-- return { -- Useful plugin to show you pending keybinds.
--   'folke/which-key.nvim',
--   event = 'VimEnter', -- Sets the loading event to 'VimEnter'
--   config = function() -- This is the function that runs, AFTER loading
--     require('which-key').setup()
--
--     -- Document existing key chains
--     require('which-key').register {
--       ['<leader>w'] = { '<cmd>w!<CR>', 'Save' },
--       ['<leader>q'] = { '<cmd>confirm q<CR>', 'Quit' },
--       ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
--       ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
--       ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
--       ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
--       -- ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
--     }
--   end,
-- }
--
return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      '<leader>?',
      function()
        require('which-key').show { global = false }
      end,
      desc = 'Buffer Local Keymaps (which-key)',
    },
    {
      '<leader>w',
      '<cmd>w!<CR>',
      desc = 'Write',
    },
    {
      '<leader>W',
      '<cmd>wa!<CR>',
      desc = 'WriteAll',
    },
    {
      '<leader>q',
      '<cmd>confirm q<CR>',
      desc = 'Quit',
    },
  },
}
