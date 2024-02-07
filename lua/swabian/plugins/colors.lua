return {
    {
  	"shaunsingh/nord.nvim",
        name = "nord",
        config = function()
            require('nord')
            vim.cmd("colorscheme nord")
        end
    },
}
