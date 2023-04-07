---@meta
---Functions defined in `bios.lua` that are in the global (_G) environment.

---Stores the current ComputerCraft and Minecraft versions, for example:
---`ComputerCraft 1.93.0 (Minecraft 1.15.2)`
---@type string
_HOST = nil

---Stores the default settings as a comma-separated string as defined in the
---ComputerCraft configuration file. By default, is an empty string.
---@type string
_CC_DEFAULT_SETTINGS = nil

---Pauses execution for the specified number of seconds.
---@param time number? The number of seconds to sleep for, rounded up to the nearest multiple of 0.05
---As it waits for a fixed amount of world ticks, time will automatically be
---rounded up to the nearest multiple of 0.05 seconds. If you are using
---coroutines or the parallel API, it will only pause execution of the current
---thread, not the whole program.
---## Example
---```
---print("Going to sleep for 2 seconds!")
---sleep(2)
---print("Slept for 2 seconds!")
---```
------
---[Official Documentation](https://tweaked.cc/module/_G.html#v:sleep)
function sleep(time) end

---Writes text to the screen with no trailing newline. Wraps text when needed.
---@param text string
---@return number lines The number of lines written
---## Example
---```
---write("Hello World!")
---```
------
---[Official Documentation](https://tweaked.cc/module/_G.html#v:write)
function write(text) end

---Prints the specified values to the screen, separated by spaces, wrapping when
---necessary. After printing the cursor is moved to the next line.
---@vararg any
---@return number lines The number of lines written
---## Example
---```
---print("Hello", "World!")
---```
------
---[Official Documentation](https://tweaked.cc/module/_G.html#v:print)
function print(...) end

---Prints the specified values to the screen in red, separated by spaces,
--wrapping when necessary. After printing, the cursor is moved to the next line.
---@param ... unknown
---## Example
---```
---printError("Something has gone terribly wrong!")
---```
------
---[Official Documentation](https://tweaked.cc/module/_G.html#v:printError)
function printError(...) end

---Reads user input from the terminal. This automatically handles arrow keys,
--pasting, character replacement, history scrollback, auto-completion, and
--default values.
---@param replaceCharacter? string A character to replace each typed character. Useful for hiding passwords.
---@param history? string[] An array of strings that can be scrolled through with the arrow keys. Oldest item should be index 1 and the newest should be the highest index.
---@param completeFunction? fun(partial: string):string[] A function for completing text. The function should take the partially entered text and return an array of suggestions.
---@param default? string Text that should already be entered by default
---## Example
---Prompt user for a password
---```
---while true do
---  write("Password> ")
---  local pwd = read("*")
---  if pwd == "let me in" then break end
---  print("Incorrect password, try again.")
---end
---print("Logged in!")
---```
---## Example 2
---Offer history, completion, and a default value
---```
---local completion = require "cc.completion"
---local history = { "potato", "orange", "apple" }
---local choices = { "apple", "orange", "banana", "strawberry" }
---write("> ")
---local msg = read(nil, history, function(text) return completion.choice(text, choices) end, "app")
---print(msg)
---```
------
---[Official Documentation](https://tweaked.cc/module/_G.html#v:read)
function read(replaceCharacter, history, completeFunction, default) end
