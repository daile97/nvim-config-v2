local lsp = require('lsp-zero').preset('recommended')
local cmp = require('cmp')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»' 
})

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'tailwindcss',
  'html',
  'cssls'
})

lsp.setup()

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false })
  },
  formatting = {
    fields = { 'menu', 'abbr', 'kind' },
    format = function(entry, item)
      local menu_icon = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
      }
      item.menu = menu_icon[entry.source.name]
      return item
    end
  }
})
