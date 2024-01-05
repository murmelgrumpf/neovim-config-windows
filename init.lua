require("MurmelsConfigs.remap")
require("MurmelsConfigs.set")

vim.diagnostic.config({ source = true, update_in_insert = true })

vim.cmd [[source $VIMRUNTIME/mswin.vim]]
vim.cmd [[behave mswin]]
