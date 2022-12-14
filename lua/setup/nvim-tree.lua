-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup with some options
require("nvim-tree").setup { -- BEGIN_DEFAULT_OPTS
  auto_reload_on_write = true,
  create_in_closed_folder = false,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  ignore_buf_on_tab_change = {},
  sort_by = "name",
  root_dirs = {},
  prefer_startup_root = false,
  sync_root_with_cwd = false,
  reload_on_bufenter = false,
  respect_buf_cwd = false,
  on_attach = "disable",
  remove_keymaps = false,
  select_prompts = false,
  view = {
    adaptive_size = false,
    centralize_selection = false,
    width = 30,
    hide_root_folder = false,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
				-- user mappings go here
				{ key = { "l", "<CR>", "<2-LeftMouse>" }, action = "edit" },
				{ key = { "h", "<BS>" },                  action = "close_node" },
				{ key = { "H", },                     action = "dir_up" },
				{ key = { "L", "<2-RightMouse>" },    action = "cd" },
				{ key = { "K", },                     action = "first_sibling" },
				{ key = { "J", },                     action = "last_sibling" },
				{ key = "C",                              action = "collapse_all" },
				{ key = "E",                              action = "expand_all" },
				---
				{ key = "<C-v>",                          action = "vsplit" },
				{ key = "<C-s>",                          action = "split" },
				{ key = "<C-t>",                          action = "tabnew" },
				{ key = "<C-e>",                          action = "edit_in_place" },
				{ key = "<C-o>",                          action = "edit_no_picker" },
				{ key = "<Tab>",                          action = "preview" },
				---
				{ key = "a",                              action = "create" },
				{ key = "d",                              action = "remove" },
				{ key = "D",                              action = "trash" },
				{ key = "r",                              action = "rename" },
				{ key = "gr",                             action = "full_rename" },
				{ key = "x",                              action = "cut" },
				{ key = "c",                              action = "copy" },
				{ key = "y",                              action = "copy_name" },
				{ key = "Y",                              action = "copy_path" },
				{ key = "gy",                             action = "copy_absolute_path" },
				{ key = "p",                              action = "paste" },
				---
				{ key = "g?",                             action = "toggle_help" },
				{ key = "z",                              action = "toggle_dotfiles" },
				{ key = "m",                              action = "toggle_mark" },
				{ key = "i",                              action = "toggle_file_info" },
				{ key = "I",                              action = "toggle_git_ignored" },
				{ key = "U",                              action = "toggle_custom" },
				---
				{ key = ".",                              action = "run_file_command" },
				{ key = "s",                              action = "system_open" },
				---
				{ key = "R",                              action = "refresh" },
				{ key = "S",                              action = "search_node" },
				{ key = "q",                              action = "close" },
				---
				{ key = "[p",                             action = "parent_node" },
				{ key = "[e",                             action = "prev_diag_item" },
				{ key = "[c",                             action = "prev_git_item" },
				{ key = "[s",                             action = "prev_sibling" },
				{ key = "]e",                             action = "next_diag_item" },
				{ key = "]c",                             action = "next_git_item" },
				{ key = "]s",                             action = "next_sibling" },
				{ key = "f",                              action = "live_filter" },
				{ key = "F",                              action = "clear_live_filter" },
				{ key = "bmv",                            action = "bulk_move" },
      },
    },
    float = {
      enable = false,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 30,
        height = 30,
        row = 1,
        col = 1,
      },
    },
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = false,
    full_name = false,
    highlight_opened_files = "none",
    root_folder_modifier = ":~",
    indent_width = 2,
    indent_markers = {
      enable = false,
      inline_arrows = true,
      icons = {
        corner = "???",
        edge = "???",
        item = "???",
        bottom = "???",
        none = " ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ??? ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "???",
        symlink = "???",
        bookmark = "???",
        folder = {
          arrow_closed = "???",
          arrow_open = "???",
          default = "???",
          open = "???",
          empty = "???",
          empty_open = "???",
          symlink = "???",
          symlink_open = "???",
        },
        git = {
          unstaged = "???",
          staged = "???",
          unmerged = "???",
          renamed = "???",
          untracked = "???",
          deleted = "???",
          ignored = "???",
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
    symlink_destination = true,
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_root = true,
    ignore_list = {},
  },
  ignore_ft_on_setup = {},
  system_open = {
    cmd = "",
    args = {},
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = "???",
      info = "???",
      warning = "???",
      error = "???",
    },
  },
  filters = {
    dotfiles = true,
    custom = {},
    exclude = {"/bin","/build","target","/inc","/include","/lib"},
  },
  filesystem_watchers = {
    enable = true,
    debounce_delay = 50,
  },
  git = {
    enable = true,
    ignore = true,
    show_on_dirs = true,
    timeout = 400,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    expand_all = {
      max_folder_discovery = 300,
      exclude = {},
    },
    file_popup = {
      open_win_config = {
        col = 1,
        row = 1,
        relative = "cursor",
        border = "shadow",
        style = "minimal",
      },
    },
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
    remove_file = {
      close_window = true,
    },
  },
  trash = {
    cmd = "gio trash",
    require_confirm = true,
  },
  live_filter = {
    prefix = "[FILTER]: ",
    always_show_folders = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      dev = false,
      diagnostics = false,
      git = false,
      profile = false,
      watcher = false,
    },
  },
} -- END_DEFAULT_OPTS
