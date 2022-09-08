---@meta

---Helper functions for completing text. Useful for `_G.read()`
---
------
---[Official Documentation](https://tweaked.cc/library/cc.completion.html)
completion = {}

---Get completions from a choice of strings
---@param text string The incomplete string
---@param choices string[] The choices to offer completions from
---@param trailingSpace? boolean Add a trailing space after the completed item
---## Example
---```
---local completion = require "cc.completion"
---local animals = { "dog", "cat", "lion", "unicorn" }
---read(nil, nil, function(text) return completion.choice(text, animals) end)
---```
------
---[Official Documentation](https://tweaked.cc/library/cc.completion.html#v:choice)
function completion.choice(text, choices, trailingSpace) end

---Get completions for the name of a connected peripheral
---@param text string The incomplete string
---@param trailingSpace? boolean Add a trailing space after the completed item
---## Example
---```
---local completion = require "cc.completion"
---read(nil, nil, completion.peripheral)
---```
------
---[Official Documentation](https://tweaked.cc/library/cc.completion.html#v:peripheral)
function completion.peripheral(text, trailingSpace) end

---Complete the side of a computer
---@param text string The incomplete string
---@param trailingSpace? boolean Add a trailing space after the completed item
---## Example
---```
---local completion = require "cc.completion"
---read(nil, nil, completion.side)
---```
------
---[Official Documentation](https://tweaked.cc/library/cc.completion.html#v:side)
function completion.side(text, trailingSpace) end

---Complete a setting name
---@param text string The incomplete string
---@param trailingSpace? boolean Add a trailing space after the completed item
---## Example
---```
---local completion = require "cc.completion"
---read(nil, nil, completion.setting)
---```
------
---[Official Documentation](https://tweaked.cc/library/cc.completion.html#v:setting)
function completion.setting(text, trailingSpace) end

---Complete the name of a Minecraft command
---@param text string The incomplete string
---@param trailingSpace? boolean Add a trailing space after the completed item
------
---[Official Documentation](https://tweaked.cc/library/cc.completion.html#v:command)
function completion.command(text, trailingSpace) end

return completion
