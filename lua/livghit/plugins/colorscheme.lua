return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  --'folke/tokyonight.nvim', -- Tokyonight colorscheme
  --'nyoom-engineering/oxocarbon.nvim' - Oxocarbon colorscheme
  'rose-pine/neovim', -- Rosepine neovim
  name = 'rose-pine',

  priority = 1000, -- make sure to load this before all the other start plugins
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'rose-pine-moon'

    -- You can configure highlights by doing something like
    vim.cmd.hi 'Comment gui=none'
  end,
}