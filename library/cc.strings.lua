---@meta

---Utilities for strings and text
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
function strings.ensure_width(line, width) end

return strings
