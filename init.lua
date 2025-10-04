-- Load lazy.nvim
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

-- Lazy.nvim setup for Tree-sitter and textobjects
require("lazy").setup({
  -- Main Treesitter plugin
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- automatically update parsers
  },

  -- Textobjects extension
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" }, -- make sure it loads after main plugin
  },
})

-- Treesitter configuration
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python" },  -- add other languages as needed
  highlight = { enable = true },
  indent = { enable = true },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,  -- jump forward to textobject
      keymaps = {
        ["af"] = "@function.outer",  -- around function
        ["if"] = "@function.inner",  -- inner function
        ["ac"] = "@class.outer",     -- around class
        ["ic"] = "@class.inner",     -- inner class
      },
    },
  },
}

vim.wo.relativenumber = true
vim.o.colorcolumn = "80"


-- remaps
-- Visual mode: paste over selection without changing the default register
vim.keymap.set('v', 'p', [["_dP]], { noremap = true, silent = true })

-- Disable arrow keys in insert, normal, and visual modes

-- Insert mode
vim.keymap.set('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Right>', '<Nop>', { noremap = true, silent = true })

-- Normal mode
vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true, silent = true })

-- Visual mode
vim.keymap.set('v', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('v', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('v', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('v', '<Right>', '<Nop>', { noremap = true, silent = true })
