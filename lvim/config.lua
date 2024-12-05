vim.opt.relativenumber = true
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.relativenumber = true -- relative line numbers
-- lvim.transparent_window = true
-- vim.opt.wrap = true -- wrap lines
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  "scottmckendry/cyberdream.nvim",
  "iagorrr/noctishc.nvim",
  "kartikp10/noctis.nvim",
  "rktjmp/lush.nvim",
  {
    'pineapplegiant/spaceduck',
    branch = 'main'
  },
}

-- lvim.colorscheme = "cyberdream"
lvim.colorscheme = "noctishc"

vim.api.nvim_create_augroup("NoctisCustom", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
  group = "NoctisCustom",
  pattern = "noctishc",
  callback = function()
    -- Modify specific highlight groups
    vim.api.nvim_set_hl(0, '@tag.builtin.tsx', { fg = '#FF7039' })
    vim.api.nvim_set_hl(0, '@keyword.function.tsx', { bold = false, fg = "#FF669C" })
    vim.api.nvim_set_hl(0, '@tag.attribute.tsx', { italic = false, fg = '#E6AC00' })
    vim.api.nvim_set_hl(0, '@tag.tsx', { italic = false, fg = '#00A0FF' })
    vim.api.nvim_set_hl(0, '@type.tsx', { italic = false, fg = '#EB84EB' })
    vim.api.nvim_set_hl(0, '@lsp.type.type.typescriptreact', { italic = false, fg = '#EB84EB' })
    vim.api.nvim_set_hl(0, '@lsp.type.interface.typescriptreact', { italic = false, fg = '#EB84EB' })
    vim.api.nvim_set_hl(0, '@type.builtin.tsx', { italic = false, fg = '#EB84EB' })
    vim.api.nvim_set_hl(0, '@constant.builtin.tsx', { bold = false, fg = '#A000FF' })
    vim.api.nvim_set_hl(0, '@comment.tsx', { fg = '#888888' })
    vim.api.nvim_set_hl(0, '@comment.documentation.tsx', { fg = '#888888' })
  end
})
