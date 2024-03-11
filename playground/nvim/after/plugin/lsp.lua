local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = true,
})

local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }
})

lsp.ensure_installed({ 'lua_ls' })

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()
lsp.configure('lua_ls', {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim', 'require' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false, -- THIS IS THE IMPORTANT LINE TO ADD
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      }
    }
  }
})

-- Configure typescript language server
lsp.configure('tsserver', {
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
  end
})

-- Configure yaml language server
lsp.configure('yamlls', {
  settings = {
    yaml = {
      keyOrdering = false,
    }
  }
})

lsp.setup()
