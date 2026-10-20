vim.pack.add {
  { src = 'https://github.com/mikavilpas/yazi.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
}

vim.keymap.set({ 'n', 'v' }, '<leader>y', '<Cmd>Yazi<CR>', { desc = 'Open yazi at the current file' })
vim.keymap.set('n', '<leader>cw', '<Cmd>Yazi cwd<CR>', { desc = 'Open yazi in working directory' })
vim.keymap.set('n', '<C-up>', '<Cmd>Yazi toggle<CR>', { desc = 'Resume yazi session' })

require('yazi').setup {
  opts = {
    open_for_directories = true,
    keymaps = {
      show_help = "<f1>",
    },
  },
  init = function()
    -- mark netrw as loaded so it's not loaded at all.
    vim.g.loaded_netrwPlugin = 1
  end,
}
