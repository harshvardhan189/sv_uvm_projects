return {
  -- "tpope/vim-sleuth", -- detect tabstop and shiftwidth automatically

  "rebelot/kanagawa.nvim",

  "catppuccin/nvim",

  -- "mfussenegger/nvim-lint",

  "rafamadriz/friendly-snippets",

  "vhda/verilog_systemverilog.vim",

  "numtostr/comment.nvim",

  "smolck/command-completion.nvim",

  "ThePrimeagen/harpoon",

  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add in Harpoon List" })
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-.>", function()
      ui.nav_next()
    end)
    vim.keymap.set("n", "<C-j>", function()
      ui.nav_file(1)
    end)
    vim.keymap.set("n", "<C-k>", function()
      ui.nav_file(2)
    end)
    -- vim.keymap.set("n", "<C-l>", function()
    --  ui.nav_file(3)
    -- end)
    -- vim.keymap.set("n", "<C-;>", function()
    --  ui.nav_file(4)
    -- end)
    vim.cmd("autocmd BufNewFile,BufRead *.sv,*.v setfiletype verilog_systemverilog")

    -- NOTE: This is for queick fix list
    vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>")
    vim.keymap.set("n", "<C-p>", "<cmd>cprevious<CR>")
  end,
}
