return {
  {
    "antosha417/nvim-lsp-file-operations",

    -- Neo-tree must load before this plugin.
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim",
    },

    config = function()
      require("lsp-file-operations").setup()
    end,
  },
}
