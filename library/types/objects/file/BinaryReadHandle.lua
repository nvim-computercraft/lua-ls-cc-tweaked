---@meta

---A file handle created with `fs.open()` using `rb` mode
---
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryReadHandle)
---@class BinaryReadHandle
BinaryReadHandle = {}

---Read a number of bytes from the file
---@param count number The number of bytes to read
---@return string|nil byte The byte as a string or nil when the end of the file is reached
---@throws When trying to read a negative number of bytes
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryReadHandle:read)
function BinaryReadHandle.read(count) end

---Read a byte from the file
---@return ASCII|nil byte The byte as an [ASCII code](https://www.rapidtables.com/code/text/ascii-table.html)
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryReadHandle:read)
function BinaryReadHandle.read() end

---Read the remainder of the file
---@return string|nil contents The remaining content of the file or nil if the end of the file is reached
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryReadHandle:readAll)
function BinaryReadHandle.readAll() end

---Read a line from the file
---@param includeNewline? boolean If any trailing newline characters should be included. Defaults to false
---@return string|nil line The read line or nil if the end of the file has been reached
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryReadHandle:readLine)
function BinaryReadHandle.readLine(includeNewline) end

---Close the file, freeing it
---
---Once closed, it can no longer be read unless it is reopened
---@throws If the file has already been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryReadHandle:close)
function BinaryReadHandle.close() end

---Seek to a new position in the file. The new position is an offset relative to `whence`
---@param whence? seekWhence What `offset` is relative to. Defaults to `cur`
---@param offset? number The offset to seek to. Defaults to 0
---@return number|nil newPosition The new file read position relative to the start of the file or nil if seeking failed
---@return string|nil errorMessage The reason seeking failed
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/fs.html#ty:BinaryReadHandle:seek)
function BinaryReadHandle.seek(whence, offset) end
