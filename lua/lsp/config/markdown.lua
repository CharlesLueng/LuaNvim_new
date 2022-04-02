local opts = {
  -- cmd = {"~/.local/share/nvim/lsp_servers/zeta_note/zeta-note"},
  flags = {
    debounce_text_changes = 150,
  },
  on_attach = function(client, bufnr)
    print("markdown.lua")
    -- local function buf_set_keymap(...)
    --   vim.api.nvim_buf_set_keymap(bufnr, ...)
    -- end
    -- require("keybindings").mapLSP(buf_set_keymap)
    -- -- 保存时自动格式化
    -- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
  end,
}
return {
  on_ready = function(server)
    server:setup(opts)
  end,
}


-- /Users/charles/.local/share/nvim/lsp_servers/zeta_note:/Users/charles/development/flutter:/Users/charles/.local/bin:/Users/charles/.dotnet/tools:/Users/charles/Library/Python/2.7/bin:/Users/charles/document/code/flutte
-- r/bin:/Users/charles/development/flutter/bin:/Users/charles/Library/Android/sdk/tools:/Users/charles/.zplug/repos/zplug/zplug/bin:/Users/charles/.zplug/bin:/Users/charles/.nvm/versions/node/v14.0.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sb
-- in:/sbin:/Applications/VMware Fusion.app/Contents/Public:/usr/local/aria2/bin:/usr/local/share/dotnet:/opt/X11/bin:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Wireshark
-- .app/Contents/MacOS:/Users/charles/nvim-osx64/bin
