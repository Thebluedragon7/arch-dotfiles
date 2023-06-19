#!/usr/bin/env lua


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.cmd("syntax enable")

vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true })
vim.api.nvim_set_keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true })
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap('n', '<F3>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

require('packer').startup(function()
    use 'dart-lang/dart-vim-plugin'
    use 'thosakwe/vim-flutter'
    use 'natebosch/vim-lsc'
    use 'natebosch/vim-lsc-dart'

    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        'williamboman/mason.nvim',
        config = function()
            require("mason").setup {
                ui = {
                    icons = {
                        package_installed = "",
                        package_pending = "",
                        package_uninstalled = "",
                    },
                }
            }
        end
    }
    use 'williamboman/mason-lspconfig.nvim'

    use 'neovim/nvim-lspconfig'

    use {
        'simrat39/rust-tools.nvim',
        config = function ()
            local rt = require("rust-tools")
            rt.setup({
                server = {
                    on_attach = function(_, bufnr)
                        -- Hover actions
                        vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                        -- Code action groups
                        vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                    end,
                },
            })
        end
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require("nvim-tree").setup {
                sort_by = "case_sensitive",
                view = {
                    width = 30,
                },
                auto_close = true,
                update_cwd = true,
                diagnostics = {
                    enable = true,
                },
                filters = {
                    dotfiles = true,
                },
            }
        end
    }
end)
