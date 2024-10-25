
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>q\"", "ciW\"\"<Esc>P")
vim.keymap.set("n", "<leader>q\'", "ciW\'\'<Esc>P")
vim.keymap.set("n", "x", "\"_x")


vim.api.nvim_create_user_command("FixUnevenSpacesAdd", function() 
    vim.cmd[[%s:\(^\(  \)* \S\): \1:g]]
end, {})

vim.api.nvim_create_user_command("FixUnevenSpacesAddInteractive", function() 
    vim.cmd[[%s:\(^\(  \)* \S\): \1:i]]
end, {})

vim.api.nvim_create_user_command("FixUnevenSpacesRemove", function() 
    vim.cmd[[%s:\(^\(  \)* \)\(\S\):\3:g]]
end, {})

vim.api.nvim_create_user_command("FixUnevenSpacesRemoveInteractive", function() 
    vim.cmd[[%s:\(^\(  \)* \)\(\S\):\3:i]]
end, {})

vim.api.nvim_create_user_command("FixTrailingWhitespaceRemove", function() 
    vim.cmd[[%s:\s\+$::g]]
end, {})

vim.api.nvim_create_user_command("FixTrailingWhiteSpaceRemoveInteractive", function() 
    vim.cmd[[%s:\s\+$::i]]
end, {})
