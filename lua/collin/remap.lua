vim.keymap.set("n", "<C-q>", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("v", '"', 'c""<ESC>P')
vim.keymap.set("v", "(", "c()<ESC>P")
vim.keymap.set("v", "{", "c{}<ESC>P")
vim.keymap.set("v", "[", "c[]<ESC>P")
vim.keymap.set("v", "`", "c``<ESC>P")
