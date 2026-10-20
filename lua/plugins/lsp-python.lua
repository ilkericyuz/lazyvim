-- Match the Python projects' pre-commit setup: isort + black, flake8, mypy (no ruff),
-- all run from the project's .venv. Pyright stays for navigation/completion only.

local function venv_bin(name)
  return function(path)
    local root = vim.fs.root(path, ".venv")
    local exe = root and (root .. "/.venv/bin/" .. name)
    return exe and vim.fn.executable(exe) == 1 and exe or name
  end
end

local function formatter(name)
  local bin = venv_bin(name)
  return {
    command = function(_, ctx)
      return bin(ctx.filename)
    end,
  }
end

local function linter(name)
  local bin = venv_bin(name)
  return {
    cmd = function()
      return bin(vim.api.nvim_buf_get_name(0))
    end,
  }
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = { enabled = false },
        pyright = {
          settings = {
            -- mypy is the type checker; pyright would report a different rule set
            python = { analysis = { typeCheckingMode = "off" } },
          },
          before_init = function(_, config)
            local python = config.root_dir and (config.root_dir .. "/.venv/bin/python")
            if python and vim.fn.executable(python) == 1 then
              -- Mutate in place: the client already holds a reference to this settings table
              config.settings.python.pythonPath = python
            end
          end,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = { python = { "isort", "black" } },
      formatters = { isort = formatter("isort"), black = formatter("black") },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = { python = { "flake8", "mypy" } },
      linters = { flake8 = linter("flake8"), mypy = linter("mypy") },
    },
  },
}
