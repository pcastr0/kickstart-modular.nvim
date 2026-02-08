-- vim: ts=2 sts=2 sw=2 et

return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          disabled_filetypes = {
            statusline = {
              'neo-tree',
              'dapui_watches',
              'dapui_breakpoints',
              'dapui_scopes',
              'dapui_console',
              'dapui_stacks',
              'dap-repl',
            },
          },
          ignore_focus = {
            'neo-tree',
            'dapui_watches',
            'dapui_breakpoints',
            'dapui_scopes',
            'dapui_console',
            'dapui_stacks',
            'dap-repl',
          },
          globalstatus = true,
        },
      }
    end,
  },
}
