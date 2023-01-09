---@meta

---The shell API provides access to CraftOS's command line interface (CLI)
---
---The shell is not a "true" API. It is actually a program which injects it's
---API into the programs that it launches. This allows multiple shells to run at
---the same time but means that it isn't available in the global environment,
---meaning it is unavailable to other APIs
---
------
---[Official Documentation](https://tweaked.cc/module/shell.html)
---@class shell
shell = {}

---Run a program with the provided arguments
---
---Unlike `shell.run()`, each argument is passed to the program as-is.
---
---`shell.run("echo", "a b c")` will run echo with the arguments `a`, `b`, and
---`c`. `shell.execute("echo", "a b c")` will run echo with the argument "a b c"
---@param command string The program to execute
---@param ... string Arguments to this program
---@return boolean success Whether the program exited successfully
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:execute)
function shell.execute(command, ...) end

---Run a command with the provided arguments as if it were called from the command line
---@param command string The program to execute
---@param ... string Arguments to concatenate and pass to the program as a command line input
---@return boolean success Whether the program exited successfully
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:run)
function shell.run(command, ...) end

---Exit the current shell
---
---This will not terminate your running program, however, it will terminate the shell when the program exits
---
---If this is called on the top-level shell, the computer will shutdown
---
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:exit)
function shell.exit() end

---Get the current working directory
---@return string path The current working directory
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:dir)
function shell.dir() end

---Set the current working directory
---@param dir path The path to the current working directory
---@throws If the path does not exist
---@throws If the path is not a directory
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:setDir)
function shell.setDir(dir) end

---Get the path where programs are located
---
---The path is a list of diretories separated by a colon (`:`)
---
---For example, turtles will look in:
---- `/rom/programs`
---- `/rom/programs/turtle/`
---@return path path The current path to programs
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:path)
function shell.path() end

---Set the path where programs are located
---
---The path is a list of diretories separated by a colon (`:`)
---
---Make sure paths start with a `/` otherwise they will be searched for from the
---current working directory rather than the root of this computer
---@param path path The path where programs are located
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:setPath)
function shell.setPath(path) end

---Resolve a relative path to an absolute path
---
---Many APIs only take absolute paths so this function will help convert to them
---
---This does nothing if the path starts with `/`
---@param path path The relative path to resolve
---@return path absolutePath The path converted to an absolute path
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:resolve)
function shell.resolve(path) end

---Resolve a program, searching through the program `path` and list of `aliases`
---@param command string The name of the program
---@return string|nil absolutePath The absolute path to the program or `nil` if it could not be found
---## Example
---```
---shell.resolveProgram("hello")
----- => rom/programs/fun/hello.lua
---```
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:resolveProgram)
function shell.resolveProgram(command) end

---Get a list of all programs at `path`
---@param includeHidden? boolean If hidden files should be included (those that start with `.`)
---@return string[] programs A list of available programs
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:programs)
function shell.programs(includeHidden) end

---Complete an incomplete shell command line
---
---Completion handlers for your program can be registered with `shell.setCompletionFunction()`
---@param command string The input to complete
---@return string[]|nil completions An array of possible completions or `nil` if there are none
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:complete)
function shell.complete(command) end

---Complete the name of a program
---@param program string The name of the program to complete
---@return string[] completions An array of possible completions
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:completeProgram)
function shell.completeProgram(program) end

---Set the completion function for a specific program
---
---When the given program is entered on the command line, the provided function
---will be called to provide completions
---
---For instance, when completing `pastebin put rom/st` our pastebin completion
---function will receive the shell API, an index of `2`, `rom/st` as the current
---argument, and a "previous" table of `{ "put" }`. This function may then wish to
---return a table containing `artup.lua`, indicating the entire command should be
---completed to `pastebin put rom/startup.lua`.
---
---You can also return a space at the end of an argument to help indicate that
---another argument is desired
---@param program path The absolute path to the program without a leading `/`
---@param complete shellCompletionFunction The function to use for completions
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:setCompletionFunction)
function shell.setCompletionFunction(program, complete) end

---Get a list of all completion functions
---
---This should only be needed when creating a custom shell
---@return shellCompletionInfo
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:getCompletionInfo)
function shell.getCompletionInfo() end

---Get the path of the currently running program
---@return path path The path to the currently running program
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:getRunningProgram)
function shell.getRunningProgram() end

---Add an alias for a program
---@param alias string The alias to add
---@param program string|path The name/path of the program to alias
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:setAlias)
function shell.setAlias(alias, program) end

---Remove an alias for a program
---@param alias string The alias to remove
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:clearAlias)
function shell.clearAlias(alias) end

---Get a list of all aliases for this shell
---@return table<string, string> aliases A table where the keys are the aliases and the values are the paths to the program being aliased
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:aliases)
function shell.aliases() end

---Open a new multishell tab
---
---This function is only available if the `multishell` API is
---@param ... string The command line to run
---@return PID PID The ID of the process that was started
---## Example
---```
---local id = shell.openTab("lua")
---shell.switchTab(id)
---```
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:openTab)
function shell.openTab(...) end

---Switch to a different `multishell` tab
---@param PID PID The ID of the process to switch to
------
---[Official Documentation](https://tweaked.cc/module/shell.html#v:switchTab)
function shell.switchTab(PID) end
