-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- use nvim.project
    ["<leader>fp"] = {
      ":Telescope projects<cr>",
      desc = "Find projects",
    },
    -- use broot
    -- ["<leader>tb"] = {
    --   function() require("astronvim.utils").toggle_term_cmd "broot" end,
    --   desc = "ToggleTerm broot",
    -- },
  },
  v = {
    -- continuous indntation
    ["<"] = "<gv",
    [">"] = ">gv",

    -- Move multiple lines in Visual mode
    J = ":move '>+1<cr><cr>gv",
    K = ":move '<-2<cr><cr>gv",
  },
  t = {
    ["<Esc>"] = "<C-\\><C-n>",
  },
}
