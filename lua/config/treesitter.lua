local M = {}

function M.setup()
  require("nvim-treesitter.configs").setup {
    -- A list of parser names, or "all"
    ensure_installed = "all",

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    highlight = {
      -- `false` will disable the whole extension
      enable = true,
    },

    endwise = {
      enable = true,
    },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }
end

return M
