return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#ca1212",
        dark_bg    = "#980e0e",
        darker_bg  = "#650909",
        lighter_bg = "#2ab32a",

        fg         = "#ffffff",
        dark_fg    = "#bfbfbf",
        light_fg   = "#ffffff",
        bright_fg  = "#ffffff",
        muted      = "#fc2e54",

        red        = "#fc2e54",
        yellow     = "#b96564",
        orange     = "#fc4d6e",
        green      = "#bc6767",
        cyan       = "#9898cd",
        blue       = "#7673d4",
        purple     = "#cc95a4",
        brown      = "#972e42",

        bright_red    = "#ff4e75",
        bright_yellow = "#e78684",
        bright_green  = "#ea8887",
        bright_cyan   = "#a4a4da",
        bright_blue   = "#9b92ff",
        bright_purple = "#dba4b3",

        accent               = "#7673d4",
        cursor               = "#ffffff",
        foreground           = "#ffffff",
        background           = "#ca1212",
        selection             = "#2ab32a",
        selection_foreground = "#ffffff",
        selection_background = "#2ab32a",
      },
    },
    -- set up hot reload
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
