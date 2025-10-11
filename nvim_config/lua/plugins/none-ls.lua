return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua.with({
          extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
        }),
        null_ls.builtins.completion.spell,
        --require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
      },
    })
    vim.keymap.set("n", "<leader>al", vim.lsp.buf.format, { desc = "code alignment" })
  end,
}
