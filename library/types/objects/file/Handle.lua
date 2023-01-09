---@meta

---A file handle which can be read from and written to. Contains
---[methods](https://www.lua.org/pil/16.html#:~:text=This%20use%20of,method%20call%20as)
---for editing files.
---
---Make sure you are calling these methods like so: `myHandle:read()`
---
------
---[Official Documentation](https://tweaked.cc/module/io.html#ty:Handle)
---@class Handle
Handle = {}

---Close the file, freeing it
---@return true|nil success If the file was closed
---@return nil|string reason The reason it couldn't be closed
---@throws If the handle is already closed
------
---[Official Documentation](https://tweaked.cc/module/io.html#ty:Handle:close)
function Handle:close() end

---Flush any buffered output, forcing it to be written to the file
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/io.html#ty:Handle:flush)
function Handle:flush() end

---Returns an iterator that returns a new line from the file each time it is
---called. When the end of the file has been reached, returns `nil`
---
---Useful for looping over all lines in a file
---@param format readFormat The format each line should be read with
---@return fun(): string|nil iterator The line iterator
---@throws If the file cannot be opened for reading
---⚠️ The file is not automatically closed when the end of the file is reached
---
---❗Passing `"a"` as a format will result in an infinite loop and will crash your script after timing out
---## Example
---```
---local file = io.open("/rom/help/intro.txt")
---
-----Iterate over all lines in a file
-----Read each line with a trailing newline
---for line in file:lines("L") do
---    print(line)
---end
---
---file:close()
---```
------
---[Official Documentation](https://tweaked.cc/module/io.html#ty:Handle:lines)
function Handle:lines(format) end

---Read data from the file using the specified format. For each format provided,
---returns either the data read or `nil` if no data could be read.
---@param ... readFormat The formats to use for reading. Defaults to `l`
---@return string ... The data (as a string) read from the file or nil if no data could be read.
------
---[Official Documentation](https://tweaked.cc/module/io.html#ty:Handle:read)
function Handle:read(...) end

---Seek to a new position in the file. The new position is an offset relative to `whence`
---
---Only available if the handle was opened in binary mode
---@param whence? seekWhence What `offset` is relative to. Defaults to `cur`
---@param offset? number The offset to seek to. Defaults to 0
---@return number|nil newPosition The new file read position relative to the start of the file or nil if seeking failed
---@return string|nil errorMessage The reason seeking failed
---@throws If the file has been closed
------
---[Official Documentation](https://tweaked.cc/module/io.html#ty:Handle:seek)
function Handle:seek(whence, offset) end

---Set the buffering mode
---@param mode "no"|"full"|"line" The buffering mode to use
---@param size number The buffer size in bytes
---@deprecated
---[See Lua Documentation](https://www.lua.org/manual/5.1/manual.html#pdf-file:setvbuf)
---
---🚮 Deprecated, has no effect in ComputerCraft
---
------
---[Official Documentation](https://tweaked.cc/module/io.html#ty:Handle:setvbuf)
function Handle:setvbuf(mode, size) end

---Write one or more values to the file
---@param ... string|number The values to write
---@return Handle|nil self Returns this handler so you can chain calls. Possibly nil if file could not be written to
---@return nil|string errorMessage The reason the file couldn't be written to
---@throws If the file has been closed
---
------
---[Official Documentation](https://tweaked.cc/module/io.html#ty:Handle:write)
function Handle:write(...) end
