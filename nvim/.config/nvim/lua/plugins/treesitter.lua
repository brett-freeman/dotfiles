return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            local configs = require('nvim-treesitter.configs')

            configs.setup({
                ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'python', 'javascript', 'typescript', 'html' },
                auto_install = true,
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                            ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
                        },
                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'V',  -- linewise
                            ['@class.outer'] = '<c-v>', -- blockwise
                        },
                        include_surrounding_whitespace = true,
                    },
                },
            })
        end
    },
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
}
