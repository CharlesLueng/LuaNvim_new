require("formatter").setup({
  filetype = {
    lua = {
      function()
        return {
          exe = "stylua",
          args = {
            -- "--config-path "
            --   .. os.getenv("XDG_CONFIG_HOME")
            --   .. "/stylua/stylua.toml",
            "-",
          },
          stdin = true,
        }
      end,
    },
    rust = {
      -- Rustfmt
      function()
        return {
          exe = "rustfmt",
          args = { "--emit=stdout" },
          stdin = true,
        }
      end,
    },
    javascript = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    vue = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    markdown = {
      function() 
        return {
        exe = "prettier", args = {"-w"}, stdin = true,
        -- {
        --     cmd = {"black"},
        --     start_pattern = "^```python$",
        --     end_pattern = "^```$",
        --     target = "current",
        --     stdin = true
        --   }
        }
      end,
    },
    --cs = {
    --{cmd = {"astyle --style=ansi %s"}}
    --}
    cs = {
      function()
        return {
          exe = "astyle",
          args = {"--style=ansi"},
          stdin = true
        }
      end,
    }
  },
})

-- format on save
vim.api.nvim_exec(
  [[
  augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua,*.vue,*.cs,*.md,*.markdown FormatWrite
  augroup END
]],
  true
)
