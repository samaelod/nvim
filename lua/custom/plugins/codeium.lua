return {

  {
    'Exafunction/codeium.vim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    event = 'BufEnter',
    -- NOTE: codeium plugin key bindings
    --set statusline+=%\{...\}%3{codeium#GetStatusString()}
    config = function()
      -- require('codeium').setup {}
      -- Add to statusline
      -- vim.opt.statusline .. '{...}%3{codeium#GetStatusString()}'
      -- Change '<C-g>' here to any keycode you like.
      vim.g.codeium_disable_bindings = 1
      --
      vim.keymap.set('i', '<A-l>', function()
        return vim.fn['codeium#Accept']()
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<A-j>', function()
        return vim.fn['codeium#CycleCompletions'](1)
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<A-k>', function()
        return vim.fn['codeium#CycleCompletions'](-1)
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<A-h>', function()
        return vim.fn['codeium#Clear']()
      end, { expr = true, silent = true })
      --vim.keymap.del('i', '<tab>')
      vim.api.nvim_call_function('codeium#GetStatusString', {})
    end,
  },
}
