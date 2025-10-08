return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      picker = {
        -- your picker configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        hidden = true,
        ignored = true,
        exclude = { -- add folder names here to exclude
          "pnpm-lock.yaml",
          ".git",
          "node_modules",
          ".venv",
          ".nx",
          "nx_cache",
          "dist",
        },
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
          explorer = {
            include = {
              "node_modules",
              "dist",
              "pnpm-lock.yaml",
            },
          },
        },
      },
    },
  },
}
