local M = {}

function M.setup()
  local dap = require "dap"

  dap.configurations.cs = {
  {
    type = "netcoredbg",
    name = "attach - netcoredbg",
    request = "attach",
    processId = function()
      return vim.fn.input('ProcessId:')
    end,
  },
    {
    type = "netcoredbg",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/netcoreapp3.1/', 'file')
    end,
  },
}

  dap.adapters.netcoredbg = function(callback, config)
    -- if config.preLaunchTask then config.preLaunchTask() end
    local adapter = {
      type = 'executable',
      command = '/Users/charles/.local/share/nvim/dapinstall/dnetcs/netcoredbg',
      args = {'--interpreter=vscode'}
    }
    callback(adapter)
  end
end

return M
