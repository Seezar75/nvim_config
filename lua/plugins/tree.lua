return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
        -- enable showing modified unsaved files (noth icon and name
        highlight_modified = "all",
        highlight_diagnostics = true,
        icons = {
          glyphs = {
            modified = "+"
          }
        }
      },
      update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
      },
      modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
    }
  end,
}
