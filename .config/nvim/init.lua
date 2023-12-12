require('lazy-setup')

-- Install Plugins
require("lazy").setup({
  { "williamboman/mason.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      require("neo-tree").setup({
        popup_border_style = "rounded",
        enable_git_status = true,
        window = {
            mappings = {
                ['l'] = function(state)
                         local node = state.tree:get_node()
                         local path = node:get_id()
                         if node.type == 'directory' then
                             if not node:is_expanded() then
                                 require('neo-tree.sources.filesystem').toggle_directory(state, node)
                             elseif node:has_children() then
                                 require('neo-tree.ui.renderer').focus_node(state, node:get_child_ids()[1])
                             end
                         end
                         if node.type == 'file' then
                             require('neo-tree.utils').open_file(state, path)
                         end
                     end
             }
        }
      })
    end,
  },
  {
      'goolord/alpha-nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      config = function ()
          require'alpha'.setup(require'alpha.themes.startify'.config)
      end
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }
})

require('alpha-setup')

vim.cmd.colorscheme "catppuccin-mocha"
vim.o.expandtab = true
vim.wo.number = true

vim.g.mapleader = " "
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader>q', ':q<Enter>')
vim.keymap.set('n', '<leader>w', ':w<Enter>')
vim.keymap.set('n', '<leader>e', ':Neotree toggle<Enter>')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
