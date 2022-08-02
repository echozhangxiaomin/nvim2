-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>F', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'tsserver' }
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
        flags = {
            -- This will be the default in neovim 0.7+
            debounce_text_changes = 150,
        }
    }
end


require 'lspconfig'.rls.setup {
    on_attach = on_attach,
    single_file_support = true,
    cmd = { "rustup", "run", "stable", "rls" },
}
-- use the lspinstall plugin to install the lsp , and the position is ~/.local/share/nvim/lsp-server.
-- this is need to remember to add the following to your path : the command of lemminx add the path .
-- you must write more and more . then you understand the lsp .
require 'lspconfig'.lemminx.setup {
    on_attach = on_attach,
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    flags = {
        -- This will be the default in neovim 0.7+
        debounce_text_changes = 150,
    }
}

require 'lspconfig'.jdtls.setup {
    on_attach = on_attach,
    -- this -data parameter is important and solve the non-project file question
    cmd = { 'jdtls','-data','/Users/xm/.jdtls'},
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    root_dir = function(fname)
        return require 'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
    end
}


require 'lspconfig'.sumneko_lua.setup {
    on_attach = on_attach,
    single_file_support = true,
    cmd = { 'lua-language-server' },
}

-- nvim-cmp setup
require('cmp').setup {
    snippet = {
        expand = function(args)
            require 'luasnip'.lsp_expand(args.body)
        end,
    },
    mapping = require 'cmp'.mapping.preset.insert({
        ['<C-d>'] = require 'cmp'.mapping.scroll_docs(-4),
        ['<C-f>'] = require 'cmp'.mapping.scroll_docs(4),
        ['<C-Space>'] = require 'cmp'.mapping.complete(),
        ['<C-e>'] = require 'cmp'.mapping.abort(),
        ['<CR>'] = require 'cmp'.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<C-n>'] = require 'cmp'.mapping(function(fallback)
            if require 'cmp'.visible() then
                require 'cmp'.select_next_item()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<C-p>'] = require 'cmp'.mapping(function(fallback)
            if require 'cmp'.visible() then
                require 'cmp'.select_prev_item()
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'org' },
    },
}


-- -- nvim-lsp-status setup
-- require("nvim-lsp-installer").setup({
--     automatic_installation = false, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
--     ui = {
--         icons = {
--             server_installed = "✓",
--             server_pending = "➜",
--             server_uninstalled = "✗"
--         }
--     }
-- })
