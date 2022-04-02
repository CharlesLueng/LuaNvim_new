vim.g.rnvimr_enable_ex = 1
vim.g.rnvimr_enable_picker = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_pick_enable = 1
vim.g.rnvimr_bw_enable = 1

vim.g.rnvimr_border_attr = {
  fg=-1,
  bg=-1
}

-- 按键设置
vim.g.rnvimr_action = {
  ['E'] = 'NvimEdit edit',
  ['<C-t>'] = 'NvimEdit tabedit',
  ['<C-x>'] = 'NvimEdit split',
  ['<C-o>'] = 'NvimEdit drop',
  ['<C-v>'] = 'NvimEdit vsplit',
  ['gw'] = 'JumpNvimCwd',
  ['yw'] = 'EmitRangerCwd'
             }

-- vim.api.nvim_set_var('rnvimr_layout', )

-- vim.api.nvim_exec(
-- [[
-- let g:rnvimr_layout = {
--             \ 'relative': 'editor',
--             \ 'width': &columns,
--             \ 'height': &lines - 2,
--             \ 'col': 0,
--             \ 'row': 0,
--             \ 'style': 'minimal'
--             \ }
--   ]], true)


-- vim.g.rnvimr_layout = {
--     relative= 'editor',
--     -- width= '&columns',
--     -- height= '&lines - 2',
--     -- col= 0,
--     -- row= 0,
--     -- style= 'minimal'
--   }
  --
-- vim.g.rnvimr_action['E'] = 'NvimEdit tabedit'
-- vim.g.rnvimr_action['<C-x'] = 'NvimEdit split'
-- vim.g.rnvimr_action['<C-v>'] = 'NvimEdit vsplit'
-- vim.g.rnvimr_action['gw'] = 'JumpNvimCwd'
-- vim.g.rnvimr_action['yw'] = 'EmitRangerCwd'



             -- '<C-t>'= 'NvimEdit tabedit',
             -- '<C-x>'= 'NvimEdit split',
             -- '<C-v>'= 'NvimEdit vsplit',
             -- 'gw'= 'JumpNvimCwd',
             -- 'yw'= 'EmitRangerCwd'
