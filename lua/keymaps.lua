local keymap = vim.keymap.set
local silent = { silent = true }
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")

-- Standard Vim Keymaps Format
-- ============================================================
-- Go to beginning of the current line
keymap("n", "H", "^", silent) -- normal mode
keymap("v", "H", "^", silent) -- visual mode
keymap("o", "H", "^", silent) -- operator pending mode
keymap("o", "H", "^", silent) -- operator pending mode
-- Go to end of the current line
keymap("n", "L", "$", silent) -- normal mode
keymap("v", "L", "$", silent) -- visual mode
keymap("o", "L", "$", silent) -- operator pending mode
keymap("o", "L", "$", silent) -- operator pending mode

-- LunarVim Style Keymaps Format
-- ============================================================
-- keymappings [view all the defaults by pressing <leader>Lk]

lvim.leader = "space"

---- MODE: Insert
---- ============================================================
lvim.keys.insert_mode["jj"]    = "<ESC>"
lvim.keys.insert_mode["<C-j>"] = "<ESC><C-d>i"
lvim.keys.insert_mode["<C-k>"] = "<ESC><C-u>i"

---- MODE: Normal
---- ============================================================
lvim.keys.normal_mode[";"]          = ":<right><left>"
lvim.keys.normal_mode["<C-s>"]      = ":w<cr>"
lvim.keys.normal_mode["<Tab>"]      = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"]    = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["R"]          = ":%s//g<left><left>"
lvim.keys.normal_mode["zz"]         = ":w<cr>"
lvim.keys.normal_mode["qq"]         = ":q<CR>"
lvim.keys.normal_mode["<leader>qq"] = ":qa<cr>"
lvim.keys.normal_mode["<C-m>"]      = "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>"
lvim.keys.normal_mode["<C-j>"]      = "<cmd>lua require('harpoon.ui').nav_file(1) <CR>"
lvim.keys.normal_mode["<C-k>"]      = "<cmd>lua require('harpoon.ui').nav_file(2) <CR>"
lvim.keys.normal_mode["<C-l>"]      = "<cmd>lua require('harpoon.ui').nav_file(3) <CR>"
lvim.keys.normal_mode["<C-;>"]      = "<cmd>lua require('harpoon.ui').nav_file(4) <CR>"
lvim.keys.normal_mode["ma"]         = "<cmd>lua require('harpoon.mark').add_file()<CR>"
lvim.keys.normal_mode["<leader>pw"] = "<cmd>lua require('telescope.builtin').grep_string({ initial_mode = 'normal' }) <CR>"

---- MODE: Visual
---- ============================================================
lvim.keys.visual_mode["<C-h>"] = "<C-w>h"
lvim.keys.visual_mode["<C-l>"] = "<C-w>l"
lvim.keys.visual_mode["<C-j>"] = "<C-w>j"
lvim.keys.visual_mode["<C-k>"] = "<C-w>k"

---- MODE: Terminal
---- ============================================================
lvim.keys.term_mode["<C-l>"] = "clear<CR>"
lvim.keys.term_mode["<C-v>"] = "<C-\\><C-N>pi"
lvim.keys.term_mode["<leader>tn"] = "tmux<cr>"
lvim.keys.term_mode["<leader>ta"] = "tmux at<cr>"
lvim.keys.term_mode["<leader>tl"] = "tmux ls<cr>"


-- Plugin Keymaps: Telescope
-- ============================================================
-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    [":q<cr>"] = actions.close,
    ["qq"]     = actions.close,
    ["<C-j>"]  = actions.move_selection_next,
    ["<C-k>"]  = actions.move_selection_previous,
  },
}
