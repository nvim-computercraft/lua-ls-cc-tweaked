---@meta

---Provides functions for interacting with a computer's files 📄 and directories 📁
---
---All functions use [absolute
---paths](https://en.wikipedia.org/wiki/Path_(computing)#Absolute_and_relative_paths),
---however, `shell.resolve()` can be used to convert a relative path into an
---absolute path
---
---Computers only have one storage device and filesystem but other filesystems
---can be [mounted](https://en.wikipedia.org/wiki/Mount_(computing)) using
---peripherals such as the drive peripheral. These drives mount their disk's
---content at locations like `disk/`, `disk1/`, etc.
---
---Most filesystems have a finite capacity and trying to perform an operation
---that could exceed it will fail
------
---[Official Documentation](https://tweaked.cc/module/fs.html)
fs = {}

---Get whether a path is mounted to the root of the parent filesystem
---
---✅
---- `/`
---- `/rom`
---- `/disk`
---
---❌
---- `/rom/apis`
---- `/disc/helloWorld.lua`
---@param path path The path to check
---@return boolean isRoot If the specified path is mounted to the root
---@throws If the path does not exist
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:isDriveRoot)
function fs.isDriveRoot(path) end

---Provides completion for files/directories
---
---When a directory is a candidate, two entries are provided - one with a
---trailing slash (hinting that there are files/directories that exist past this
---one) and one without (suggesting that this directory *is* the target). Setting
---`includeDirectories` to false will only suggest directories with a trailing
---slash (meaning only directories with content will be suggested but are not
---meant to be the final target)
---@param path path The path to complete
---@param source path The path where further paths should be resolved from
---@param includeFiles? boolean If filenames should be completed
---@param includeDirectories? boolean If empty directories should be completed
---@return string[]|table candidates
---## Examples
---```
---fs.complete("doesNot", "/exist")
-----> {}
---
---fs.complete("modules", "/rom")
-----> {"/"}
---
---fs.complete("modules/", "/rom")
-----> {"command/", "command", "main/", "main", "turtle/", "turtle"}
---
---fs.complete("modules/", "/rom", true, false)
-----> {"command/", "main/", "turtle/"}
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:complete)
function fs.complete(path, source, includeFiles, includeDirectories) end

---Get a list of files in a directory
---@param path path The path to the directory to check
---@return string[]|table files
---@throws If the path doesn't exist
---@throws If the path is not a directory
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:list)
function fs.list(path) end

---Combine multiple components of a path into a single path
---@param start path The start of the path
---@vararg path|string Path components to combine
---@return string path The combined path
---@throws If arguments are invalid (e.g. are numbers)
---## Example
---```
---fs.combine("/rom/programs", "../apis", "parallel.lua")
-----> rom/apis/parallel.lua
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:combine)
function fs.combine(start, ...) end

---Get the filename component of a path
---@param path path The path to get the filename from
---@return string filename The last component of a path (name of the file if the path points to a file)
---## Examples
---```
---fs.getName("/")
-----> "root"
---
---fs.getName("/rom/programs/")
-----> "programs"
---
---fs.getName("/rom/programs/reboot.lua")
-----> "reboot.lua"
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:getName)
function fs.getName(path) end

---Get the parent directory component of a path
---@param path path The path to get the parent directory from
---@return path|string parentDirectory The parent directory component of the path (all parent directories)
---## Examples
---```
---fs.getDir("/rom/startup.lua")
-----> "rom"
---
---fs.getDir("/rom/programs/")
-----> "rom"
---
---fs.getDir("/rom/apis/command/")
-----> "rom/apis"
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:getDir)
function fs.getDir(path) end

