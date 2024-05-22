-- [[ Custom mappings]]
vim.keymap.set('n', '<leader>e', '<CMD>Oil<CR>', { desc = 'Oil File Explorer' })
--vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Files Explorer toggle' })
vim.keymap.set('n', '<leader>bd', '<cmd>bd<CR>', { desc = 'Drop Buffer' })
vim.keymap.set('n', '<leader>bn', '<cmd>bn<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<leader>bp', '<cmd>bp<CR>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<leader>tc', '<cmd>Telescope colorscheme<CR>', { desc = 'Change Colorscheme' })

-- [[ Run Test ]]
vim.keymap.set('n', '<leader>tn', function()
  require('neotest').run.run()
end, { desc = 'Run single Test' })

vim.keymap.set('n', '<leader>tf', function()
  require('neotest').run.run(vim.fn.expand '%')
end, { desc = 'Run file Test' })
-- [[ Kickstarter Mappings]]
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', 'gnd', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', 'gpd', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
