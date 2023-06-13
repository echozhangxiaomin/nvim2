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
local package_path_str = "/Users/xm/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/xm/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/xm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/xm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/xm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["ChatGPT.nvim"] = {
    config = { "\27LJ\2\nÛ\16\0\0\a\0008\0I6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0006\4\t\0=\4\n\0035\4\14\0005\5\v\0005\6\f\0=\6\r\5=\5\15\0045\5\16\0=\5\17\4=\4\18\0035\4\20\0005\5\19\0=\5\21\4=\4\6\3=\3\22\0025\3\23\0005\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\28\0025\3\31\0005\4\29\0005\5\30\0=\5\r\4=\4\15\0035\4 \0=\4\17\0035\4!\0=\4\"\3=\3#\0025\3&\0005\4$\0005\5%\0=\5\r\4=\4\15\0035\4'\0=\4\17\3=\3(\0025\3)\0005\4*\0005\5+\0=\5\r\4=\4\15\0035\4,\0=\4\17\3=\3-\0025\0030\0005\4.\0005\5/\0=\5\r\4=\4\15\0035\0041\0=\4\17\3=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0024\3\0\0=\0037\2B\0\2\1K\0\1\0\18actions_paths\23openai_edit_params\1\0\4\16temperature\3\0\nmodel\26code-davinci-edit-001\6n\3\1\ntop_p\3\1\18openai_params\1\0\a\6n\3\1\nmodel\18gpt-3.5-turbo\ntop_p\3\1\16temperature\3\0\15max_tokens\3¬\2\21presence_penalty\3\0\22frequency_penalty\3\0\20settings_window\1\0\1\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\1\0\0\1\0\1\btop\15 Settings \1\0\1\nstyle\frounded\16popup_input\1\0\1\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\1\0\2\14top_align\vcenter\btop\r Prompt \1\0\2\nstyle\frounded\14highlight\16FloatBorder\1\0\3\vsubmit\14<C-Enter>\vprompt\n ï†’ \rsubmit_n\f<Enter>\18system_window\1\0\4\15foldcolumn\0062\14linebreak\2\twrap\2\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\1\0\0\1\0\1\btop\r SYSTEM \1\0\2\nstyle\frounded\14highlight\16FloatBorder\17popup_window\16buf_options\1\0\1\rfiletype\rmarkdown\1\0\4\15foldcolumn\0061\14linebreak\2\twrap\2\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\1\0\0\1\0\1\btop\14 ChatGPT \1\0\2\nstyle\frounded\14highlight\16FloatBorder\17popup_layout\nright\1\0\2\nwidth\b30%\24width_settings_open\b50%\vcenter\1\0\2\nwidth\b80%\vheight\b80%\1\0\1\fdefault\vcenter\tchat\nclose\1\0\14\19select_session\f<Space>\19rename_session\6r\18cycle_windows\n<Tab>\20toggle_settings\n<C-o>\16cycle_modes\n<C-f>\18draft_message\n<C-d>\16new_session\n<C-n>\16scroll_down\n<C-d>\24toggle_message_role\n<C-r>\14scroll_up\n<C-u>\28toggle_system_role_open\n<C-s>\19yank_last_code\n<C-k>\14yank_last\n<C-y>\19delete_session\6d\1\2\0\0\n<C-c>\20sessions_window\16win_options\1\0\1\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\vborder\1\0\0\ttext\1\0\1\btop\15 Sessions \1\0\1\nstyle\frounded\20welcome_message\20WELCOME_MESSAGE\1\0\4\16answer_sign\bï®§\18question_sign\bï€‡\17loading_text\29Loading, please wait ...\20max_line_length\3x\27edit_with_instructions\fkeymaps\1\0\5\24use_output_as_input\n<C-i>\18cycle_windows\n<Tab>\20toggle_settings\n<C-o>\vaccept\n<C-y>\16toggle_diff\n<C-d>\1\0\1\tdiff\1\1\0\3\18yank_register\6+ predefined_chat_gpt_promptsQhttps://raw.githubusercontent.com/f/awesome-chatgpt-prompts/main/prompts.csv\24show_quickfixes_cmd\21Trouble quickfix\nsetup\fchatgpt\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/ChatGPT.nvim",
    url = "https://github.com/jackMort/ChatGPT.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\nÚ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\t\16width_ratio\4æÌ™³\6æÌ™ÿ\3\vheight\3d\nwidth\3P\npager\1\nstyle\15dark|light\vborder\vshadow\17install_path\17~/.local/bin\14glow_path\27/opt/homebrew/bin/glow\17height_ratio\4æÌ™³\6æÌ™ÿ\3\nsetup\tglow\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  ["headlines.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14headlines\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["key-menu.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/key-menu.nvim",
    url = "https://github.com/linty-org/key-menu.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  orgmode = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\forgmode\frequire\0" },
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["taglist.vim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/taglist.vim",
    url = "https://github.com/vim-scripts/taglist.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-autoformat",
    url = "https://github.com/vim-autoformat/vim-autoformat"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/Users/xm/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: glow.nvim
time([[Config for glow.nvim]], true)
try_loadstring("\27LJ\2\nÚ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\t\16width_ratio\4æÌ™³\6æÌ™ÿ\3\vheight\3d\nwidth\3P\npager\1\nstyle\15dark|light\vborder\vshadow\17install_path\17~/.local/bin\14glow_path\27/opt/homebrew/bin/glow\17height_ratio\4æÌ™³\6æÌ™ÿ\3\nsetup\tglow\frequire\0", "config", "glow.nvim")
time([[Config for glow.nvim]], false)
-- Config for: goto-preview
time([[Config for goto-preview]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0", "config", "goto-preview")
time([[Config for goto-preview]], false)
-- Config for: orgmode
time([[Config for orgmode]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\forgmode\frequire\0", "config", "orgmode")
time([[Config for orgmode]], false)
-- Config for: headlines.nvim
time([[Config for headlines.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14headlines\frequire\0", "config", "headlines.nvim")
time([[Config for headlines.nvim]], false)
-- Config for: ChatGPT.nvim
time([[Config for ChatGPT.nvim]], true)
try_loadstring("\27LJ\2\nÛ\16\0\0\a\0008\0I6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0006\4\t\0=\4\n\0035\4\14\0005\5\v\0005\6\f\0=\6\r\5=\5\15\0045\5\16\0=\5\17\4=\4\18\0035\4\20\0005\5\19\0=\5\21\4=\4\6\3=\3\22\0025\3\23\0005\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\28\0025\3\31\0005\4\29\0005\5\30\0=\5\r\4=\4\15\0035\4 \0=\4\17\0035\4!\0=\4\"\3=\3#\0025\3&\0005\4$\0005\5%\0=\5\r\4=\4\15\0035\4'\0=\4\17\3=\3(\0025\3)\0005\4*\0005\5+\0=\5\r\4=\4\15\0035\4,\0=\4\17\3=\3-\0025\0030\0005\4.\0005\5/\0=\5\r\4=\4\15\0035\0041\0=\4\17\3=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0024\3\0\0=\0037\2B\0\2\1K\0\1\0\18actions_paths\23openai_edit_params\1\0\4\16temperature\3\0\nmodel\26code-davinci-edit-001\6n\3\1\ntop_p\3\1\18openai_params\1\0\a\6n\3\1\nmodel\18gpt-3.5-turbo\ntop_p\3\1\16temperature\3\0\15max_tokens\3¬\2\21presence_penalty\3\0\22frequency_penalty\3\0\20settings_window\1\0\1\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\1\0\0\1\0\1\btop\15 Settings \1\0\1\nstyle\frounded\16popup_input\1\0\1\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\1\0\2\14top_align\vcenter\btop\r Prompt \1\0\2\nstyle\frounded\14highlight\16FloatBorder\1\0\3\vsubmit\14<C-Enter>\vprompt\n ï†’ \rsubmit_n\f<Enter>\18system_window\1\0\4\15foldcolumn\0062\14linebreak\2\twrap\2\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\1\0\0\1\0\1\btop\r SYSTEM \1\0\2\nstyle\frounded\14highlight\16FloatBorder\17popup_window\16buf_options\1\0\1\rfiletype\rmarkdown\1\0\4\15foldcolumn\0061\14linebreak\2\twrap\2\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\1\0\0\1\0\1\btop\14 ChatGPT \1\0\2\nstyle\frounded\14highlight\16FloatBorder\17popup_layout\nright\1\0\2\nwidth\b30%\24width_settings_open\b50%\vcenter\1\0\2\nwidth\b80%\vheight\b80%\1\0\1\fdefault\vcenter\tchat\nclose\1\0\14\19select_session\f<Space>\19rename_session\6r\18cycle_windows\n<Tab>\20toggle_settings\n<C-o>\16cycle_modes\n<C-f>\18draft_message\n<C-d>\16new_session\n<C-n>\16scroll_down\n<C-d>\24toggle_message_role\n<C-r>\14scroll_up\n<C-u>\28toggle_system_role_open\n<C-s>\19yank_last_code\n<C-k>\14yank_last\n<C-y>\19delete_session\6d\1\2\0\0\n<C-c>\20sessions_window\16win_options\1\0\1\17winhighlight*Normal:Normal,FloatBorder:FloatBorder\vborder\1\0\0\ttext\1\0\1\btop\15 Sessions \1\0\1\nstyle\frounded\20welcome_message\20WELCOME_MESSAGE\1\0\4\16answer_sign\bï®§\18question_sign\bï€‡\17loading_text\29Loading, please wait ...\20max_line_length\3x\27edit_with_instructions\fkeymaps\1\0\5\24use_output_as_input\n<C-i>\18cycle_windows\n<Tab>\20toggle_settings\n<C-o>\vaccept\n<C-y>\16toggle_diff\n<C-d>\1\0\1\tdiff\1\1\0\3\18yank_register\6+ predefined_chat_gpt_promptsQhttps://raw.githubusercontent.com/f/awesome-chatgpt-prompts/main/prompts.csv\24show_quickfixes_cmd\21Trouble quickfix\nsetup\fchatgpt\frequire\0", "config", "ChatGPT.nvim")
time([[Config for ChatGPT.nvim]], false)

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
