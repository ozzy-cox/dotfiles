return {
  'navarasu/onedark.nvim',
  name = 'onedark',
  -- priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      highlights = {},
    }
    vim.cmd.colorscheme 'onedark'
  end,
}
