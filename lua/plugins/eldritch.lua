return {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("eldritch").setup({
            transparent = false,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = false },
                functions = {},
                variables = {},
                sidebars = "dark",
                floats = "dark",
            },
            sidebars = { "qf", "help" },
            hide_inactive_statusline = false,
            dim_inactive = false,
            lualine_bold = true,
            on_colors = function(colors) end,
            on_highlights = function(highlights, colors)
                local dark_blue = "#0BAACF"
                highlights.Type = { fg = dark_blue }
                highlights.StorageClass = { fg = dark_blue }
                highlights.Structure = { fg = dark_blue }
            end,
        })

        vim.cmd('colorscheme eldritch')
    end
}

