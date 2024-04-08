return {
  'nvim-neotest/neotest',
  dependencies = {
    'V13Axel/neotest-pest',
    'nvim-neotest/nvim-nio',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-pest',
      },
    }
  end,
}
