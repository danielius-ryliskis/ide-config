return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
  build = ":TSUpdate",
  -- Runs after the plugin is loaded
  config = function()
    -- Initializes with default settings, but you can also specify options here
    require("nvim-treesitter").setup()

    -- Install parsers for the specified languages
    require("nvim-treesitter").install(
      { "lua", "javascript", "typescript", "html", "css" }
    )

    -- Auto command to start treesitter and set indentexpr for specific file types
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "lua", "javascript", "typescript", "typescriptreact", "javascriptreact", "html", "css" },
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
