
local nvim_lsp = require("lspconfig")
local servers_lsp = { "julials" }
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true
for _, lsp in ipairs(servers_lsp) do
    nvim_lsp[lsp].setup({
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
        on_attach = on_attach,
    })
end
--local protocol = require('vim.lsp.protocol')
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {
    "sumneko_lua",
    "tsserver"
}

local lsp_installer = require("nvim-lsp-installer")

for _, name in pairs(servers) do
    local ok, server = lsp_installer.get_server(name)
    -- Check that the server is supported in nvim-lsp-installer
    if ok then
        if not server:is_installed() then
            print("Installing " .. name)
            server:install()
        end
    end
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    if server.name == "sumneko_lua" then
        local runtime_path = vim.split(package.path, ";")
        local opts = {
            on_attach = on_attach,
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                        version = "LuaJIT",
                        -- Setup your lua path
                        path = runtime_path,
                    },
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { "vim" },
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        }
        server:setup(opts)
    else
        local opts = {
            on_attach = on_attach,
        }

        -- (optional) Customize the options passed to the server
        -- if server.name == "tsserver" then
        --     opts.root_dir = function() ... end
        -- end

        -- This setup() function is exactly the same as lspconfig's setup function.
        -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        server:setup(opts)
    end
end)
