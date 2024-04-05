-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Get the widest line in the current buffer
function get_widest_line()
  -- Get the current buffer number
  local bufnr = vim.api.nvim_get_current_buf()

  -- Get all the lines in the buffer
  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

  -- Find the line with the maximum length
  local max_length = 0
  local max_line = ""
  for _, line in ipairs(lines) do
    if #line > max_length then
      max_length = #line
      max_line = line
    end
  end

  -- Print the line with the maximum length
  print("Widest line: " .. max_line)
  print("Length: " .. max_length)
end
