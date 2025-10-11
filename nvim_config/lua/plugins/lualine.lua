return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "lexghergh/nvim-tmux-navigation" },
  config = function()
    require("lualine").setup({
      options = { theme = "dracula" },
    })
  end,
}
