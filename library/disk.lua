---@meta

---Functions for interacting with disk drives
---
---The disk functions can be used on a locally attached or remote disk drive
---peripheral. If the drive is attached locally, you can use the side it is
---attached to, if it is remote, you have to use the name printed when enabling
---its modem (e.g. `drive_0`).
---
---💬 A disk drive can contain a floppy disk 💾, record 💿, or a computer 🖥️
---(including pocket computer or turtle)
---
---💬 Computers, turtles, and pocket computers can be placed in a disk drive to
---access their internal drives.
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html)
disk = {}

---Checks that an item is in a disk drive
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---@return boolean present
---Supports: 💾💿🖥️
---## Example
---```
---disk.isPresent("top")
---disk.isPresent("drive_3")
---```
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:isPresent)
function disk.isPresent(name) end

---Get the label of the inserted item. If the inserted item is a computer,
---this returns the label of the computer as read by `os.getComputerLabel()`
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:getLabel)
function disk.getLabel(name) end

---Set the label of an inserted item.
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---@param label string The new value for the label
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:setLabel)
function disk.setLabel(name, label) end

---Check if an item is present and provides a mount. For records, returns false
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---@return boolean hasMount
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:hasData)
function disk.hasData(name) end

---Gets the path on this computer where the contents of the inserted item can be
---found
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---@return path|nil path The path to the mount location or `nil` if the drive is empty or the inserted item cannot be mounted
---Supports: 💾💿🖥️
---## Example
---```
---disk.getMountPath("left")
----->"/disk0"
---```
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:getMountPath)
function disk.getMountPath(name) end

---Checks that the inserted item is a music disk
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---@return boolean hasAudio If an item is present and is a record
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:hasAudio)
function disk.hasAudio(name) end

---Get the title of the music track from the record in the drive. This usually
---results in the same as `disk.getLabel()` for records.
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---@return string|false|nil title The track title, false if the inserted item is not a record, nil if there is no item in the drive
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:getAudioTitle)
function disk.getAudioTitle(name) end

---Plays the record in the drive
---
---Make sure to check that there is an item in the drive and that it is a record with `disk.hasData()`
---
---Stops any already playing records. The record will stop playing when it
---reaches the end of its runtime, is removed from the drive, or when stopped
---manually by `disk.stopAudio()`
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---Supports: 💿
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:playAudio)
function disk.playAudio(name) end

---Stops the currently playing record that was started with `disk.playAudio()`
---@param name computerSide|string? The name of the disk drive or the side of the computer that the drive is on
---Supports: 💿
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:stopAudio)
function disk.stopAudio(name) end

---Ejects any item that is in the drive, dropping it into the world
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:eject)
function disk.eject(name) end

---Get the unique identifier of the disk in the drive. Only floppy disks have an
---ID
---@param name computerSide|string The name of the disk drive or the side of the computer that the drive is on
---@return number|nil ID The ID of the floppy disk or nil if the drive is empty or does not contain a floppy disk
---Supports: 💾
---
------
---[Official Documentation](https://tweaked.cc/module/disk.html#v:getID)
function disk.getID(name) end
