vim.opt.relativenumber = true
vim.diagnostic.config({ virtual_text = false })

vim.opt.foldmethod = "expr" -- default is "normal"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- default is ""
vim.opt.foldenable = false -- if this optoin is true and fold method option is other than normal, every time a doc is opened everything will be folded
lvim.builtin.which_key.setup.plugins.presets.z = true -- add whichkey support for folding

-- required for folding to work for files opened with telescope
-- vim.ap.nvim_create_autocmd({ "BufEnter" }, { pattern = { "*" }, command = "normal zx", })

lvim.plugins = {
  { "tpope/vim-surround" },
  { "tpope/vim-repeat" },
  {
    "hiphish/rainbow-delimiters.nvim",
    config = function()
      local rainbow_delimiters = require 'rainbow-delimiters'

      vim.g.rainbow_delimiters = {
        strategy = {
          [''] = rainbow_delimiters.strategy['global'],
          vim = rainbow_delimiters.strategy['local'],
        },
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks'
        },
        highlight = {
          'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
        },
      }
    end,
  },
}
