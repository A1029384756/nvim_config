require('haydengray/vimopts')
require('haydengray/mappings')
require('plugins')

require('plugin_config.mason')
require('plugin_config.feline')
require('plugin_config.lsp')
require('plugin_config.telescope')

require('toggleterm').setup({
  open_mapping = [[<c-\>]],
  direction = 'float'
})

require("one_monokai").setup({
  themes = function()
    return {
      Normal = { bg = '#1F2532'},
      Comment = { fg = '#95a5a6', italic = true },
      ErrorMsg = { fg = "black", bg = "#ec6075", standout = true },
      NormalFloat = { link = "Normal" },
    }
  end,
})



















































