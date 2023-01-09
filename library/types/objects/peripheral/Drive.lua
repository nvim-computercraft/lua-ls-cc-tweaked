---@meta

---Disk drives are a peripheral which allow you to read and write to floppy
---disks and other "mountable media" (such as computers or turtles). They also
---allow you to play records.
---
---When a disk drive attaches some mount (such as a floppy disk or computer), it
---attaches a folder called disk, disk2, etc... to the root directory of the
---computer. This folder can be used to interact with the files on that disk.
---
---When a disk is inserted, a `disk` event is fired, with the side peripheral is
---on. Likewise, when the disk is detached, a `disk_eject` event is fired.
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html)
---@class Drive
Drive = {}

---Checks that an item is in the drive
---@return boolean present If an item is in the drive
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:isDiskPresent)
function Drive.isDiskPresent() end

---Get the label of the inserted item. If the inserted item is a computer,
---this returns the label of the computer as read by `os.getComputerLabel()`
---@return string|nil label The label of the inserted item or `nil` if no disk is inserted or the item doesn't have a label
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:getDiskLabel)
function Drive.getDiskLabel() end

---Set the label of an inserted item.
---@param label string The new value for the label
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:setDiskLabel)
function Drive.setDiskLabel(label) end

---Check if an item is present and provides a mount. For records, returns false
---@return boolean hasMount
---
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:hasData)
function Drive.hasData() end

---Gets the path on this computer where the contents of the inserted item can be
---found
---@return path|nil path The path to the mount location or `nil` if the drive is empty or the inserted item cannot be mounted
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:getMountPath)
function Drive.getMountPath() end

---Checks that the inserted item is a music disk
---@return boolean hasAudio If an item is present and is a record
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:hasAudio)
function Drive.hasAudio() end

---Get the title of the music track from the record in the drive. This usually
---results in the same as `getLabel()` for records.
---@return string|false|nil title The track title, false if the inserted item is not a record, nil if there is no item in the drive
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:getAudioTitle)
function Drive.getAudioTitle() end

---Plays the record in the drive
---
---Make sure to check that there is an item in the drive and that it is a record with `hasData()`
---
---Stops any already playing records. The record will stop playing when it
---reaches the end of its runtime, is removed from the drive, or when stopped
---manually by `stopAudio()`
---
---Supports: 💿
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:playAudio)
function Drive.playAudio() end

---Stops the currently playing record that was started with `disk.playAudio()`
---
---Supports: 💿
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:stopAudio)
function Drive.stopAudio() end

---Ejects any item that is in the drive, dropping it into the world
---
---Supports: 💾💿🖥️
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:ejectDisk)
function Drive.ejectDisk() end

---Get the unique identifier of the disk in the drive. Only floppy disks have an
---ID
---@return number|nil ID The ID of the floppy disk or nil if the drive is empty or does not contain a floppy disk
---Supports: 💾
---
------
---[Official Documentation](https://tweaked.cc/peripheral/drive.html#v:getDiskID)
function Drive.getID() end
