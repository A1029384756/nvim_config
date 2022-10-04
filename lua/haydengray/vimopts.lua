vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.autoindent = true

local theme_present, theme = pcall(require, 'one_monokai')
if theme_present then
  theme.setup({
    themes = function ()
      return {
        Normal = { bg = '#1F2532'},
        Comment = { fg = '#95a5a6', italic = true },
        ErrorMsg = { fg = "black", bg = "#ec6075", standout = true },
        NormalFloat = { link = "Normal" },
      }
    end,
  })
  vim.cmd([[colorscheme one_monokai]])
end

