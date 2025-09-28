return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true,
        contrast = "medium", -- "hard", "soft" ou ""
        dim_inactive = false,
        transparent_mode = false,
        
        -- Palette overrides pour reproduire sainnhe/gruvbox-material
        palette_overrides = {
          -- Couleurs principales (Material Design inspired)
          dark0_hard = "#1d2021",     -- Noir très foncé
          dark0 = "#282828",          -- Arrière-plan principal
          dark0_soft = "#32302f",     -- Arrière-plan doux
          dark1 = "#3c3836",          -- Couleur de base
          dark2 = "#504945",          -- Gris foncé
          dark3 = "#665c54",          -- Gris moyen
          dark4 = "#7c6f64",          -- Gris clair
          
          light0_hard = "#f9f5d7",    -- Blanc très clair
          light0 = "#fbf1c7",         -- Arrière-plan clair principal
          light0_soft = "#f2e5bc",    -- Arrière-plan clair doux
          light1 = "#ebdbb2",         -- Couleur de base claire
          light2 = "#d5c4a1",         -- Gris clair
          light3 = "#bdae93",         -- Gris moyen clair
          light4 = "#a89984",         -- Gris foncé clair
          
          -- Couleurs de texte Material Design
          bright_red = "#ea6962",     -- Rouge Material
          bright_green = "#a9b665",   -- Vert Material
          bright_yellow = "#d8a657",  -- Jaune Material
          bright_blue = "#7daea3",    -- Bleu Material
          bright_purple = "#d3869b",  -- Violet Material
          bright_aqua = "#89b482",    -- Aqua Material
          bright_orange = "#e78a4e",  -- Orange Material
          
          -- Couleurs neutres Material Design
          neutral_red = "#ea6962",
          neutral_green = "#a9b665",
          neutral_yellow = "#d8a657",
          neutral_blue = "#7daea3",
          neutral_purple = "#d3869b",
          neutral_aqua = "#89b482",
          neutral_orange = "#e78a4e",
          
          -- Couleurs ternes Material Design
          faded_red = "#ea6962",
          faded_green = "#a9b665",
          faded_yellow = "#d8a657",
          faded_blue = "#7daea3",
          faded_purple = "#d3869b",
          faded_aqua = "#89b482",
          faded_orange = "#e78a4e",
          
          -- Couleurs sombres Material Design
          dark_red = "#c14a4a",
          dark_green = "#6f8352",
          dark_yellow = "#b47109",
          dark_blue = "#45707a",
          dark_purple = "#945e80",
          dark_aqua = "#4c7a5d",
          dark_orange = "#c35e0a",
          
          -- Gris Material Design
          gray = "#928374",           -- Gris principal Material
        },
        
        -- Overrides spécifiques pour certains éléments
        overrides = {
          -- Améliorer la lisibilité avec les couleurs Material
          Comment = { fg = "#928374", italic = true },
          
          -- LSP et diagnostics avec couleurs Material
          DiagnosticError = { fg = "#ea6962" },
          DiagnosticWarn = { fg = "#d8a657" },
          DiagnosticInfo = { fg = "#7daea3" },
          DiagnosticHint = { fg = "#a9b665" },
          
          -- Améliorer les highlights Treesitter
          ["@string"] = { fg = "#a9b665", italic = true },
          ["@comment"] = { fg = "#928374", italic = true },
          ["@keyword"] = { fg = "#ea6962", bold = true },
          ["@function"] = { fg = "#d8a657", bold = true },
          ["@variable"] = { fg = "#ebdbb2" },
          ["@type"] = { fg = "#d8a657" },
          ["@constant"] = { fg = "#d3869b" },
          
          -- Améliorer les couleurs de l'interface
          StatusLine = { bg = "#3c3836", fg = "#ebdbb2" },
          StatusLineNC = { bg = "#3c3836", fg = "#928374" },
          TabLine = { bg = "#3c3836", fg = "#928374" },
          TabLineFill = { bg = "#282828" },
          TabLineSel = { bg = "#504945", fg = "#ebdbb2" },
          
          -- Améliorer les sélections et recherches
          Visual = { bg = "#504945" },
          Search = { bg = "#d8a657", fg = "#282828" },
          IncSearch = { bg = "#ea6962", fg = "#282828" },
          
          -- Améliorer les couleurs des fenêtres flottantes
          NormalFloat = { bg = "#3c3836", fg = "#ebdbb2" },
          FloatBorder = { bg = "#3c3836", fg = "#928374" },
        },
      })
      
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
