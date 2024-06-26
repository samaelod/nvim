return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
          ' ',
          ' ███████╗   █████╗   ███╗   ███╗  ██╗   ██╗',
          ' ██╔════╝  ██╔══██╗  ████╗ ████║  ╚██╗ ██╔╝',
          ' ███████╗  ███████║  ██╔████╔██║   ╚████╔╝ ',
          ' ╚════██║  ██╔══██║  ██║╚██╔╝██║    ╚██╔╝  ',
          ' ███████║  ██║  ██║  ██║ ╚═╝ ██║     ██║   ',
          ' ╚══════╝  ╚═╝  ╚═╝  ╚═╝     ╚═╝     ╚═╝   ',
          ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
          ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
          ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
          ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
          ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
          ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
          ' ',
        }, --your header
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Current Directory           ',
            desc_hl = 'String',
            key = 's',
            key_hl = 'Number',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'Telescope find_files',
          },
          {
            icon = ' ',
            desc = 'Find Dotfiles',
            key = 'f',
            keymap = 'SPC f d',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'lua print(3)',
          },
        },
        footer = {}, --your footer
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
