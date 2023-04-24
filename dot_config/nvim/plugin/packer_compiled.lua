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
local package_path_str = "/Users/max/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/max/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/max/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/max/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/max/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\25catppuccin-macchiato\16colorscheme\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    config = { "\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1À\rnav_fileÇ\2\1\0\a\0\19\00026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\1B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0003\6\f\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0003\6\16\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0003\6\18\0B\2\4\0012\0\0€K\0\1\0\0\n<C-s>\0\n<C-n>\0\n<C-t>\0\n<C-h>\22toggle_quick_menu\n<C-e>\radd_file\14<leader>a\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0" },
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    after = { "null-ls.nvim" },
    config = { "\27LJ\2\nN\0\0\3\0\5\0\a6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\2\nasync\1\15timeout_ms\3N\vformat\bbuf\blsp\bvimr\1\2\a\1\t\0\r-\2\0\0009\2\0\0025\4\1\0=\1\2\4B\2\2\0016\2\3\0009\2\4\0029\2\5\0025\4\6\0'\5\a\0003\6\b\0B\2\4\1K\0\1\0\0À\0\agq\1\3\0\0\6n\6x\bset\vkeymap\bvim\vbuffer\1\0\0\20default_keymapsŽ\2\1\0\t\0\19\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0029\2\4\0003\4\5\0B\2\2\0019\2\6\0005\4\a\0B\2\2\0019\2\b\0019\2\t\0025\4\17\0005\5\15\0005\6\r\0005\a\v\0005\b\n\0=\b\f\a=\a\14\6=\6\16\5=\5\18\4B\2\2\0019\2\t\0B\2\1\0012\0\0€K\0\1\0\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\nsetup\vlua_ls\1\2\0\0\vlua_ls\21ensure_installed\0\14on_attach\14lspconfig\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nw\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\4=\4\a\3B\1\2\1K\0\1\0\fsources\1\0\0\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/max/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nœ\2\0\0\b\0\16\0\0266\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\a\0005\6\6\0=\6\b\0055\6\t\0=\6\n\5=\5\v\4B\2\2\0019\2\f\1\18\4\2\0009\2\r\2'\5\14\0009\6\15\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\0\1\2\0\0\vstring\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\bcmp\"nvim-autopairs.completion.cmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/max/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    config = { "\27LJ\2\nh\0\0\a\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\a\0005\4\5\0009\5\3\0009\5\4\5B\5\1\2=\5\6\4=\4\3\3B\1\2\1K\0\1\0\1\0\0\t<CR>\1\0\0\fconfirm\fmapping\nsetup\bcmp\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÍ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\3\0\0\blua\bvim\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0À\1\0\1\vhidden\2\15find_files`\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\5\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\0À\vsearch\1\0\0\fGrep > \ninput\afn\bvim\16grep_stringû\1\1\0\a\0\14\0#6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0003\5\a\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0003\5\v\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0004\6\0\0B\1\5\0012\0\0€K\0\1\0\14help_tags\15<leader>vh\0\15<leader>ps\14git_files\n<C-p>\0\15<leader>pf\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0" },
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n]\0\0\5\0\a\0\n6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\1K\0\1\0\19UndotreeToggle\bcmd\14<leader>u\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\nS\0\0\5\0\a\0\n6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\1K\0\1\0\bGit\bcmd\15<leader>gs\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/max/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\nN\0\0\3\0\5\0\a6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\2\nasync\1\15timeout_ms\3N\vformat\bbuf\blsp\bvimr\1\2\a\1\t\0\r-\2\0\0009\2\0\0025\4\1\0=\1\2\4B\2\2\0016\2\3\0009\2\4\0029\2\5\0025\4\6\0'\5\a\0003\6\b\0B\2\4\1K\0\1\0\0À\0\agq\1\3\0\0\6n\6x\bset\vkeymap\bvim\vbuffer\1\0\0\20default_keymapsŽ\2\1\0\t\0\19\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0029\2\4\0003\4\5\0B\2\2\0019\2\6\0005\4\a\0B\2\2\0019\2\b\0019\2\t\0025\4\17\0005\5\15\0005\6\r\0005\a\v\0005\b\n\0=\b\f\a=\a\14\6=\6\16\5=\5\18\4B\2\2\0019\2\t\0B\2\1\0012\0\0€K\0\1\0\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\nsetup\vlua_ls\1\2\0\0\vlua_ls\21ensure_installed\0\14on_attach\14lspconfig\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0À\1\0\1\vhidden\2\15find_files`\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\5\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\0À\vsearch\1\0\0\fGrep > \ninput\afn\bvim\16grep_stringû\1\1\0\a\0\14\0#6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0003\5\a\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\b\0009\5\t\0004\6\0\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\n\0003\5\v\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0004\6\0\0B\1\5\0012\0\0€K\0\1\0\14help_tags\15<leader>vh\0\15<leader>ps\14git_files\n<C-p>\0\15<leader>pf\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n]\0\0\5\0\a\0\n6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\1K\0\1\0\19UndotreeToggle\bcmd\14<leader>u\6n\bset\vkeymap\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\25catppuccin-macchiato\16colorscheme\bcmd\bvim\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nh\0\0\a\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\a\0005\4\5\0009\5\3\0009\5\4\5B\5\1\2=\5\6\4=\4\3\3B\1\2\1K\0\1\0\1\0\0\t<CR>\1\0\0\fconfirm\fmapping\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1À\rnav_fileÇ\2\1\0\a\0\19\00026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\1B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0003\6\f\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0003\6\16\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0003\6\18\0B\2\4\0012\0\0€K\0\1\0\0\n<C-s>\0\n<C-n>\0\n<C-t>\0\n<C-h>\22toggle_quick_menu\n<C-e>\radd_file\14<leader>a\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\nS\0\0\5\0\a\0\n6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\1K\0\1\0\bGit\bcmd\15<leader>gs\6n\bset\vkeymap\bvim\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÍ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\3\0\0\blua\bvim\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd null-ls.nvim ]]

-- Config for: null-ls.nvim
try_loadstring("\27LJ\2\nw\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\4=\4\a\3B\1\2\1K\0\1\0\fsources\1\0\0\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")

vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\nœ\2\0\0\b\0\16\0\0266\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\a\0005\6\6\0=\6\b\0055\6\t\0=\6\n\5=\5\v\4B\2\2\0019\2\f\1\18\4\2\0009\2\r\2'\5\14\0009\6\15\0B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\0\1\2\0\0\vstring\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\bcmp\"nvim-autopairs.completion.cmp\frequire\0", "config", "nvim-autopairs")

time([[Sequenced loading]], false)

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
