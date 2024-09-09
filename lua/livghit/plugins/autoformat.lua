return {
  -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      php = { 'pint' },
      blade = { 'blade-formatter' },
      go = { 'goimports', 'gofmt', 'gopls' },
      html = { 'prettier' },
      astro = { 'prettier' },
      javascriptreact = { 'prettier' },
      vue = { 'prettier' },
      ml = { 'ocamlformat' },
      ocaml = { 'ocamlformat' },
      javascript = { { 'prettierd', 'prettier' } },
    },
  },
}
