-- This file can be loaded by calling `lua require("plugins")` from your init.vim.

return {
  -- Ruby plugins.
  "tpope/vim-endwise",
  { "tpope/vim-bundler", ft = { "ruby", "eruby" } },
  { "vim-ruby/vim-ruby", ft = { "ruby", "eruby" } },

  { 'windwp/nvim-autopairs', event = "InsertEnter", opts = {} }
}
