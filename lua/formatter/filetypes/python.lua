local M = {}

function M.yapf()
  return {
    exe = "yapf",
    stdin = true,
  }
end

function M.autopep8()
  return {
    exe = "autopep8",
    args = { "-" },
    stdin = 1,
  }
end

function M.isort()
  return {
    exe = "isort",
    args = { "-q", "-" },
    stdin = true,
  }
end

function M.docformatter()
  return {
    exe = "docformatter",
    args = { "-" },
    stdin = true,
  }
end

function M.black()
  return {
    exe = "black",
    args = { "-q", "-" },
    stdin = true,
  }
end

function M.ruff()
  local util = require "formatter.util"

  return {
    {
      exe = "ruff",
      args = {
        "--fix",
        "-e",
        "-n",
        "--stdin-filename",
        util.escape_path(util.get_current_buffer_file_path()),
        "-",
      },
      stdin = true,
    },
  }
end

function M.pyment()
  return {
    exe = "pyment",
    args = { "-w", "-" },
    stdin = true,
  }
end

function M.pydevf()
  return {
    exe = "pydevf",
  }
end

return M
