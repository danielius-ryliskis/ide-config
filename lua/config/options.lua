-- This file is ran, everytime you open nvim
-- vim is a global table (similar to hash) that can be used from any script.
-- for more info :help options or :h options

vim.opt.backup = false                          -- Creates a backup file
vim.opt.clipboard = "unnamedplus"               -- Allows neovim to access the system clipboard
vim.opt.cmdheight = 1                           -- More space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- Mostly just for cmp
vim.opt.fileencoding = "utf-8"                  -- The encoding written to a file
vim.opt.hlsearch = true                         -- Highlight all matches on previous search pattern
vim.opt.mouse = "a"                             -- Allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- Pop up menu height
vim.opt.showmode = false                        -- Hides things like -- INSERT -- anymore
vim.opt.showtabline = 1                         -- Always show tabs
vim.opt.smartcase = true                        -- Smart case
vim.opt.smartindent = true                      -- Make indenting smarter again
vim.opt.splitbelow = true                       -- Force all horizontal splits to go below current window
vim.opt.splitright = true                       -- Force all vertical splits to go to the right of current window
vim.opt.termguicolors = true                    -- Enables 24-bit color support
vim.opt.undofile = true                         -- Enable persistent undo
vim.opt.updatetime = 300                        -- Faster completion (4000ms default)
vim.opt.writebackup = false                     -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- Convert tabs to spaces, for more predictable behaviour
vim.opt.shiftwidth = 2                          -- The number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- Insert 2 spaces for a tab
vim.opt.cursorline = true                       -- Highlight the current line
vim.opt.number = true                           -- Set numbered lines
vim.opt.relativenumber = true                  	-- Set relative numbered lines
vim.opt.numberwidth = 4                         -- Set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- Always show the sign column, otherwise it would shift the text each time
vim.opt.virtualedit = "block"                   -- Cursor can be where there is no actual character when using visual block mode
vim.opt.wrap = false                            -- No wrapping 
vim.opt.scrolloff = 8                           -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.sidescrolloff = 8
-- vim.opt.guifont = "monospace:h17"               -- The font used in graphical neovim applications
vim.opt.shortmess:append "c"                    -- This option helps to avoid hit-enter prompts caused by file.
vim.opt.winborder = 'rounded'                   -- Border for autocomplete
