local opts = {
  on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    require("keybindings").mapLSP(buf_set_keymap)
    -- 保存时自动格式化
    -- vim.cmd("autocmd BufWritePost <buffer> FormatWrite")
  end,
}

return {
  on_ready = function(server)
    server:setup(opts)
  end
}
