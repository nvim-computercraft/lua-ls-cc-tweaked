---@meta

---Execute [Minecraft Commands](https://minecraft.gamepedia.com/Commands) using
---a command computer
---
---This API is only available on command computers and is not accessible by
---normal players
---
------
---[Official Documentation](https://tweaked.cc/module/commands.html)
commands = {}

---The builtin commands API, without any generated command helper functions
---
------
---[Official Documentation](https://tweaked.cc/module/commands.html#v:native)
commands.native = {}

---A table of asynchronous wrappers for all commands
---
---These functions return a "task ID"
---
------
---[Official Documentation](https://tweaked.cc/module/commands.html#v:async)
commands.async = {}

---Execute a command
---@param command string The command to execute
---@return boolean success If the command executed successfully
---@return string[] output The output of this command as an array of lines
---@return number|nil affected The number of "affected" objects or `nil` if the command failed
------
---[Official Documentation](https://tweaked.cc/module/commands.html#v:exec)
function commands.exec(command) end

---Execute a command asynchronously
---
---This will return immediately and fire a `task_complete` event when it completes
---@async
---@param command string The command to execute
---@return integer taskID The ID of this task, useful for checking that the `task_complete` event is meant for this task
------
---[Official Documentation](https://tweaked.cc/module/commands.html#v:execAsync)
function commands.execAsync(command) end

---List all commands this computer has permission to execute
---@param command? string The command to complete
---@return string[] commands An array of available commands
------
---[Official Documentation](https://tweaked.cc/module/commands.html#v:list)
function commands.list(command) end

---Get the position of the current computer
---@return number x The current x position
---@return number y The current y position
---@return number z The current z position
------
---[Official Documentation](https://tweaked.cc/module/commands.html#v:getBlockPosition)
function commands.getBlockPosition() end

---Get information about a range of blocks
---
---Blocks are traversed by ascending y level, followed by z and x - the returned
--table may be indexed using `x + z * width + y * depth * depth`.
---@param minX number The x coordinate to start querying at
---@param minY number The y coordinate to start querying at
---@param minZ number The z coordinate to start querying at
---@param maxX number The x coordinate to stop querying at
---@param maxY number the y coordinate to stop querying at
---@param maxZ number The z coordinate to stop querying at
---@param dimension? string The dimension to query (defaults to current)
---@return turtleDetails[] details An array of details on each block
---@throws If the coordinates are not within the world
---@throws If trying to get info about more than 4096 blocks
------
---[Official Documentation](https://tweaked.cc/module/commands.html#v:getBlockInfos)
function commands.getBlockInfos(minX, minY, minZ, maxX, maxY, maxZ, dimension) end

---Get some basic info on a block
---@param x number The x position to query
---@param y number The y position to query
---@param z number The z position to query
---@param dimension? string The dimension to query (defaults to current)
---@return turtleDetails
---@throws If the coordinates are not within the world or are not currently loaded
function commands.getBlockInfo(x, y, z, dimension) end
