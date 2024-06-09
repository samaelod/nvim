return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      view_options = {
        show_hidden = true,
      },
    }
    vim.keymap.set('n', '-', require('oil').open, { desc = 'Open parent directory' })
    vim.keymap.set('n', '<leader>o', require('oil').open_float, { desc = 'Open parent directory in float' })
  end,
}
