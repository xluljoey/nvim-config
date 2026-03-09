return {
  -- 1. Inc-Rename (Live renaming across codebase)
  -- This is already enabled via LazyVim extras, but we can tweak it if needed.
  {
    "smjonas/inc-rename.nvim",
    opts = {
      input_buffer_type = "dressing",
    },
  },

  -- 2. Refactoring.nvim (Context menu for advanced refactors)
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
    end,
    keys = {
      -- Open the refactoring menu in Visual Mode
      {
        "<leader>rr",
        function()
          require("refactoring").select_refactor()
        end,
        mode = "v",
        desc = "Refactor Menu",
      },
      -- Extract variable
      { "<leader>rv", ":Refactor extract_var ", mode = "v", desc = "Extract Variable" },
      -- Inline variable
      { "<leader>ri", ":Refactor inline_var", mode = { "n", "v" }, desc = "Inline Variable" },
    },
  },
}
