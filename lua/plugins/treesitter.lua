return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "vim", "javascript", "html", "rust" },
      autoinstall = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
