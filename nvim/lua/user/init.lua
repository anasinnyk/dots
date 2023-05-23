return {
  lsp = {
    config = {
      yamlls = {
        filetypes = { "yaml", "json" },
        settings = {
          yaml = {
            schemaDownload = {
              enable = true,
            },
            validate = true,
            schemas = {
              ["file:///Users/anasinnyk/.config/nvim/lua/user/yamlls/crds/devops/all.json"] = "*.yaml",
              -- ["https://raw.githubusercontent.com/anasinnyk/astrovim/main/yamlls/crds/devops/all.json"] = "*.yaml",
            },
          },
        },
      },
    },
  },
  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.rust" },
    { import = "astrocommunity.motion.nvim-surround" },
    { import = "astrocommunity.debugging.nvim-bqf" },
    { import = "astrocommunity.diagnostics.trouble-nvim" },
    { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
    {
      "simrat39/rust-tools.nvim",
      keys = {
        { "<leader>lA", "<cmd>RustHoverActions<cr>",     desc = "Hover Actions" },
        { "<leader>lm", "<Cmd>RustExpandMacro<cr>",      desc = "Expand Macro" },
        { "<leader>lH", "<Cmd>RustToggleInlayHints<cr>", desc = "Toggle Inlay Hints" },
        { "<leader>le", "<Cmd>RustRunnables<cr>",        desc = "Runnables" },
        { "<leader>lD", "<cmd>RustDebuggables<Cr>",      "Debuggables" },
        { "<leader>lP", "<cmd>RustParentModule<Cr>",     "Parent Module" },
        { "<leader>lv", "<cmd>RustViewCrateGraph<Cr>",   "View Crate Graph" },
        { "<leader>lc", "<Cmd>RustOpenCargo<cr>",        desc = "Open Cargo" },
        { "<leader>lo", "<Cmd>RustOpenExternalDocs<cr>", desc = "Open External Docs" },
      },
    },
    {
      "Saecki/crates.nvim",
      keys = {
        { "<leader>lt", "<Cmd>lua require('crates').toggle()<cr>",                  desc = "Toggle Crate" },
        { "<leader>lu", "<Cmd>lua require('crates').update_crate()<cr>",            desc = "Update Crate" },
        { "<leader>lU", "<Cmd>lua require('crates').upgrade_crate()<cr>",           desc = "Upgrade Crate" },
        { "<leader>lg", "<Cmd>lua require('crates').update_all_crates()<cr>",       desc = "Update All" },
        { "<leader>lG", "<Cmd>lua require('crates').upgrade_all_crates()<cr>",      desc = "Upgrade All" },
        { "<leader>lH", "<Cmd>lua require('crates').open_homepage()<cr>",           desc = "Open HomePage" },
        { "<leader>lD", "<Cmd>lua require('crates').open_documentation()<cr>",      desc = "Open Documentation" },
        { "<leader>lR", "<Cmd>lua require('crates').open_repository()<cr>",         desc = "Open Repository" },
        { "<leader>lv", "<Cmd>lua require('crates').show_versions_popup()<cr>",     desc = "Show Versions" },
        { "<leader>lF", "<Cmd>lua require('crates').show_features_popup()<cr>",     desc = "Show Features" },
        { "<leader>lD", "<Cmd>lua require('crates').show_dependencies_popup()<cr>", desc = "Show Dependencies" },
      },
    },
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {},
      event = "User AstroFile",
      keys = {
        { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
      },
    },
    {
      "allaman/kustomize.nvim",
      requires = "nvim-lua/plenary.nvim",
      ft = "yaml",
      opts = { defaults = true },
    },
    {
      'pwntester/octo.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'kyazdani42/nvim-web-devicons',
      },
      event = "User AstroGitFile",
      config = function()
        require "octo".setup()
      end
    },
  }
}
