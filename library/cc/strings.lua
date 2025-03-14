---@meta

---Utilities for strings and text
---
------
---[Official Documentation](https://tweaked.cc/library/cc.strings.html)
strings = {}

---Wraps a block of text so that each line fits within the specified width
---
---Useful for wrapping text if not using `print`
---@param text string The string to wrap
---@param width? number The width to constrain to. Defaults to the width of the terminal
---@return string[] lines A table that contains each line as a string
------
---[Official Documentation](https://tweaked.cc/library/cc.strings.html#v:wrap)
function strings.wrap(text, width) end

---Make a string a fixed width through either truncating it or padding it with spaces
---@param line string The string to normalize
---@param width? number The width to constrain to. Defaults to the width of the terminal
---@return string normalizedString The string with the specified width
---
---[Official Documentation](https://tweaked.cc/library/cc.strings.html#v:ensure_width)
function strings.ensure_width(line, width) end

---Split a string into parts, each separated by a deliminator.
---
---For instance, splitting the string `"a b c"` with the deliminator `" "`, would return a table with three strings: `"a"`, `"b"`, and `"c"`.
---By default, the deliminator is given as a [Lua pattern](https://www.lua.org/manual/5.3/manual.html#6.4.1). Passing true to the plain argument will cause the deliminator to be treated as a litteral string.
---@param str string The string to split.
---@param deliminator string The pattern to split this string on.
---@param plain? boolean Treat the deliminator as a plain string, rather than a pattern.
---@param limit? number The maximum number of elements in the returned list.
---@return string[] strings The list of split strings.
---
---[Official Documentation](https://tweaked.cc/library/cc.strings.html#v:split)
function strings.split(str, deliminator, plain, limit) end

return strings
