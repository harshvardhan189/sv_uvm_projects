return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  config = function()
    vim.keymap.set("n", "<leader>vt", ":TestNearest<CR>", {desc = "TestNearest"})
    vim.keymap.set("n", "<leader>vT", ":TestFile<CR>", {desc = "TestFile"})
    vim.keymap.set("n", "<leader>va", ":TestSuite<CR>", {desc = "TestSuite"})
    vim.keymap.set("n", "<leader>vl", ":TestLast<CR>", {desc = "TestLast"})
    vim.keymap.set("n", "<leader>vg", ":TestVisit<CR>", {desc = "TestVisit"})
    vim.cmd("let test#strategy = 'vimux'")
  end,
}
