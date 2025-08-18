-- Additional Node.js/TypeScript debugging configuration
-- This extends the main debug.lua configuration with JS/TS specific features

return {
  -- VS Code launch.json support
  {
    'microsoft/vscode-js-debug',
    lazy = true,
    build = 'npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out',
  },
  -- Additional debug utilities for Node.js
  {
    'Pocco81/dap-buddy.nvim',
    dependencies = { 'mfussenegger/nvim-dap' },
    lazy = true,
    keys = {
      {
        '<leader>db',
        function()
          require('dap-buddy').open()
        end,
        desc = 'Debug: Open DAP Buddy (debug adapter installer)',
      },
    },
    config = function()
      require('dap-buddy').setup {
        ensure_installed = { 'node2', 'chrome' },
      }
    end,
  },
}