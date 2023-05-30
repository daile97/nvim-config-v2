require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'typescript',
    'tsx',
    'html',
    'css',
    'json'
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  autotag = {
    enable = true
  }
})
