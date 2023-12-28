-- packer bootstrap
-- installs plugins on first run, :PackerSync to update

local ensure_packer = function()
        local install_path = vim.fn.stdpath('data') ..
            '/site/pack/packer/start/packer.nvim'
        if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
                vim.fn.system({ 'git', 'clone', '--depth', '1',
                        'https://github.com/wbthomason/packer.nvim', install_path })
                vim.cmd [[packadd packer.nvim]]
                return true
        end
        return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'

        -- plugins under this

        use {
                'VonHeikemen/lsp-zero.nvim',
                branch = 'v2.x',
                requires = {
                        -- LSP Support
                        { 'neovim/nvim-lspconfig' },             -- Required
                        { 'williamboman/mason.nvim' },           -- Optional
                        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

                        -- Autocompletion
                        { 'hrsh7th/nvim-cmp' },                    -- Required
                        { 'hrsh7th/cmp-nvim-lsp' },                -- Required
                        { 'hrsh7th/cmp-path' },                    -- Optional
                        { 'hrsh7th/cmp-nvim-lsp-signature-help' }, -- Optional
                        { 'L3MON4D3/LuaSnip' },                    -- Required
                },

                config = function()

                        require('lsp-zero').preset().nvim_workspace()
                        require('lsp-zero').preset().ensure_installed { 'lua_ls', 'clangd', 'pyright' }
                        require('lspconfig').lua_ls.setup(require('lsp-zero').nvim_lua_ls())
                        require('lsp-zero').preset().set_sign_icons {
                                error = 'x',
                                warn = '!',
                                hint = '~',
                                info = '?'
                        }

                        vim.diagnostic.config {
                                virtual_text = true,
                                underline = true,
                        }

                        require('cmp').setup {
                                sources = {
                                        { name = 'path' },
                                        { name = 'nvim_lsp' },
                                        { name = 'nvim_lsp_signature_help' }
                                },
                                mapping = {
                                        ['<Tab>'] = require('lsp-zero').cmp_action().luasnip_supertab(),
                                        ['<S-Tab>'] = require('lsp-zero').cmp_action().luasnip_shift_supertab(),
                                        ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
                                        ['<C-Space>'] = require('cmp').mapping.complete(),
                                        ['<S-Up>'] = require('cmp').mapping.scroll_docs(-4),
                                        ['<S-Down>'] = require('cmp').mapping.scroll_docs(4),
                                },
                                preselect = 'item',
                                autocomplete = true,
                                completion = {
                                        completeopt = 'menu,menuone,noinsert'
                                }
                        }

                        require('lsp-zero').preset().setup()
                end }

        use { "ahmedkhalf/project.nvim", config = function()
                require("project_nvim").setup {
                        require('telescope').load_extension('projects')
                }
        end }

        use { 'lewis6991/gitsigns.nvim', config = function()
                require('gitsigns').setup()
        end }

        use { 'nvim-treesitter/nvim-treesitter', config = function()
                require('nvim-treesitter.configs').setup {
                        auto_install = true,
                        highlight = { enable = true },
                        ensure_installed = {
                                "markdown",
                                "markdown_inline",
                                "comment",
                                "jsdoc",
                                "lua",
                                "vim",
                                "vimdoc",
                                "query",
                                "meson",
                        }
                }
        end }

        use { 'kevinhwang91/nvim-bqf', ft = 'qf' }

        use { 'Darazaki/indent-o-matic', config = function()
                require('indent-o-matic').setup {}
        end }

        use { 'direnv/direnv.vim' }

        use { 'numToStr/Comment.nvim', config = function()
                require('Comment').setup()
        end }

        use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' }, config = function()
                require('telescope').setup {
                        defaults = require('telescope.themes').get_ivy({})
                }
        end }

        -- plugins over this
        if packer_bootstrap then
                require('packer').sync()
        end
end)
