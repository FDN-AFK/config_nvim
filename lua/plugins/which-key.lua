return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },

    config = function()
        require('which-key').setup {
            preset = 'helix',
            delay = 200,
            filter = function(mapping)
                -- example to exclude mappings without a description
                return mapping.desc -- and mapping.desc ~= ""
                -- return true
            end,
            plugins = {
                marks = true, -- shows a list of your marks on ' and `
                registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
                -- the presets plugin, adds help for a bunch of default keybindings in Neovim
                -- No actual key bindings are created
                spelling = {
                    enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
                    suggestions = 20, -- how many suggestions should be shown in the list?
                },
                presets = {
                    operators = true, -- adds help for operators like d, y, ...
                    motions = true, -- adds help for motions
                    text_objects = true, -- help for text objects triggered after entering an operator
                    windows = true, -- default bindings on <c-w>
                    nav = true, -- misc bindings to work with windows
                    z = true, -- bindings for folds, spelling and others prefixed with z
                    g = true, -- bindings for prefixed with g
                },
            },
            win = {
                -- don't allow the popup to overlap with the cursor
                no_overlap = true,
                -- width = 1,
                -- height = { min = 4, max = 25 },
                -- col = 0,
                -- row = math.huge,
                -- border = "none",
                padding = { 1, 1 }, -- extra window padding [top/bottom, right/left]
                title = true,
                title_pos = 'center',
                zindex = 1000,
                -- Additional vim.wo and vim.bo options
                bo = {},
                wo = {
                    -- winblend = 10, -- value between 0-100 0 for fully opaque and 100 for fully transparent
                },
            },
            layout = {
                width = { min = 20 }, -- min and max width of the columns
                spacing = 3, -- spacing between columns
            },
            -- keys = {
            --     scroll_down = '<C-d>', -- binding to scroll down inside the popup
            --     scroll_up = '<C-u>', -- binding to scroll up inside the popup
            -- },
            --- Mappings are sorted using configured sorters and natural sort of the keys
            --- Available sorters:
            --- * local: buffer-local mappings first
            --- * order: order of the items (Used by plugins like marks / registers)
            --- * group: groups last
            --- * alphanum: alpha-numerical first
            --- * mod: special modifier keys last
            --- * manual: the order the mappings were added
            --- * case: lower-case first
            --- NOTE: HERE ARE THE SORTING LIST MOD
            sort = { 'desc' }, -- { 'local', 'order', 'group', 'alphanum', 'mod' },
            icons = {
                breadcrumb = '»', -- symbol used in the command line area that shows your active key combo
                separator = '➜', -- symbol used between a key and it's label
                group = '+', -- symbol prepended to a group
                ellipsis = '…',
                -- set to false to disable all mapping icons,
                -- both those explicitly added in a mapping
                -- and those from rules
                mappings = true,
                --- See `lua/which-key/icons.lua` for more details
                --- Set to `false` to disable keymap icons from rules
                rules = {},
                -- use the highlights from mini.icons
                -- When `false`, it will use `WhichKeyIcon` instead
                colors = true,
                -- used by key format
                keys = {
                    Up = ' ',
                    Down = ' ',
                    Left = ' ',
                    Right = ' ',
                    C = '󰘴 ',
                    M = '󰘵 ',
                    D = '󰘳 ',
                    S = '󰘶 ',
                    CR = '󰌑 ',
                    Esc = '󱊷 ',
                    ScrollWheelDown = '󱕐 ',
                    ScrollWheelUp = '󱕑 ',
                    -- scroll_up = ' ',
                    -- scroll_down = ' ',
                    NL = '󰌑 ',
                    BS = '󰁮',
                    Space = '󱁐 ',
                    Tab = '󰌒 ',
                    F1 = '󱊫',
                    F2 = '󱊬',
                    F3 = '󱊭',
                    F4 = '󱊮',
                    F5 = '󱊯',
                    F6 = '󱊰',
                    F7 = '󱊱',
                    F8 = '󱊲',
                    F9 = '󱊳',
                    F10 = '󱊴',
                    F11 = '󱊵',
                    F12 = '󱊶',
                },
                show_help = true, -- show a help message in the command line for using WhichKey
                show_keys = true, -- show the currently pressed key and its label as a message in the command line
                -- disable WhichKey for certain buf types and file types.
                disable = {
                    ft = {},
                    bt = {},
                },
                debug = false, -- enable wk.log in the current directory
            },
        }

        local wk = require 'which-key'
        -- Terminal Split Window

        wk.add {
            '<leader>ts',
            '<cmd>ToggleTerm<cr>',
            desc = '[T]erminal [T]oggle',
            icon = { icon = ' ', color = 'orange' },
            mode = 'n',
            noremap = true,
            silent = true,
        }

        wk.add {
            '<leader>tf',
            '<cmd>ToggleTerm size=40 dir=~/Documents direction=float<cr>',
            desc = '[T]erminal [F]loatting',
            icon = { icon = ' ', color = 'orange' },
            mode = 'n',
            noremap = true,
            silent = true,
        }

        wk.add {
            '<leader>th',
            '<cmd>ToggleTerm size=20 dir=~/Documents direction=horizontal<CR>',
            desc = '[T]erminal [H]oritzontally',
            icon = { icon = ' ', color = 'orange' },
            mode = 'n',
            noremap = true,
            silent = true,
        }

        wk.add {
            '<leader>tv',
            '<cmd>ToggleTerm size=40 dir=~/Documents direction=vertical<CR>',
            desc = '[T]erminal [V]ertically',
            icon = { icon = ' ', color = 'orange' },
            mode = 'n',
            noremap = true,
            silent = true,
        }

        wk.add {
            '<leader>tf',
            '<cmd>ToggleTerm size=40 dir=~/Documents direction=float<cr>',
            desc = '[T]erminal [F]loatting',
            icon = { icon = ' ', color = 'orange' },
            mode = 'n',
            noremap = true,
            silent = true,
        }

        wk.add {
            '<leader>?',
            function()
                require('which-key').show { global = false }
            end,
            desc = 'Buffer Local Keymaps (which-key)',
            icon = { icon = '󰮦 ', color = 'Red' },
            mode = 'n',
            noremap = true,
            silent = true,
        }
    end,
}
