local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
  vim.keymap.set('n', '<C-s>', api.node.open.horizontal, opts('Open: Vertical Split'))
  vim.keymap.set("n", "<C-e>", function()
    vim.cmd("NvimTreeFocus")
  end)
end

require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = false,
  sync_root_with_cwd = true,
  view = {
    float = {
      enable = true,
      quit_on_focus_loss = false,
      open_win_config = {
        width = 69
      }
    }
  },
  update_focused_file = {
    enable = true
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  modified = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
  git = {
    show_on_dirs = true
  },
  on_attach = on_attach
})
