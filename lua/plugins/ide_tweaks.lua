return {
  -- 1. Auto-save Configuration
  {
    "Pocco81/auto-save.nvim",
    opts = {
      enabled = true,
      execution_message = {
        message = function() return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")) end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
      trigger_events = {"InsertLeave", "TextChanged"}, -- Save when leaving insert mode or text changes
      condition = function(buf)
        local fn = vim.fn
        local utils = require("auto-save.utils.data")

        if fn.getbufvar(buf, "&buftype") ~= "" then
          return false
        end
        return true
      end,
      write_all_buffers = false,
      debounce_delay = 135,
    },
  },

  -- 2. Tweak Neo-tree (The Sidebar) for a better IDE feel
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- Show hidden files by default
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true, -- Focus the active file in the tree
        },
      },
      window = {
        width = 30,
        position = "left",
      },
    },
  },
}
