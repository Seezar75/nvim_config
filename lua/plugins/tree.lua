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
        icons = {
          glyphs = {
            modified = "+"
          }
        }
      },
      modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
      },
    }
  end,
}
