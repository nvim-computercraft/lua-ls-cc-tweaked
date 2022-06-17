---@meta

---A file handle created with `fs.open()` using `wb` or `ab` mode
---
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryWriteHandle)
---@class BinaryWriteHandle
BinaryWriteHandle = {}

---Write a string or byte to the file
---@param value ASCII|string The string to write or an ASCII code to write
---@throws If the file has been closed
---## Examples
---```
---local file = fs.open("myFile.txt", "wb")
---file.write("Hello World!\n")
---
-----Write "Hi"
---file.write(48)
---file.write(69)
---
---file.close()
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryWriteHandle:write)
function BinaryWriteHandle.write(value) end

---Save the current file without closing it
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryWriteHandle:flush)
function BinaryWriteHandle.flush() end

---Close the file, freeing it
---
---Once closed, it can no longer be written to unless it is reopened
---@throws If the file has already been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryWriteHandle:close)
function BinaryWriteHandle.close() end

---Change where the "cursor" is, changing where bytes will be written to. The
---new position is an offset relative to `whence`
---@param whence? seekWhence What `offset` is relative to. Defaults to `cur`
---@param offset? number The offset to seek to. Defaults to 0
---@return number|nil newPosition The new file write position relative to the start of the file or nil if seeking failed
---@return string|nil errorMessage The reason seeking failed
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryWriteHandle:seek)
function BinaryWriteHandle.seek(whence, offset) end
