return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local tsConfig = require("nvim-treesitter.configs")
    tsConfig.setup({
      ensure_installed = { "c", "lua", "vim", "javascript", "html", "rust" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
