-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle background transparency
vim.keymap.set("n", "<leader>ut", function()
  local groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "FloatBorder",
    "SignColumn",
    "EndOfBuffer",
  }

  local hl = vim.api.nvim_get_hl(0, { name = "Normal" })
  local transparent = hl.bg == nil

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, {
      bg = transparent and "#000000" or "none",
    })
  end
end, { desc = "Toggle Transparency" })

