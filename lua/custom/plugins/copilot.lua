return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.keymap.set('i', '<Tab>', '<Plug>(copilot-accept-line)', { silent = true })
  end,
}
