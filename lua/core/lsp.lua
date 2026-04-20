vim.lsp.enable({
  "gopls",
  "lua_ls",
  "ts_ls",
  "tailwindcss_ls",
  "emmet_ls"
})

-- Auto command which activates callback function once lsp is attached
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    --Chek if client supports automatic completion
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      -- Adds ctrl + space keymap for automatic completion
      vim.keymap.set('i', '<C-Space>', function ()
        vim.lsp.completion.get()
      end)
      -- Binds Tab and S-Tab for autocompletion
      -- vim.keymap.set('i', '<Tab>', function()
      --   if vim.fn.pumvisible() == 1 then
      --     return '<C-n>'
      --   else
      --     return '<Tab>'
      --   end
      -- end, { expr = true })
      -- vim.keymap.set('i', '<S-Tab>', function ()
      --   if vim.fn.pumvisible() == 1 then
      --     return '<C-p>'
      --   else
      --     return '<S-Tab>'
      --   end
      -- end, { expr = true})
    end
  end,
})




vim.diagnostic.config({
    virtual_lines = {
      -- Only show virtual line diagnostic for the current cursor line
      current_line = true,
    },
    -- virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
