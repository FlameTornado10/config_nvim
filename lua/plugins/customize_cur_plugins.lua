local opts = { noremap = true, silent = true }

return {
  {
    "lewis6991/gitsigns.nvim",
    keys = {
      { "<leader>tb", ":Gitsigns toggle_current_line_blame<CR>", mode = "n" },
      { "<leader>hd", ":Gitsigns diffthis<CR>", mode = "n" },
    },
  },
}
