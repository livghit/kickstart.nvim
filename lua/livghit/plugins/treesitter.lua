return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function(opts)
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'go',
        'html',
        'lua',
        'markdown',
        'vim',
        'vimdoc',
        'php',
        'phpdoc',
        'typescript',
      },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }

    require('nvim-treesitter.configs').setup(opts)

    local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = 'https://github.com/EmranMR/tree-sitter-blade',
        files = { 'src/parser.c' },
        branch = 'main',
      },
      filetype = 'blade',
    }
    vim.filetype.add {
      pattern = {
        ['.*%.blade%.php'] = 'blade',
      },
    }
  end,
}
