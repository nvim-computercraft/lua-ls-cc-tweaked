---@meta

---Tools for finding and specifying where help files are on this computer
---
------
---[Official Documentation](https://tweaked.cc/module/help.html)
help = {}

---Get a list of index directories where help files are searched for
---@return string indexList A colon-separated list of index directories. Paths are absolute
---## Example
---```
---local helpPaths = {}
---
-----Separate colon-separated list into table
---for match in string.gmatch(help.path(), "([^:]+)") do
---    table.insert(helpPaths, match)
---end
---```
------
---[Official Documentation](https://tweaked.cc/module/help.html#v:path)
function help.path() end

---Set where help files will be searched for
---@param indexList string A colon-separated list of index directories. Paths are absolute
---## Example
---```
---help.setPath(help.path() .. ":/myProgram/help/")
---```
------
---[Official Documentation](https://tweaked.cc/module/help.html#v:setPath)
function help.setPath(indexList) end

---Get the location of the help file for a topic
---@param topic string The topic to find
---@return path|nil path The path to the help file or `nil` if it cannot be found
---## Example
---```
---help.lookup("disk")
-----> "rom/help/disk.txt"
---```
------
---[Official Documentation](https://tweaked.cc/module/help.html#v:lookup)
function help.lookup(topic) end

---Get a list of help topics
---@return string[] topics An array of help topics sorted A→Z
------
---[Official Documentation](https://tweaked.cc/module/help.html#v:topics)
function help.topics() end

---Get completion suggestions for help topics
---@param partial string A partially completed help topic name to complete
---@return string[] completions An array of possible completions
------
---[Official Documentation](https://tweaked.cc/module/help.html#v:completeTopic)
function help.completeTopic(partial) end
