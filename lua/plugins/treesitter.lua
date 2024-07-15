return {
	"nvim-treesitter/nvim-treesitter",
	--event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
    	local treesitter = require("nvim-treesitter.configs")
    	treesitter.setup({
    		indent = { enable = true },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
    		autotag = {
                enable = true,
            },
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
            	"json",
                "javascript",
                "typescript",
                "python"
            }
    	})
    end,
}