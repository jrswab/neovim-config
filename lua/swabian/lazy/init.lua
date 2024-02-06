-- [[ Configure plugins ]]
-- plugins that don't require any configuration:
return {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
    "folke/which-key.nvim",
    "folke/neodev.nvim",
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    { "nvim-lua/plenary.nvim", name = "plenary"},
    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
    --    You can use this folder to prevent any conflicts with this init.lua if you're interested in keeping
    --    up-to-date with whatever is in the kickstart repo.
    --    Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
    --
    --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
    -- { import = 'custom.plugins' },
}

