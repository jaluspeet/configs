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

        -- LSP auto setup and all the boogaloo
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

        -- project detection
        use { "ahmedkhalf/project.nvim", config = function()
                require("project_nvim").setup {
                        require('telescope').load_extension('projects')
                }
        end }

        -- statusline
        use { 'nvim-lualine/lualine.nvim', config = function()
                local function show_macro_recording()
                        local recording_register = vim.fn.reg_recording()
                        if recording_register == "" then return "" else return "Recording @" .. recording_register end
                end

                require('lualine').setup {
                        options = {
                                icons_enabled = false,
                                theme = 'modus-vivendi',
                                section_separators = '',
                                component_separators = ''
                        },
                        sections = { lualine_b = { { "macro-recording", fmt = show_macro_recording, }, }, }
                }
        end }

        -- better syntax highlight
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

        -- auto indentation
        use { 'Darazaki/indent-o-matic', config = function()
                require('indent-o-matic').setup {}
        end }

        -- git
        use { "sindrets/diffview.nvim" }
        use { 'lewis6991/gitsigns.nvim', config = function()
                require('gitsigns').setup()
        end }

        -- better terminal
        use { "akinsho/toggleterm.nvim", tag = '*', config = function()
                require("toggleterm").setup {
                        start_insert = true,
                        shade_terminals = false,
                        direction = 'tab',
                        open_mapping = [[<c-a>]],
                        size = function(term)
                                if term.direction == "horizontal" then
                                        return 10
                                elseif term.direction == "vertical" then
                                        return vim.o.columns * 0.5
                                end
                        end }
        end }

        -- xxd integration
        use { 'RaafatTurki/hex.nvim', config = function()
                require('hex').setup()
        end }

        -- source .envrc files
        use { 'direnv/direnv.vim' }

        -- comments (gc / gcc)
        use { 'numToStr/Comment.nvim', config = function()
                require('Comment').setup()
        end }

        -- search stuff
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
