return {
    "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    -- require("fzf-lua").setup({})

      local keymap = vim.keymap
      keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", {desc = "Fuzzy find files"})
      keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<CR>", {desc = "Fuzzy find recently opened files"})
      keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", {desc = "Fuzzy find buffers"})
      keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", {desc = "Search for string" })
      keymap.set("n", "<leader>fc", "<cmd>FzfLua grep_cword<CR>", {desc = "Search for string under cursor" })
  end
}
