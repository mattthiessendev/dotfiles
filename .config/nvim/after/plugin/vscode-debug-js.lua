require("dap").adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    args = {"C:/Users/ThiessenMatt/AppData/Local/nvim-data/site/pack/packer/start/vscode-js-debug/src/dapDebugServer.ts", "${port}"},
  }
}

require("dap").configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}

