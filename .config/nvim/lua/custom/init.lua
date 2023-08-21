-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.relativenumber = true

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

local function open_file_created()
  require("nvim-tree.api").events.subscribe("FileCreated", function(file)
    vim.cmd("edit " .. file.fname)
  end)
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_file_created })
