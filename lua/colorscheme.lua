local colorscheme = "onedark"
-- local colorscheme = "tokyonight"
local status_ok,_ =pcall(vim.cmd,"colorscheme " ..colorscheme)
if
  not status_ok
then
  vim.notify(
    "colorscheme " ..
    colorscheme ..
    " 没有找到！"
  )
  return
end

---------------- tokyonight --------------------
-- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
------------------------------------------------

-- 设置透明背景
-- vim.api.nvim_command("autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE")
-- vim.api.nvim_command("autocmd bufEnter * hi Normal guibg=NONE ctermbg=NONE")

-- local cmd =
--     vim.cmd
-- cmd "au ColorScheme * hi Normal ctermbg=none guibg=none"
-- cmd "au ColorScheme * hi SignColumn ctermbg=none guibg=none"
-- cmd "au ColorScheme * hi NormalNC ctermbg=none guibg=none"
-- cmd "au ColorScheme * hi MsgArea ctermbg=none guibg=none"
-- cmd "au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none"
-- cmd "au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none"
-- cmd "let &fcs='eob: '"

