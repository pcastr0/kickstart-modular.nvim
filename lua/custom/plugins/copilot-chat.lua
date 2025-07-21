return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      {
        'zbirenbaum/copilot.lua',
        cmd = 'Copilot',
        event = 'InsertEnter',
        config = function()
          require('copilot').setup {
            panel = {
              enabled = false,
            },
            suggestion = {
              enabled = false,
              -- keymap = {
              --   accept = '<M-l>',
              --   accept_word = false,
              --   accept_line = false,
              --   next = '<M-]>',
              --   prev = '<M-[>',
              --   dismiss = '<C-]>',
              -- },
            },
            filetypes = {
              markdown = true,
              help = true,
            },
            --
            copilot_model = 'gpt-4.1',
          }
        end,
      },
      { 'nvim-telescope/telescope.nvim' }, -- Use telescope for help actions
      { 'nvim-lua/plenary.nvim' },
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      question_header = '   User  ',
      answer_header = '  Copilot ',
      chat_autocomplete = false,
      mappings = {},
    },
    -- See Commands section for default commands if you want to lazy load on them
    config = function(_, opts)
      local chat = require 'CopilotChat'
      chat.setup(opts)

      local select = require 'CopilotChat.select'
      vim.api.nvim_create_user_command('CopilotChatBuffer', function(args)
        chat.ask(args.args, { selection = select.buffer })
      end, { nargs = '*', range = true })

      -- Custom buffer for CopilotChat
      vim.api.nvim_create_autocmd('BufEnter', {
        pattern = 'copilot-*',
        callback = function()
          vim.opt_local.relativenumber = true
          vim.opt_local.number = true

          -- Get current filetype and set it to markdown if the current filetype is copilot-chat
          local ft = vim.bo.filetype
          if ft == 'copilot-chat' then
            vim.bo.filetype = 'markdown'
          end
        end,
      })
    end,
    event = 'VeryLazy',
    keys = {
      -- Show prompts actions with telescope
      {
        '<leader>ap',
        function()
          require('CopilotChat').select_prompt {
            context = {
              'buffers',
            },
          }
        end,
        desc = 'CopilotChat - Prompt actions',
      },
      {
        '<leader>ap',
        function()
          require('CopilotChat').select_prompt()
        end,
        mode = 'x',
        desc = 'CopilotChat - Prompt actions',
      },
      -- Code related commands
      { '<leader>ae', '<cmd>CopilotChatExplain<cr>', desc = 'CopilotChat - Explain code' },
      { '<leader>at', '<cmd>CopilotChatTests<cr>', desc = 'CopilotChat - Generate tests' },
      { '<leader>ar', '<cmd>CopilotChatReview<cr>', desc = 'CopilotChat - Review code' },
      { '<leader>aR', '<cmd>CopilotChatRefactor<cr>', desc = 'CopilotChat - Refactor code' },
      { '<leader>an', '<cmd>CopilotChatBetterNamings<cr>', desc = 'CopilotChat - Better Naming' },
      -- Chat with Copilot in visual mode
      {
        '<leader>av',
        ':CopilotChatVisual',
        mode = 'x',
        desc = 'CopilotChat - Open in vertical split',
      },
      {
        '<leader>ax',
        ':CopilotChatInline',
        mode = 'x',
        desc = 'CopilotChat - Inline chat',
      },
      -- Custom input for CopilotChat
      {
        '<leader>ai',
        function()
          local input = vim.fn.input 'Ask Copilot: '
          if input ~= '' then
            vim.cmd('CopilotChat ' .. input)
          end
        end,
        desc = 'CopilotChat - Ask input',
      },
      -- Generate commit message based on the git diff
      -- {
      --   '<leader>am',
      --   '<cmd>CopilotChatCommit<cr>',
      --   desc = 'CopilotChat - Generate commit message for all changes',
      -- },
      -- Quick chat with Copilot
      {
        '<leader>aq',
        function()
          local input = vim.fn.input 'Quick Chat: '
          if input ~= '' then
            vim.cmd('CopilotChatBuffer ' .. input)
          end
        end,
        desc = 'CopilotChat - Quick chat',
      },
      -- Fix the issue with diagnostic
      { '<leader>af', '<cmd>CopilotChatFixError<cr>', desc = 'CopilotChat - Fix Diagnostic' },
      -- Clear buffer and chat history
      { '<leader>al', '<cmd>CopilotChatReset<cr>', desc = 'CopilotChat - Clear buffer and chat history' },
      -- Toggle Copilot Chat Vsplit
      { '<leader>ac', '<cmd>CopilotChatToggle<cr>', desc = 'CopilotChat - Toggle' },
      -- Copilot Chat Models
      { '<leader>am', '<cmd>CopilotChatModels<cr>', desc = 'CopilotChat - Select Models' },
      -- Copilot Chat Agents
      { '<leader>a?', '<cmd>CopilotChatAgents<cr>', desc = 'CopilotChat - Select Agents' },
    },
  },
}
