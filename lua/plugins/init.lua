-- Non-Core Plugins
lvim.plugins = {
  {
    "ggandor/leap.nvim",
    config = function()
      require('leap').add_default_mappings()
      require('leap').leap { target_windows = { vim.fn.win_getid() } }
    end,
  },
  {
    "ThePrimeagen/harpoon",
    config = function()
      require('harpoon').setup({
        menu = {
          width = vim.api.nvim_win_get_width(0) - 20,
        },
        global_settings = {
          -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
          save_on_toggle = false,
          -- saves the harpoon file upon every change. disabling is unrecommended.
          save_on_change = true,
          -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
          enter_on_sendcmd = true,
          -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
          tmux_autoclose_windows = true,
          -- filetypes that you want to prevent from adding to the harpoon list menu.
          excluded_filetypes = { "harpoon" },
          -- set marks specific to each git branch inside git repository
          mark_branch = false,
        }
      })
    end,
  },
  {
    "simnalamburt/vim-mundo"
  },
  -- Scrolling
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("plugins.neoscroll").setup()
    end,
  },
  -- {
  --   "folke/trouble.nvim",
  --   cmd = "TroubleToggle",
  -- },
}

