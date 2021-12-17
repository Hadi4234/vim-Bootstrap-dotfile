--vim.g.nvim_tree_width = 25
--vim.g.nvim_tree_indent_markers = 1
--require'nvim-tree'.setup {auto_open = 1, auto_close = 1, gitignore = 1}
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
   warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }

}

-- require'nvim-tree'.setup = {
--   disable_netrw = true,
--   hijack_netrw = true,
--   open_on_setup = false,
--   ignore_ft_on_setup = {
--     "startify",
--     "dashboard",
--     "alpha",
--   },
--   update_to_buf_dir = {
--     enable = true,
--     auto_open = true,
--   },
--   auto_close = true,
--   open_on_tab = false,
--   hijack_cursor = false,
--   update_cwd = false,
--   diagnostics = {
--     enable = true,
--     icons = {
--       hint = "",
--       info = "",
--       warning = "",
--       error = "",
--     },
--   },
--   update_focused_file = {
--     enable = true,
--     update_cwd = true,
--     ignore_list = {},
--   },
--   system_open = {
--     cmd = nil,
--     args = {},
--   },
--   git = {
--     enable = true,
--     ignore = true,
--     timeout = 200,
--   },
--   view = {
--     width = 30,
--     height = 30,
--     side = "left",
--     auto_resize = true,
--     number = false,
--     relativenumber = false,
--     mappings = {
--       custom_only = false,
--       list = {},
--     },
--   },
--   filters = {
--     dotfiles = false,
--     custom = { ".git", "node_modules", ".cache" },
--   },
-- }


