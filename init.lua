require("config.lazy")
require("sollyvim")

vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Hightlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 200 }
    end,
})

vim.g.transparentbg = false

function ToggleTransparency()
    if vim.g.transparentbg == false then
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.cmd("hi StatusLine guibg=NONE")  
        vim.g.transparentbg = true
    else
        vim.cmd("hi Normal guibg=#212337") -- eldritch.nvim default background
        vim.cmd("hi StatusLine guibg=NONE")  -- eldritch.nvim default statusline
        vim.g.transparentbg = false
    end
end

vim.cmd("command! ToggleTransparency lua ToggleTransparency()")
