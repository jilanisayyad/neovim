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
local package_path_str = "/home/jsayyad/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/home/jsayyad/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/home/jsayyad/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/home/jsayyad/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jsayyad/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
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
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    config = { "require('luasnip-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbecue.nvim"] = {
    config = { "require('barbecue-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "require('bufferline-config')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["code_runner.nvim"] = {
    config = { "require('code-runner-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/code_runner.nvim",
    url = "https://github.com/CRAG666/code_runner.nvim"
  },
  ["copilot-status.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/copilot-status.nvim",
    url = "https://github.com/ofseed/copilot-status.nvim"
  },
  ["copilot.vim"] = {
    config = { "require('copilot-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["fidget.nvim"] = {
    config = { "require('fidget-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["img-clip.nvim"] = {
    config = { "require('img-clip-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/img-clip.nvim",
    url = "https://github.com/HakonHarnes/img-clip.nvim"
  },
  ["impatient.nvim"] = {
    config = { "require('impatient-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    after_files = { "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim/after/plugin/commands.lua" },
    config = { "require('blankline-config')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["indent-rainbowline.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/indent-rainbowline.nvim",
    url = "https://github.com/TheGLander/indent-rainbowline.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require('lspsaga-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    config = { "require('lualine-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "require('mason-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    config = { "require('mason-null-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason-nvim-dap.nvim"] = {
    config = { "require('mason-dap-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/mason-nvim-dap.nvim",
    url = "https://github.com/jay-babu/mason-nvim-dap.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    config = { "require('neodev-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21neoscroll-config\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3Ð\aB\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  neotest = {
    config = { "require('neotest-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["neotest-go"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/neotest-go",
    url = "https://github.com/nvim-neotest/neotest-go"
  },
  ["neotest-java"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/neotest-java",
    url = "https://github.com/rcasia/neotest-java"
  },
  ["neotest-python"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/neotest-python",
    url = "https://github.com/nvim-neotest/neotest-python"
  },
  ["neovim-project"] = {
    config = { "require('project-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/neovim-project",
    url = "https://github.com/coffebar/neovim-project"
  },
  ["neovim-session-manager"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "require('autopairs-config')" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    config = { "require('cmp-config')" },
    loaded = true,
    only_config = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    config = { "require('cokeline-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/willothy/nvim-cokeline"
  },
  ["nvim-colorizer.lua"] = {
    config = { "require('colorizer-config')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-cursorline"] = {
    config = { "require('cursorword-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-dap"] = {
    config = { "require('dap-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-go"] = {
    config = { "require('dap-go-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-dap-go",
    url = "https://github.com/leoluz/nvim-dap-go"
  },
  ["nvim-dap-python"] = {
    config = { "require('dap-python-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    config = { "require('dap-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "require('dap-virtual-text-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "require('nvimtree-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-autotag", "nvim-ts-rainbow" },
    config = { "require('treesitter-config')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-ufo"] = {
    config = { "require('ufo-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    config = { "require('devicons-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "require('theme-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["resession.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/resession.nvim",
    url = "https://github.com/stevearc/resession.nvim"
  },
  ["ssr.nvim"] = {
    config = { "require('ssr-config')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/ssr.nvim",
    url = "https://github.com/cshuaimin/ssr.nvim"
  },
  ["telescope-bookmarks.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/telescope-bookmarks.nvim",
    url = "https://github.com/dhruvmanila/telescope-bookmarks.nvim"
  },
  ["telescope-http.nvim"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/telescope-http.nvim",
    url = "https://github.com/barrett-ruth/telescope-http.nvim"
  },
  ["telescope-luasnip.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/telescope-luasnip.nvim",
    url = "https://github.com/benfowler/telescope-luasnip.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "require('telescope-config')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "require('toggleterm-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ultisnips = {
    config = { 'require("ultisnips-config")' },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-helm"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/vim-helm",
    url = "https://github.com/towolf/vim-helm"
  },
  ["vim-highlighturl"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/vim-highlighturl",
    url = "https://github.com/itchyny/vim-highlighturl"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/vim-snippets/.",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "require('whichkey-config')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["winbar.nvim"] = {
    config = { "require('winbar-config')" },
    loaded = true,
    path = "/home/jsayyad/.local/share/nvim/site/pack/packer/start/winbar.nvim",
    url = "https://github.com/fgheng/winbar.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Runtimepath customization
time([[Runtimepath customization]], true)
vim.o.runtimepath = vim.o.runtimepath .. ",/home/jsayyad/.local/share/nvim/site/pack/packer/start/vim-snippets/."
time([[Runtimepath customization]], false)
local module_lazy_loads = {
  ["^ssr"] = "ssr.nvim",
  ["^telescope%._extensions%.luasnip"] = "telescope-luasnip.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: mason-null-ls.nvim
time([[Config for mason-null-ls.nvim]], true)
require('mason-null-config')
time([[Config for mason-null-ls.nvim]], false)
-- Config for: nvim-ufo
time([[Config for nvim-ufo]], true)
require('ufo-config')
time([[Config for nvim-ufo]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require('cmp-config')
time([[Config for nvim-cmp]], false)
-- Config for: mason-nvim-dap.nvim
time([[Config for mason-nvim-dap.nvim]], true)
require('mason-dap-config')
time([[Config for mason-nvim-dap.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
require('devicons-config')
time([[Config for nvim-web-devicons]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
require('toggleterm-config')
time([[Config for toggleterm.nvim]], false)
-- Config for: neotest
time([[Config for neotest]], true)
require('neotest-config')
time([[Config for neotest]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
require('theme-config')
time([[Config for onedark.nvim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
require("ultisnips-config")
time([[Config for ultisnips]], false)
-- Config for: neodev.nvim
time([[Config for neodev.nvim]], true)
require('neodev-config')
time([[Config for neodev.nvim]], false)
-- Config for: copilot.vim
time([[Config for copilot.vim]], true)
require('copilot-config')
time([[Config for copilot.vim]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
require('impatient-config')
time([[Config for impatient.nvim]], false)
-- Config for: winbar.nvim
time([[Config for winbar.nvim]], true)
require('winbar-config')
time([[Config for winbar.nvim]], false)
-- Config for: code_runner.nvim
time([[Config for code_runner.nvim]], true)
require('code-runner-config')
time([[Config for code_runner.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require('nvimtree-config')
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
require('dap-virtual-text-config')
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
require('luasnip-config')
time([[Config for LuaSnip]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
require('lspsaga-config')
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-cursorline
time([[Config for nvim-cursorline]], true)
require('cursorword-config')
time([[Config for nvim-cursorline]], false)
-- Config for: barbecue.nvim
time([[Config for barbecue.nvim]], true)
require('barbecue-config')
time([[Config for barbecue.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
require('dap-config')
time([[Config for nvim-dap-ui]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
require('dap-config')
time([[Config for nvim-dap]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
require('fidget-config')
time([[Config for fidget.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
require('lualine-config')
time([[Config for lualine.nvim]], false)
-- Config for: nvim-dap-go
time([[Config for nvim-dap-go]], true)
require('dap-go-config')
time([[Config for nvim-dap-go]], false)
-- Config for: img-clip.nvim
time([[Config for img-clip.nvim]], true)
require('img-clip-config')
time([[Config for img-clip.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-dap-python
time([[Config for nvim-dap-python]], true)
require('dap-python-config')
time([[Config for nvim-dap-python]], false)
-- Config for: neovim-project
time([[Config for neovim-project]], true)
require('project-config')
time([[Config for neovim-project]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
require('mason-config')
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
require('cokeline-config')
time([[Config for nvim-cokeline]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
require('autopairs-config')

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Telescope', function(cmdargs)
          require('packer.load')({'telescope.nvim'}, { cmd = 'Telescope', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'telescope.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Telescope ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-colorizer.lua', 'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'nvim-treesitter', 'which-key.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-highlighturl', 'bufferline.nvim', 'neoscroll.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'indent-blankline.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-ts-autotag'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

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
