---@meta

---The settings API provides a way for you to read and write settings for
---CraftOS and your programs
---
---By default, the settings API will load its configuration from the /.settings
---file. One can then use settings.save to update the file
---
------
---[Official Documentation](https://tweaked.cc/module/settings.html)
settings = {}

---Define a new setting
---@param name string The name of this option
---@param options? settingOptions The options of this setting
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:define)
function settings.define(name, options) end

---Remove a setting definition
---
---This does not remove the value of a set setting, `settings.unset()` can be
---used for that
---@param name string The name of the setting to delete
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:undefine)
function settings.undefine(name) end

---Set the value of a setting
---@param name string The name of the setting to set
---@param value string|boolean|number|table The new value for the setting, cannot be nil
---@throws If the value cannot be serialized by `textutils.serialize()`
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:set)
function settings.set(name, value) end

---Get the value of a setting
---@param name string The name of the setting to get
---@param default? any The value to default to. If omitted, the default will be the setting's default value if it is defined or `nil` otherwise
---@return any value The setting's value or the default value
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:get)
function settings.get(name, default) end

---Get details on a specific setting
---@param name string The name of the setting to get
---@return settingDetails details The details of this setting
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:getDetails)
function settings.getDetails(name) end

---Remove the value of a setting, setting it to it's default value
---
---`settings.get()` will return the default value until the setting's value is set or the computer is rebooted
---@param name string The name of the setting to unset
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:unset)
function settings.unset(name) end

---Reset the value of all settings to their defaults
---
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:clear)
function settings.clear() end

---Get the names of all currently defined settings
---@return string[] settings An alphabetically sorted array of all currently defined settings
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:getNames)
function settings.getNames() end

---Load settings from a file
---
---The two configurations will be merged where conflicting entries will be
---overwritten by this new file
---@param path? path The path to load the settings from (defaults to `.settings`)
---@return boolean success If the file was successfully loaded. This could fail due to not having permission to read the file, the file doesn't exist, or it is corrupted
------
---[Official Documentation](https://tweaked.cc/module/settings.html#v:load)
function settings.load(path) end

---Save settings to a file
---
---This will completely overwrite the target file
---@param path path? The path to save the file to (defaults to `.settings`)
---@return boolean success If the settings were successfully saved
function settings.save(path) end
