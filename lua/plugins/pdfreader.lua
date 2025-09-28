return {
    'r-pletnev/pdfreader.nvim',
    lazy = false,
    dependencies = {
        'folke/snacks.nvim', -- image rendering
        'nvim-telescope/telescope.nvim', -- pickers
    },
    config = function()
        require('pdfreader').setup()
    end,

    vim.keymap.set('n', '<leader>ps', '<cmd>PDFReader setViewMode standard<CR>', { desc = 'PDFReader Standard', noremap = true, silent = true }),
    vim.keymap.set('n', '<leader>pd', '<cmd>PDFReader setViewMode dark<CR>', { desc = 'PDFReader Dark', noremap = true, silent = true }),
    vim.keymap.set('n', '<leader>pt', '<cmd>PDFReader setViewMode text<CR>', { desc = 'PDFReader Text', noremap = true, silent = true }),

    -- vim.keymap.set('n', '<leader>pp', '<cmd>PDFReader setPage<CR>', { desc = 'PDFReader Page', noremap = true, silent = true }),

    vim.keymap.set('n', '<leader>pba', '<cmd>PDFReader addBookmark<CR>', { desc = 'PDFReader Add Bookmarks', noremap = true, silent = true }),
    vim.keymap.set('n', '<leader>pbs', '<cmd>PDFReader showBookmark<CR>', { desc = 'PDFReader showBookmark', noremap = true, silent = true }),
    vim.keymap.set('n', '<leader>pbr', '<cmd>PDFReader showRecentBooks<CR>', { desc = 'PDFReader showRecentBookmark', noremap = true, silent = true }),
    --
    vim.keymap.set('n', '<leader>pas', '<cmd>PDFReader setAutosave on<CR>', { desc = 'PDFReader Auto Save On', noremap = true, silent = true }),
    vim.keymap.set('n', '<leader>pao', '<cmd>PDFReader setAutosave off<CR>', { desc = 'PDFReader Auto Save Off', noremap = true, silent = true }),

    vim.keymap.set('n', '<leader>pss', '<cmd>PDFReader saveState<CR>', { desc = 'PDFReader Save State', noremap = true, silent = true }),
    vim.keymap.set('n', '<leader>psc', '<cmd>PDFReader clearState<CR>', { desc = 'PDFReader Clear State', noremap = true, silent = true }),

    vim.keymap.set('n', '<leader>pr', '<cmd>PDFReader redrawPage<CR>', { desc = 'PDFReader Redraw Page', noremap = true, silent = true }),
}
