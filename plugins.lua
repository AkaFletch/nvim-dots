local plugins = {
  {
    "neovim/nvim-lspconfig",
    config=function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },{
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  }, {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  }, {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function (_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "NVChad/nvim-autopairs",
    enabled = false
  }
}
return plugins
