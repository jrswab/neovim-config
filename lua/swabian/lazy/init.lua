return {
    "folke/which-key.nvim",
    "folke/neodev.nvim",
    "tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",
  	"shaunsingh/nord.nvim",
    { "lewis6991/gitsigns.nvim",
        opts = {
          -- See `:help gitsigns.txt`
          signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },
            },
        },
    },
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },
    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'nord',
                component_separators = '|',
                section_separators = '',
            },
        },
    },
}

