require 'nvim-treesitter.install'.compilers = { "cl" }

vim.filetype.add({extensions = {gradle = "groovy"}})

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" ( "c", "vim", "vimdoc", "query"  should always be installed)
    ensure_installed = { "c", "cpp", "cmake", "python", "lua", "vim", "vimdoc", "ini", "json", "html", "css", "groovy", "xml", "comment" },

    --ignore_install = { "help" },

    highlight = {
        enable = true,
    },

    -- Experimental feature! Indent using treesitter when using "=" operator
    indent = {
        enable = true
    },


    --treesitter-refactor
    refactor = {
        highlight_definitions = {
            enable = true,
            -- Set to false if you have an `updatetime` of ~100.
            clear_on_cursor_move = false,
        },

        highlight_current_scope = { enable = false }, -- ANNOYING

        smart_rename = {
            enable = true,
            -- Assign keymaps to false to disable them, e.g. `smart_rename = false`.
            keymaps = {
                smart_rename = "grr",
            },
        },

        -- I think it's kind of useless really. Tags for finding definition + search for usages is better than this
        navigation = {
            enable = false,
            -- Assign keymaps to false to disable them, e.g. `goto_definition = false`.
            keymaps = {
                goto_definition = "gnd",
                list_definitions = "gnD",
                list_definitions_toc = "gO",
                goto_next_usage = "<a-*>",
                goto_previous_usage = "<a-#>",
            },
        },

    },
}