---Get the size of a file
---@param path path The path to the file to get the size of
---@return number bytes The size of the file in bytes. 0 if the path points to a directory
---@throws If the path doesn't exist
---## Examples
---```
---fs.getSize("/rom/apis/vector.lua")
-----> 5826
---
---fs.getSize("/rom/apis/turtle/")
-----> 0
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:getSize)
function fs.getSize(path) end

---Get whether a path exists
---@param path path The path to check the existence of
---@return boolean exists
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:exists)
function fs.exists(path) end

---Get whether a path is a directory
---@param path path The path to check
---@return boolean isDirectory If the path exists **and** is a directory
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:isDir)
function fs.isDir(path) end

---Get whether a path is read-only
---@param path path The path to check
---@return boolean isReadOnly If the path can only be read and not written to
---## Example
---```
---fs.isReadOnly("/rom")
-----> true
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:isReadOnly)
function fs.isReadOnly(path) end

---Create a directory, including any missing parents
---@param path path The path to (and including) the directory to create
---@throws If target path could not be written to
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:makeDir)
function fs.makeDir(path) end

---Move a file/directory to another path
---
---Any missing parent directories at the specified destination are created as
---needed
---@param origin path The origin path to move
---@param destination path The destination path
---@throws If destination could not be written to
---## Examples
---```
-----Rename file
---fs.move("/scripts/oldName.lua", "/scripts/newName.lua")
---
-----Rename directory
---fs.move("/scripts/projectA/", "/scripts/projectB/")
---
-----Move file to new directory
---fs.move("/scripts/oldLocation/test.lua", "/scripts/newLocation/test.lua")
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:move)
function fs.move(origin, destination) end

---Copy a file/directory to another path
---@param origin path The origin path to copy
---@param destination path The destination path to copy to
---@throws If destination could not be written to
---## Example
---```
---fs.copy("/scripts/testing/main.lua", "scripts/trying/main.lua")
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:copy)
function fs.copy(origin, destination) end

---Deletes a file/directory
---
---Deleting a directory **deletes ALL children** (files and subdirectories)
---
---❗Be **VERY** careful when deleting directories as you could easily delete a
---**LOT** of files by accident
---@param path path The path to delete
---@throws If file/directory cannot be deleted
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:delete)
function fs.delete(path) end

---Opens a file for reading/writing
---@param path path The path to the file to open
---@param mode openMode The mode to open the file with
---@return ReadHandle|BinaryReadHandle|WriteHandle|BinaryWriteHandle|nil handler A file handler object or nil if the file does not exist or cannot be opened
---@return nil|string errorMessage Why the file cannot be opened
---@throws If an invalid mode was given
---## Example
---```
---local file = fs.open("/rom/help/intro.txt", "r")
---local contents = file.readAll()
---file.close()
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:open)
function fs.open(path, mode) end

---Get the name of the mount that the path is located on
---@param path path The path to get the mount location of
---@return string mount The name of the mount location. `hdd` for local files and `rom` for files in the `/rom/` directory
---@throws If the path doesn't exist
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:getDrive)
function fs.getDrive(path) end

---Get the amount of free space on the mount that the specified path is located on
---@param path path A path that belongs to the desired mount
---@return number|"unlimited" free The free space in bytes, `unlimited`, or 0 if read-only
---@throws If the path doesn't exist
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:getFreeSpace)
function fs.getFreeSpace(path) end

---Search for files matching a wildcard pattern
---@param pattern string The path pattern to use
---@return string[] paths An array of matching paths
---@throws If the path doesn't exist
---## Example
---```
------This would match one/two/three, one/A/three, etc.
---local results = fs.find("one/*/three")
---```
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:find)
function fs.find(pattern) end

---Get the total capacity of the mount the path is located on, if available
---@param path path A path that is located on the desired mount
---@return number|nil capacity The capacity of the mount in bytes or `nil` if read-only
---@throws If the capacity could not be determined
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:getCapacity)
function fs.getCapacity(path) end

---Get attributes about a file/directory
---@param path path The path to the file/directory to get the attributes of
---@return fileAttributes attributes The attributes of the file/directory
---@throws If the path does not exist
------
---[Official Documentation](https://tweaked.cc/module/fs.html#v:attributes)
function fs.attributes(path) end
