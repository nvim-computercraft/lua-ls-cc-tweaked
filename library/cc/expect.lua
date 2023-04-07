---@meta

---Helper functions for validating certain values and types.
---
------
---[Official Documentation](https://tweaked.cc/library/cc.expect.html)
expect = {}


---Expect an argument to be of a certain type
---@generic T
---@param argIndex integer The index of the argument (for error reporting)
---@param value T The value to check
---@param ... type The type the value should be
---@return T value
---@throws If the value is not of one of the specified types
------
---[Official Documentation](https://tweaked.cc/library/cc.expect.html#v:expect)
function expect.expect(argIndex, value, ...) end

---Expect a field to be of a certain type
---@param tbl table The table the field belongs to
---@param key string The name of the field to check
---@param ... type The type the value should be
---@return any value The value of the field
---@throws If the value is not of one of the specified types
------
---[Official Documentation](https://tweaked.cc/library/cc.expect.html#v:field)
function expect.field(tbl, key, ...) end

---Expect a number to be within a specific range (inclusive)
---@param num number The number to confirm is in the specified range
---@param min number The minimum value, if omitted `-math.huge` is used
---@param max number The maximum value, if omitted `math.huge` is used
---@return number value The given number
---@throws If the value is outside the given range
------
---[Official Documentation](https://tweaked.cc/library/cc.expect.html#v:range)
function expect.range(num, min, max) end

return expect
