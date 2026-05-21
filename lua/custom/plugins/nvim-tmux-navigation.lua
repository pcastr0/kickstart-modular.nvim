-- vim: ts=2 sts=2 sw=2 et

return {
  {
    'alexghergh/nvim-tmux-navigation',
    config = function()
      local nvim_tmux_nav = require 'nvim-tmux-navigation'

      nvim_tmux_nav.setup {
        disable_when_zoomed = true, -- defaults to false
      }

      vim.keymap.set('n', '<C-h>', nvim_tmux_nav.NvimTmuxNavigateLeft, { desc = 'Navigate left (tmux/vim)' })
      vim.keymap.set('n', '<C-j>', nvim_tmux_nav.NvimTmuxNavigateDown, { desc = 'Navigate down (tmux/vim)' })
      vim.keymap.set('n', '<C-k>', nvim_tmux_nav.NvimTmuxNavigateUp, { desc = 'Navigate up (tmux/vim)' })
      vim.keymap.set('n', '<C-l>', nvim_tmux_nav.NvimTmuxNavigateRight, { desc = 'Navigate right (tmux/vim)' })
      vim.keymap.set('n', '<C-\\>', nvim_tmux_nav.NvimTmuxNavigateLastActive, { desc = 'Navigate to last active pane' })
      vim.keymap.set('n', '<C-Space>', nvim_tmux_nav.NvimTmuxNavigateNext, { desc = 'Navigate to next pane' })
    end,
  },
}
