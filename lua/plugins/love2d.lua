return {
    'S1M0N38/love2d.nvim',
    event = 'VeryLazy',
    version = '2.*',
    opts = {},
    keys = {
        { '<leader>lr', '<cmd>LoveRun<cr>', ft = 'lua', desc = 'Run LÖVE', noremap = true, silent = true },
        { '<leader>ls', '<cmd>LoveStop<cr>', ft = 'lua', desc = 'Stop LÖVE', noremap = true, silent = true },
    },
}
