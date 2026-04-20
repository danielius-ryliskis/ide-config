return  {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('kanagawa').setup({
        compile = false,             -- enable compiling the colorscheme
        undercurl = true,            -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true},
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,         -- do not set background color
        dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,       -- define vim.g.terminal_color_{0,17}
        colors = {                   -- add/modify theme and palette colors
            palette = {
                sumiInk0 = "#16161D",
                sumiInk1 = "#181820",
                sumiInk2 = "#1a1a22",
                sumiInk3 = "#19191F", --background
                sumiInk4 = "#19191F", --line number background
                sumiInk5 = "#272734", --line highlight
                -- sumiInk6 = "#000000", --fg
                sumiInk6 = "#54546D", --fg
            },
            theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        -- Autocomplete window
        overrides = function(colors)
            local theme = colors.theme
            return {
                Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Left part of the background
                PmenuKind = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Right part of the background
                PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Left part of Highlighting
                PmenuKindSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Right part of Highlighting
                PmenuSbar = { bg = theme.ui.bg_m1 }, -- Scrollbar
                PmenuThumb = { bg = theme.ui.bg_p2 }, -- Scrollbar indicator
                PmenuExtra = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
                PmenuExtraSel = { fg = "NONE", bg = theme.ui.bg_p2 }
            }
        end,
        theme = "wave",              -- Load "wave" theme when 'background' option is not set
        background = {               -- map the value of 'background' option to a theme
            dark = "wave",           -- try "dragon" !
            light = "lotus"
        },
    })
    vim.cmd("colorscheme kanagawa-wave")
  end,
}
