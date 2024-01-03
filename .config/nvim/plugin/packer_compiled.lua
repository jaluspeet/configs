-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jalu/.cache/nvim/packer_hererocks/2.1.1702233742/share/lua/5.1/?.lua;/home/jalu/.cache/nvim/packer_hererocks/2.1.1702233742/share/lua/5.1/?/init.lua;/home/jalu/.cache/nvim/packer_hererocks/2.1.1702233742/lib/luarocks/rocks-5.1/?.lua;/home/jalu/.cache/nvim/packer_hererocks/2.1.1702233742/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jalu/.cache/nvim/packer_hererocks/2.1.1702233742/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["direnv.vim"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/direnv.vim",
    url = "https://github.com/direnv/direnv.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-o-matic"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19indent-o-matic\frequire\0" },
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/indent-o-matic",
    url = "https://github.com/Darazaki/indent-o-matic"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\a\0'\0p6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0029\0\3\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0029\0\4\0005\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0009\0\b\0006\2\0\0'\4\1\0B\2\2\0029\2\t\2B\2\1\0A\0\0\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0029\0\n\0005\2\v\0B\0\2\0016\0\f\0009\0\r\0009\0\14\0005\2\15\0B\0\2\0016\0\0\0'\2\16\0B\0\2\0029\0\b\0005\2\20\0004\3\4\0005\4\17\0>\4\1\0035\4\18\0>\4\2\0035\4\19\0>\4\3\3=\3\21\0025\3\24\0006\4\0\0'\6\1\0B\4\2\0029\4\22\4B\4\1\0029\4\23\4B\4\1\2=\4\25\0036\4\0\0'\6\1\0B\4\2\0029\4\22\4B\4\1\0029\4\26\4B\4\1\2=\4\27\0036\4\0\0'\6\16\0B\4\2\0029\4\28\0049\4\29\0045\6\30\0B\4\2\2=\4\31\0036\4\0\0'\6\16\0B\4\2\0029\4\28\0049\4 \4B\4\1\2=\4!\0036\4\0\0'\6\16\0B\4\2\0029\4\28\0049\4\"\4)\6��B\4\2\2=\4#\0036\4\0\0'\6\16\0B\4\2\0029\4\28\0049\4\"\4)\6\4\0B\4\2\2=\4$\3=\3\28\0025\3%\0=\3&\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0029\0\b\0B\0\1\1K\0\1\0\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\r<S-Down>\v<S-Up>\16scroll_docs\14<C-Space>\rcomplete\t<CR>\1\0\1\vselect\2\fconfirm\fmapping\f<S-Tab>\27luasnip_shift_supertab\n<Tab>\1\0\0\21luasnip_supertab\15cmp_action\fsources\1\0\2\14preselect\titem\17autocomplete\2\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\1\0\1\tname\tpath\bcmp\1\0\2\14underline\2\17virtual_text\2\vconfig\15diagnostic\bvim\1\0\4\twarn\6!\nerror\6x\thint\6~\tinfo\6?\19set_sign_icons\16nvim_lua_ls\nsetup\vlua_ls\14lspconfig\1\4\0\0\vlua_ls\vclangd\fpyright\21ensure_installed\19nvim_workspace\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ensure_installed\1\n\0\0\rmarkdown\20markdown_inline\fcomment\njsdoc\blua\bvim\vvimdoc\nquery\nmeson\14highlight\1\0\1\venable\2\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\6\1\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3'\5\5\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0\rprojects\19load_extension\14telescope\nsetup\17project_nvim\frequire\3����\4\0" },
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n|\0\0\6\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\0034\5\0\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\rdefaults\1\0\0\fget_ivy\21telescope.themes\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/jalu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ensure_installed\1\n\0\0\rmarkdown\20markdown_inline\fcomment\njsdoc\blua\bvim\vvimdoc\nquery\nmeson\14highlight\1\0\1\venable\2\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\6\1\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3'\5\5\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0\rprojects\19load_extension\14telescope\nsetup\17project_nvim\frequire\3����\4\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: indent-o-matic
time([[Config for indent-o-matic]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19indent-o-matic\frequire\0", "config", "indent-o-matic")
time([[Config for indent-o-matic]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n|\0\0\6\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0006\3\0\0'\5\3\0B\3\2\0029\3\4\0034\5\0\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\rdefaults\1\0\0\fget_ivy\21telescope.themes\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\n�\a\0\0\a\0'\0p6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0029\0\3\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0029\0\4\0005\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0009\0\b\0006\2\0\0'\4\1\0B\2\2\0029\2\t\2B\2\1\0A\0\0\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0029\0\n\0005\2\v\0B\0\2\0016\0\f\0009\0\r\0009\0\14\0005\2\15\0B\0\2\0016\0\0\0'\2\16\0B\0\2\0029\0\b\0005\2\20\0004\3\4\0005\4\17\0>\4\1\0035\4\18\0>\4\2\0035\4\19\0>\4\3\3=\3\21\0025\3\24\0006\4\0\0'\6\1\0B\4\2\0029\4\22\4B\4\1\0029\4\23\4B\4\1\2=\4\25\0036\4\0\0'\6\1\0B\4\2\0029\4\22\4B\4\1\0029\4\26\4B\4\1\2=\4\27\0036\4\0\0'\6\16\0B\4\2\0029\4\28\0049\4\29\0045\6\30\0B\4\2\2=\4\31\0036\4\0\0'\6\16\0B\4\2\0029\4\28\0049\4 \4B\4\1\2=\4!\0036\4\0\0'\6\16\0B\4\2\0029\4\28\0049\4\"\4)\6��B\4\2\2=\4#\0036\4\0\0'\6\16\0B\4\2\0029\4\28\0049\4\"\4)\6\4\0B\4\2\2=\4$\3=\3\28\0025\3%\0=\3&\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0029\0\b\0B\0\1\1K\0\1\0\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\r<S-Down>\v<S-Up>\16scroll_docs\14<C-Space>\rcomplete\t<CR>\1\0\1\vselect\2\fconfirm\fmapping\f<S-Tab>\27luasnip_shift_supertab\n<Tab>\1\0\0\21luasnip_supertab\15cmp_action\fsources\1\0\2\14preselect\titem\17autocomplete\2\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\1\0\1\tname\tpath\bcmp\1\0\2\14underline\2\17virtual_text\2\vconfig\15diagnostic\bvim\1\0\4\twarn\6!\nerror\6x\thint\6~\tinfo\6?\19set_sign_icons\16nvim_lua_ls\nsetup\vlua_ls\14lspconfig\1\4\0\0\vlua_ls\vclangd\fpyright\21ensure_installed\19nvim_workspace\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end