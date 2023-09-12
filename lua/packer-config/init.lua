return require 'packer'.startup(function()
    -- Packer manage tools configuration
    use 'wbthomason/packer.nvim'
    -- theme settings
    use 'EdenEast/nightfox.nvim'
    use 'vifm/vifm.vim'
    -- which key
    use 'linty-org/key-menu.nvim'
    -- nerdtree settings
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    -- notify box
    -- use 'rcarriga/nvim-notify'
    use {'nvim-lualine/lualine.nvim',requires={'nvim-tree/nvim-web-devicons',opt = true}}
    -- use 'romgrk/barbar.nvim'
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use { 'nvim-orgmode/orgmode', config = function() require('orgmode').setup {} end }
    use { 'lukas-reineke/headlines.nvim', config = function() require('headlines').setup() end, }
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    -- not use the the installer you can use the os software manager such as brew and apt-get to install the lsp client
    -- and the best way is the most simple way 
    -- use {"williamboman/nvim-lsp-installer", requires = { { "nvim-lua/lsp-status.nvim" } }}
    -- java language support and now question can not open the source file and use the vim config and can open the file 
    -- and more and more configuration use the extensions and not use the vim configuration 
    use 'mfussenegger/nvim-jdtls'
    use { 'rmagatti/goto-preview', config = function() require('goto-preview').setup {} end }
    use 'mhinz/vim-signify'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    -- terminal and use the <cmd>terminal is useful and can be used to open the terminal and use the Chinese language
    use 'voldikss/vim-floaterm'
    use 'jiangmiao/auto-pairs'
    -- comment
    use 'tpope/vim-commentary'
    -- Autocompletion plugin and the implementation of the plugin is based on the scripts and language server 
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    -- the lua scripts is used to implement the lua language support and the lua language server is used to implement the lua language support
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    -- code completion
    -- use 'github/copilot.vim'
    use 'editorconfig/editorconfig-vim'
    -- tags
    use 'vim-scripts/taglist.vim'

    -- html
    use 'mattn/emmet-vim'
    -- format
    use 'vim-autoformat/vim-autoformat'
    -- glow
    use {"ellisonleao/glow.nvim",config=function () require("glow").setup({
      glow_path = "/opt/homebrew/bin/glow", -- will be filled automatically with your glow bin in $PATH, if any
      install_path = "~/.local/bin", -- default path for installing glow binary
      border = "shadow", -- floating window border config
      style = "dark|light", -- filled automatically with your current editor background, you can override using glow json style
      pager = false,
      width = 80,
      height = 100,
      width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
      height_ratio = 0.7,
    }) end}

    -- Packer
    use({
      "jackMort/ChatGPT.nvim",
        config = function()
          require("chatgpt").setup(
{
    api_key_cmd = nil,
    yank_register = "+",
    edit_with_instructions = {
      diff = false,
      keymaps = {
        accept = "<C-y>",
        toggle_diff = "<C-d>",
        toggle_settings = "<C-o>",
        cycle_windows = "<Tab>",
        use_output_as_input = "<C-i>",
      },
    },
    chat = {
      welcome_message = WELCOME_MESSAGE,
      loading_text = "Loading, please wait ...",
      question_sign = "",
      answer_sign = "ﮧ",
      max_line_length = 120,
      sessions_window = {
        border = {
          style = "rounded",
          text = {
            top = " Sessions ",
          },
        },
        win_options = {
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
      },
      keymaps = {
        close = { "<C-c>" },
        yank_last = "<C-y>",
        yank_last_code = "<C-k>",
        scroll_up = "<C-u>",
        scroll_down = "<C-d>",
        new_session = "<C-n>",
        cycle_windows = "<Tab>",
        cycle_modes = "<C-f>",
        select_session = "<Space>",
        rename_session = "r",
        delete_session = "d",
        draft_message = "<C-d>",
        toggle_settings = "<C-o>",
        toggle_message_role = "<C-r>",
        toggle_system_role_open = "<C-s>",
      },
    },
    popup_layout = {
      default = "center",
      center = {
        width = "80%",
        height = "80%",
      },
      right = {
        width = "30%",
        width_settings_open = "50%",
      },
    },
    popup_window = {
      border = {
        highlight = "FloatBorder",
        style = "rounded",
        text = {
          top = " ChatGPT ",
        },
      },
      win_options = {
        wrap = true,
        linebreak = true,
        foldcolumn = "1",
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      },
      buf_options = {
        filetype = "markdown",
      },
    },
    system_window = {
      border = {
        highlight = "FloatBorder",
        style = "rounded",
        text = {
          top = " SYSTEM ",
        },
      },
      win_options = {
        wrap = true,
        linebreak = true,
        foldcolumn = "2",
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      },
    },
    popup_input = {
      prompt = "  ",
      border = {
        highlight = "FloatBorder",
        style = "rounded",
        text = {
          top_align = "center",
          top = " Prompt ",
        },
      },
      win_options = {
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      },
      submit = "<C-Enter>",
      submit_n = "<Enter>",
    },
    settings_window = {
      border = {
        style = "rounded",
        text = {
          top = " Settings ",
        },
      },
      win_options = {
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      },
    },
    openai_params = {
      model = "gpt-3.5-turbo",
      frequency_penalty = 0,
      presence_penalty = 0,
      max_tokens = 300,
      temperature = 0,
      top_p = 1,
      n = 1,
    },
    openai_edit_params = {
      model = "code-davinci-edit-001",
      temperature = 0,
      top_p = 1,
      n = 1,
    },
    actions_paths = {},
    show_quickfixes_cmd = "Trouble quickfix",
    predefined_chat_gpt_prompts = "https://raw.githubusercontent.com/f/awesome-chatgpt-prompts/main/prompts.csv",
  })
        end,
        requires = {
          "MunifTanjim/nui.nvim",
          "nvim-lua/plenary.nvim",
          "nvim-telescope/telescope.nvim"
        }
    })

end)
