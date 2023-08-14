---@meta

---Multishell can be used to run multiple programs at the same time
---
---Multishell is a program that injects its API into the shell's environment and
---it is only available on advance computers
---
---When multiple programs are running, a tab bar at the top of the screen
---appears, allow you to switch between programs. New shells can be launched
---using the `bg` or `fg` programs, by using `shell.openTab()` or
---`multishell.launch()`.
---
---Each process is identified by its PID (process ID), which corresponds to its position in
---the tab list. As these positions can change, the **PID is not constant**.
------
---[Official Documentation](https://tweaked.cc/module/multishell.html)
multishell = {}

---Get the currently opened/visible process. This is the currently selected
---process from the tab bar.
---@return PID PID The ID of the focused process
------
---[Official Documentation](https://tweaked.cc/module/multishell.html#v:getFocus)
function multishell.getFocus() end

---Set the currently opened/visible process
---@param PID PID The ID of the process to focus
---@return boolean success If the process was successfully changed. This will be `false` if there is no process with the given `PID`
------
---[Official Documentation](https://tweaked.cc/module/multishell.html#v:setFocus)
function multishell.setFocus(PID) end

---Get the title of the tab for the given process
---@param PID PID The ID of the process to get the title of
---@return string|nil title The title of the process or `nil` if the process doesn't exist
------
---[Official Documentation](https://tweaked.cc/module/multishell.html#v:getTitle)
function multishell.getTitle(PID) end

---Set the title of the tab for the given process
---@param PID PID The ID of the process that will have its title set
---@param title string The new title to set for the process
------
---[Official Documentation](https://tweaked.cc/module/multishell.html#v:setTitle)
function multishell.setTitle(PID, title) end

---Get the `PID` of the currently running process
---@return PID PID The ID of the currently running process
------
---[Official Documentation](https://tweaked.cc/module/multishell.html#v:getCurrent)
function multishell.getCurrent() end

---Launch a new process in multishell mode
---@param env table The environment to load the path under. For example, passing `_E` will pass the environment you are currently using.
---@param path path The path to the program to launch
---@param ... any Additional arguments to pass to the program
---@return PID PID The ID of the created process
---## Example
---```
---local pENV = {}
---local path = "/add.lua"
---local PID = multishell.launch(pENV, path, 2, 2)
---multishell.setTitle(PID, "2+2=4")
---```
------
---[Official Documentation](https://tweaked.cc/module/multishell.html#v:launch)
function multishell.launch(env, path, ...) end

---Get the number of concurrent processes within this multishell
---@return number count The number of processes running
------
---[Official Documentation](https://tweaked.cc/module/multishell.html#v:getCount)
function multishell.getCount() end
