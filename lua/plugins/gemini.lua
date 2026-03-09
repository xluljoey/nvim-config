return {
  -- 1. Install the Gemini CLI Neovim plugin
  {
    "marcinjahn/gemini-cli.nvim",
    dependencies = { "folke/snacks.nvim" },
    opts = {},
    keys = {
      { "<leader>at", "<cmd>Gemini toggle<cr>", desc = "Toggle Gemini CLI Sidebar" },
      { "<leader>af", "<cmd>Gemini add_file<cr>", desc = "Add Current File to Gemini Context" },
    },
  },

  -- 2. Add a custom keybinding for "Instant Refactor"
  -- Usage: Highlight code in Visual Mode, then press Ctrl+G
  {
    "folke/which-key.nvim",
    opts = function()
      vim.keymap.set("v", "<C-g>", ":!gemini -p 'refactor this code to be more efficient and idiomatic'<CR>", { desc = "Gemini Refactor Selection" })
    end,
  },
}
