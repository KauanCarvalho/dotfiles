return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    lazy = true,
    config = function()
      require('lsp-zero.settings').preset({})
    end
  },

  -- Autocompletion.
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {
        'L3MON4D3/LuaSnip'
      }
    },
    config = function()
      require('lsp-zero.cmp').extend()

      local cmp = require('cmp')

      cmp.setup({
        mapping = {
          ['<CR>'] = cmp.mapping.confirm({ select = false })
        },
        sources = {
          { name = 'nvim_lsp' }
        }
      })
    end
  },

  -- LSP.
  {
    'neovim/nvim-lspconfig',
    cmd = 'LspInfo',
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'williamboman/mason-lspconfig.nvim'},
      {'williamboman/mason.nvim'},
    },
    config = function()
      local lsp = require('lsp-zero')

      lsp.on_attach(function(client, bufnr)
        -- See :help lsp-zero-keybindings to learn the available actions.
        lsp.default_keymaps({buffer = bufnr})
      end)

      -- Configure lua language server for neovim.
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

      lsp.setup()
    end
  }
}

