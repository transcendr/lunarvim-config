lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs + 1] = { vim.o.shell, "<leader>th", "Horizontal Terminal",
  "horizontal", 10 }
lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs + 1] = { vim.o.shell, "<leader>v", "Vertical Terminal",
  "vertical",
  0.4 }
