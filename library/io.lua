---@meta

---Emulates Lua's [io library](https://www.lua.org/manual/5.1/manual.html#5.7)
---
------
---[Official Documentation](https://tweaked.cc/module/io.html)
io = {}

---A file handle representing the "standard input". Reading from this file will
---prompt the user for input.
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:stdin)
---@type Handle
io.stdin = nil

---A file handle representing the "standard output". Writing to this file will
---display the written text to the screen.
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:stdout)
---@type Handle
io.stdout = nil

---A file handle representing the "standard error" stream.
---One may use this to display error messages, writing to it will display them on the terminal.
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:stderr)
---@type Handle
io.stderr = nil

---Close a file handle
---@param handle Handle The file handle to close. Defaults to the current output file
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:close)
function io.close(handle) end

---Flushes the current output file, saving it without closing it
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:flush)
function io.flush() end

---Get or set the current input file
---@param file? Handle|path The new input file, either as a file path or a handle
---@return Handle handle The current input file handle
---@throws If the provided path cannot be opened for reading
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:input)
function io.input(file) end

---Open a file in read mode and return an interator that returns a new line every time it is called. Useful for looping over all lines in a file
---
---Once the end of the file has been reached, nil will be returned and the file is automatically closed.
---
---If no file name is given, the current input will be used instead. In this case, the handle is not used.
---@param path? path The path to the file to read lines from
---@param readMode? readFormat How the lines should be read
---@return fun(): string iterator The line iterator
---@throws If the file cannot be opened for reading
---
---❗Passing `"a"` as a format will result in an infinite loop and will crash your script after timing out
---## Example
---```
-----Iterate over and print all lines in a file
---for line in io.lines("/rom/help/intro.txt") do
---    print(line)
---end
---```
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:lines)
function io.lines(path, readMode) end

---Open a file in the mode provided
---@param path path The path to the file to open
---@param mode? openMode The mode to open the file in. Defaults to `rb` (binary read)
---@return Handle|nil handle The opened file or nil if an error occurred
---@return nil|string errorMessage Why the file could not be opened
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:open)
function io.open(path, mode) end

---Get or set the current output file
---@param file? Handle|path The new output file, either as a file path or a handle
---@return Handle handle The current output file handle
---@throws If the provided path cannot be opened for writing
---------
---[Official Documentation](https://tweaked.cc/module/io.html#v:output)
function io.output(file) end

---Read from the currently opened file
---
---This is equivalent to:
---```
---local handle = io.open('/testFile.txt')
---handle:read()
---```
---@param ... readFormat The formats to use for reading. Defaults to `l`
---@return string ... The data (as a string) read from the file or nil if no data could be read.
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:read)
function io.read(...) end

---Checks whether the provided value is a `Handle` and if it is open
---@param obj any The value to check
---@return "file"|"closed file"|nil type If the file is open (`"file"`), closed (`"closed file"`), or is not even a file `Handle` (`nil`)
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:type)
function io.type(obj) end

---Write to the currently opened file
---
---This is equivalent to:
---```
---local handle = io.open('/testFile.txt')
---handle:write()
---```
---@param ... string The strings to write to the file
------
---[Official Documentation](https://tweaked.cc/module/io.html#v:write)
function io.write(...) end
