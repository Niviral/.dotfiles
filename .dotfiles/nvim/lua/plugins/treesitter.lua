return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
                "c",
                "dockerfile",
                "lua", 
                "vim", 
                "vimdoc", 
                "query",
                "html",
                "python",
                "java",
                "json",
                "yaml",
                "powershell",
                "sql",
                "terraform",
            },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
