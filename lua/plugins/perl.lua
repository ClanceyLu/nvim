return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        perlpls = {
          settings = {
            pls = {
              inc = { "$ROOT_PATH/lib" },
            },
          },
        },
      },
    },
  },
}
