local M = {}

local ft_cmds = {
  go = "go run " .. vim.fn.expand("%"),
}

M.general = {
  n = {
    ["<leader>ct"] = { "<cmd> checkt <CR>", "Update all buffers with checkt" },
    ["<leader>fs"] = { "<cmd> NoNeckPain <CR> <CR>", "Full screen with NoNeckPain" },
  },
}

M.nvterm = {
  n = {
    ["<leader>ag"] = {
      function()
        require("nvterm.terminal").send("go run " .. vim.fn.expand('%'))
      end,
      "run go program",
    },
    ["<leader>at"] = {
      function()
        require("nvterm.terminal").send("go run " .. vim.fn.expand('%') .. " --second")
      end,
      "run go program for AOC part 2",
    },
    ["<leader>z"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
  t = {
    ["<leader>z"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
}

return M
