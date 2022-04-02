-- https://github.com/folke/which-key.nvim

local wk = require("which-key")
local mappings = {
  -- q = { ":q<CR>", "QUit" },
  -- Q = { ":wq<CR>", "Save & Quit" },
  -- w = { ":w<CR>", "Save" },
  b = {
    name = "Buffer",
    f = {
      ":Telescope buffers<CR>",
      "find_buffer"
    },
    c = {
      ":BDelete this<CR>",
      "close_buffer"
    },
    C = {
      ":BWipeout! all<CR>",
      "close_all_buffer"
    },
    o = {
      ":BWipeout other<CR>",
      "close_other_buffer"
    },
  },
  t = {
    name = "Tabs/Tasks",
    p = {":tabp<CR>", "Tab_Prev"},
    n = {":tabn<CR>", "Tab_Next"},
    h = {":BufferLineCloseLeft<CR>", "Tabs_Close_Left"},
    l = {":BufferLineCloseRight<CR>", "Tabs_Close_Right"},
    c = {":BufferLinePickClose<CR>", "Tab_Close"}
  },
  E = { ":e ~/.config/nvim/init.vim<CR>", "Edit config" },
  f = {
    name = "find",
    p = {
      "<cmd>lua require('telescope.builtin').find_files()<cr>",
      "find files"
    },
    g = {
      "<cmd>lua require('telescope.builtin').live_grep()<cr>",
      "live grep"
    },
    h = {
      "<cmd>lua require('telescope.builtin').help_tags()<cr>",
      "help tags"
    },
    f = {
      "<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>",
      "current fuzzy"
    },
    t = {
      name = "Task",
      a = {
        ":lua require('telescope').extensions.vstask.tasks()<CR>",
        "task-list"
      },
      i = {
        ":lua require('telescope').extensions.vstask.inputs()<CR>",
        "task-input"
      },
      t = {
        ":lua require('telescope').extensions.vstask.close()<CR>",
        "task-close"
      }
    }
  },
  r = { ":Telescope live_grep<CR>", "Telescope Live Grep" },
  l = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    A = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add workspace folder" },
    R = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove workspace folder" },
    l = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "List workspace" },
    D = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type definition" },
    r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code action" },
    e = { "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", "Show line diagnostic" },
    q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "Set loclist" },
    f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format" },
    s = { "<cmd>Telescope lsp_document_symbols<CR>", "document symbols" }
  },
  j = {
    name = "Jump",
    w = {
      ":HopWord<CR>",
      "jump word"
    },
    s = {
      ":HopChar2<CR>",
      "jump char2"
    },
    j = {
      ":HopLine<CR>",
      "jump line"
    }
  },
}
wk.register(mappings, { prefix = "<leader>" })
