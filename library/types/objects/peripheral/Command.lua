---@meta

---Command blocks can be used as a peripheral to allow their commands to be
---executed using a computer
------
---[Official Documentation](https://tweaked.cc/peripheral/command.html)
---@class Command
Command = {}

---Get the command that this command block will run
---@return string command The current command
------
---[Official Documentation](https://tweaked.cc/peripheral/command.html#v:getCommand)
function Command.getCommand() end

---Set the command block's command
---@param command string The new command
------
---[Official Documentation](https://tweaked.cc/peripheral/command.html#v:setCommand)
function Command.setCommand(command) end

---Execute the command block once
---@return boolean success If the command was executed successfully
---@return string|nil errorMessage Why the command failed
------
---[Official Documentation](https://tweaked.cc/peripheral/command.html#v:runCommand)
function Command.runCommand() end
