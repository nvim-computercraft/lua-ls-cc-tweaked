---@meta

---Utilities for formatting and manipulating strings
textutils = {}

---Write text character-by-character at the cursor position
---
---Like `_G.write()`, this function does not append a newline
---@param text string The text to write to the screen
---@param rate? number The number of characters to write per second (defaults to 20)
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:slowWrite)
function textutils.slowWrite(text, rate) end

---Print text character-by-character at the cursor position
---
---Like `_G.print()`, this function appends a newline
---@param text string The text to print to the screen
---@param rate? number The number of characters to write per second (defaults to 20)
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:slowPrint)
function textutils.slowPrint(text, rate) end

---Formats a time value into a readable string
---@param time number The time to format, as provided by `os.time()`
---@param twentyFourHr boolean Whether to use 24 hour time or 12 hour time
---@return string formattedTime The time formatted as a string
function textutils.formatTime(time, twentyFourHr) end

---Print text to the screen
---
---Should the text not all fit on the screen, a "Press any key to continue"
---prompt will appear. Each keypress will scroll one line
---@param text string The text to print to the screen
---@param leadingLines? integer The amount of blank lines to print before the `text`. `leadingLines` + 1 will be printed. The cursor's Y position - 2 will try to fill the screen. Defaults to 0, meaning only one line is printed
---@return integer linesPrinted The number of lines that were printed
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:pagedPrint)
function textutils.pagedPrint(text, leadingLines) end

---Print tables in a structured form
---
---This accepts multiple arguments. When encountering a table, it is treated as
---a row with column widths being auto adjusted. When encountering a number, this
---sets the text color for subsequent rows
---@param ... table|number The rows and text colors to display
---## Example
---```
---textutils.tabulate(
---  colors.orange, { "1", "2", "3" },
---  colors.lightBlue, { "A", "B", "C" }
---)
---```
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:tabulate)
function textutils.tabulate(...) end

---Print tables in a structured form, stopping and prompting for input should
---the result not fit on the screen
---
---This accepts multiple arguments. When encountering a table, it is treated as
---a row with column widths being auto adjusted. When encountering a number, this
---sets the text color for subsequent rows
---@param ... table|number The rows and text colors to display
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:pagedTabulate)
function textutils.pagedTabulate(...) end

---A table representing an empty JSON array
---
---Useful to help distinguish it from an empty JSON object
---
---⚠️ This should not be modified
---
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:empty_json_array)
textutils.empty_json_array = {
    __tostring = function()
        return "[]"
    end,
}

---A table representing the JSON null value
---
---⚠️ This should not be modified
---
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:json_null)
textutils.json_null = {
    __tostring = function()
        return "null"
    end,
}

---@alias serializable string|number|table|boolean

---Get a textual representation of a Lua object, suitable for saving to a file or
---printing
---@param tbl serializable The object to convert
---@param options? ccTweaked.textutils.serializationOptions
---@return string serialized The serialized representation
---@throws if the object is a function
---@throws If the table contains a function
---@throws If the table contains tables that appear multiple times
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:serialize)
function textutils.serialize(tbl, options) end

---Get a textual representation of a Lua object, suitable for saving to a file or
---printing
---@param t serializable The object to convert
---@param options? ccTweaked.textutils.serializationOptions
---@return string serialised The serialised representation
---@throws if the object is a function
---@throws If the table contains a function
---@throws If the table contains tables that appear multiple times
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:serialise)
function textutils.serialise(t, options) end

---Convert a serialized string back into a Lua object
---@param str string The text to turn back into an object
---@return serializable tbl The unserialized object or `nil` if the object couldn't be unserialized
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:unserialize)
function textutils.unserialize(str) end

---Convert a serialised string back into a Lua objct
---@param str string The text to turn back into an object
---@return serializable tbl The unserialized object or `nil` if the object couldn't be unserialized
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:unserialise)
function textutils.unserialise(str) end

---Get a JSON representation of the given value
---
---This function attempts to guess whether a table is a JSON array or object.
---However, empty tables are assumed to be empty objects - use
---`textutils.empty_json_array` to mark an empty array.
---
---This is largely intended for interacting with various functions from the
---commands API, though may also be used in making http requests.
---@param tbl serializable The value to serialize
---@param NBTstyle? boolean If [NBT style](https://minecraft.fandom.com/wiki/NBT_format) JSON (non-quoted keys) should be output
---@return string JSON The JSON output
---@throws If the `value` contains a function
---@throws If the `value` contains tables that appear multiple times
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:serializeJSON)
function textutils.serializeJSON(tbl, NBTstyle) end

---Get a JSON representation of the given value
---
---This function attempts to guess whether a table is a JSON array or object.
---However, empty tables are assumed to be empty objects - use
---`textutils.empty_json_array` to mark an empty array.
---
---This is largely intended for interacting with various functions from the
---commands API, though may also be used in making http requests.
---@param tbl serializable The value to serialise
---@param NBTstyle? boolean If [NBT style](https://minecraft.fandom.com/wiki/NBT_format) JSON (non-quoted keys) should be output
---@return string JSON The JSON output
---@throws If `t` contains a function
---@throws If `t` contains tables that appear multiple times
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:serialiseJSON)
function textutils.serialiseJSON(tbl, NBTstyle) end

---Convert a serialized JSON string back into a Lua table
---@param str string The string to unserialize
---@param options? ccTweaked.textutils.unserializeJSONOptions Options for unserializing
---@return serializable|nil unserialized The unserialized object or `nil` if the object couldn't be unserialized
---@return string|nil errorMessage Why the object couldn't be unserialized
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:unserializeJSON)
function textutils.unserializeJSON(str, options) end

---Convert a serialised JSON string back into a Lua table
---@param str string The string to unserialise
---@param options? ccTweaked.textutils.unserializeJSONOptions Options for unserialising
---@return serializable|nil unserialised The unserialised object or `nil` if the object couldn't be unserialised
---@return string|nil errorMessage Why the object couldn't be unserialised
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:unserialiseJSON)
function textutils.unserialiseJSON(str, options) end

---Encode a string to make it safe to use as a URL
---@param str string The string to encode
---@return string url The encoded url
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:urlEncode)
function textutils.urlEncode(str) end

---Get completions for Lua expressions
---@param searchText string The text to complete
---@param searchTable? table A table to find variables in, defaulting to `_G`. It will also search through a parent metatable using the `__index` metamethod
---@return string[] completions A possibly empty array of completions
------
---[Official Documentation](https://tweaked.cc/module/textutils.html#v:complete)
function textutils.complete(searchText, searchTable) end
