-- Basic Neovim configuration with Lazy.nvim package manager

-- Set leader key before lazy setup
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic vim settings
local opt = vim.opt

-- Line numbers
opt.number = true           -- Show absolute line numbers
opt.relativenumber = true   -- Show relative line numbers (useful for motions like 5j, 3k)

-- Tabs and indentation
opt.tabstop = 2       -- Number of spaces that a tab counts for
opt.shiftwidth = 2    -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true  -- Convert tabs to spaces
opt.autoindent = true -- Copy indent from current line when starting a new line

-- Line wrapping
opt.wrap = false -- Don't wrap long lines (prevents visual confusion)

-- Search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true  -- Override ignorecase if search contains uppercase letters
opt.hlsearch = false  -- Don't highlight all search matches (reduces visual clutter)
opt.incsearch = true  -- Show search matches as you type

-- Cursor line
opt.cursorline = true -- Highlight the line where the cursor is located

-- Appearance
opt.termguicolors = true -- Enable 24-bit RGB colors in the terminal
opt.background = "dark"  -- Tell vim the terminal has a dark background
opt.signcolumn = "yes"   -- Always show the sign column (prevents text shifting when signs appear)

-- Backspace behavior
opt.backspace = "indent,eol,start" -- Allow backspace over indentation, line breaks, and insertion start

-- Clipboard integration
opt.clipboard:append("unnamedplus") -- Use system clipboard for all yank/delete/put operations

-- Split window behavior
opt.splitright = true -- New vertical splits open to the right
opt.splitbelow = true  -- New horizontal splits open below

-- Word boundaries
opt.iskeyword:append("-") -- Treat hyphenated words as single words (useful for CSS classes, etc.)

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Import plugin specs from lua/plugins directory
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
