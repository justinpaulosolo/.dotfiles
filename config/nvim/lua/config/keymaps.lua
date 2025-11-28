-- In your keymaps
vim.keymap.set('n', '<leader>ln', ':!~/Projects/LeetCode/scripts/new.sh<CR>', 
  { desc = 'New LeetCode problem' })

vim.keymap.set('n', '<leader>lr', ':!~/Projects/LeetCode/scripts/run.sh %<CR>', 
  { desc = 'Compile and run current file' })

-- Quick compile only
vim.keymap.set('n', '<leader>lc', ':!g++ -std=c++17 -Wall -O2 -o %:t:r %<CR>', 
  { desc = 'Compile current file' })
