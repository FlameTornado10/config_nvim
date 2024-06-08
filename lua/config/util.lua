local M = {}

function M.switch_and_close_previous_buffer()
  local buffers = vim.api.nvim_list_bufs()
  local open_buffers = {}

  for _, buf in ipairs(buffers) do
    if vim.api.nvim_buf_is_loaded(buf) then
      table.insert(open_buffers, buf)
    end
  end
  if #open_buffers > 2 then
    local current_buf = vim.api.nvim_get_current_buf()
    local previous_buf = nil
    for i = #open_buffers, 1, -1 do
      if open_buffers[i] ~= current_buf then
        previous_buf = open_buffers[i]
        break
      end
    end
    if previous_buf then
      vim.api.nvim_set_current_buf(previous_buf)
      vim.api.nvim_buf_delete(current_buf, { force = false })
    end
  else
    print("打开的缓冲区数量不超过2")
  end
end

return M
