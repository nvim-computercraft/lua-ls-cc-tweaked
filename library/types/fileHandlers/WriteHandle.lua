---@meta

---A file handle created with `fs.open()` using the `w` or `a` mode
---
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:WriteHandle)
---@class WriteHandle
WriteHandle = {}

---Write a value to a file
---@param value any The value to write to the file
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:WriteHandle:write)
function WriteHandle.write(value) end

---Write a value to a file with a trailing newline character
---@param value any The value to write to the file
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:WriteHandle:writeLine)
function WriteHandle.writeLine(value) end

---Save the current file without closing it
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:WriteHandle:flush)
function WriteHandle.flush() end

---Close the file, freeing it
---
---Once closed, it can no longer be written to unless it is reopened
---@throws If the file has already been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:WriteHandle:close)
function WriteHandle.close() end
