local M = {}

function M.setup(opts)
  opts = opts or {}

  -- set default options
  if not opts.char_number then
    opts.char_number = 80
  end

  -- check a valid number
  if type(opts.char_number) ~= "number" then
    opts.char_number = 80
  end

  -- preform floor
  opts.char_number = math.floor(opts.char_number)

  vim.api.nvim_set_option_value("colorcolumn", opts.char_number, {}) 
end

return M
