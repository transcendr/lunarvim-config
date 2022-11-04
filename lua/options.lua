-- LunarVim Configuration Options
-- ============================================================
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
lvim.transparent_window = true
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"
--

local opt = vim.opt
local g = vim.g

local options = {
  timeoutlen     = 500, --- Increase timeout for issuing keymappings
  relativenumber = true, --- Sets relative numbers
  clipboard      = "unnamed,unnamedplus", --- Copy-paste between vim and everything else
  cmdheight      = 2, --- Give more space for displaying messages
  completeopt    = "menu,menuone,noselect", --- Better autocompletion
  cursorline     = true, --- Highlight of current line
  emoji          = false, --- Fix emoji display
  laststatus     = 3, --- Have a global statusline at the bottom instead of one for each window
  pumheight      = 10, --- Max num of items in completion menu
  colorcolumn    = "99999", --- fixes indentline for now
  scrolloff      = 8, --- Always keep space when scrolling to bottom/top edge
  sidescrolloff  = 8,
  showtabline    = 2, --- Always show tabs
  signcolumn     = "yes:2", --- Add extra sign column next to line number
  smarttab       = true, --- Makes tabbing smarter will realize you have 2 vs 4
  termguicolors  = true, --- Correct terminal colors
  undofile       = true, --- Sets undo to file
  undodir        = vim.fn.stdpath "cache" .. "/undo", --- Sets undo directory so that undo history persists across vim sessions
  updatetime     = 100, --- Faster completion, affects CursorHold time before floating window apears
  viminfo        = "'1000", --- Increase the size of file history
  wildignore     = "*node_modules/**", --- Don't search inside Node.js modules (works for gutentag)
  titlestring    = "%<%F%=%l/%L - nvim", --- what the title of the window will be set to
  -- Neovim defaults
  autoindent     = true, --- Good auto indent
  backspace      = "indent,eol,start", --- Making sure backspace works
  backup         = false, --- Recommended by coc
  conceallevel   = 0, --- Show `` in markdown files
  encoding       = "utf-8", --- The encoding displayed
  errorbells     = false, --- Disables sound effect for errors
  fileencoding   = "utf-8", --- The encoding written to file
  incsearch      = true, --- Start searching before pressing enter
  showmode       = false, --- Don't show things like -- INSERT -- anymore
}

local globals = {
  fillchars = "fold:\\ ", --- Fill chars needed for folds
  mapleader = ' ', --- Map leader key to SPC
}

opt.shortmess:append('c');
opt.formatoptions:remove('c');
opt.formatoptions:remove('r');
opt.formatoptions:remove('o');

for k, v in pairs(options) do
  opt[k] = v
end

for k, v in pairs(globals) do
  g[k] = v
end
