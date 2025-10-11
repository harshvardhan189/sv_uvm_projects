return {
  "dense-analysis/ale",
  config = function()
    local g = vim.g

    -- Configure ALE linters for Verilog and SystemVerilog
    g.ale_linters = {
      verilog = { "verilator" }, -- Use Verilator for Verilog
      systemverilog = { "verible-verilog-lint" }, -- Use Verible for SystemVerilog
    }

    -- Configure ALE fixers
    g.ale_fixers = {
      verilog = { "remove_trailing_lines", "verible_format" }, -- You can add Verible format for Verilog as well
      systemverilog = { "remove_trailing_lines", "verible_format" }, -- Verible formatter for SystemVerilog
    }

    -- Enable ALE autofix and fix on save
    g.ale_autofix = 1 -- Automatically fix errors when possible
    g.ale_fix_on_save = 1 -- Automatically fix code on save

    -- Customize ALE sign symbols for errors and warnings
    g.ale_sign_error = "✗" -- Error sign
    g.ale_sign_warning = "⚠" -- Warning sign

    -- Optional: ALE diagnostic delay for real-time linting
    g.ale_lint_delay = 500 -- Lint after 500 ms of no typing
  end,
}
