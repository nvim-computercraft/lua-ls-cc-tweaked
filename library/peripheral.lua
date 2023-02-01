---@meta

---Functions for finding and controlling peripherals (such as a drive, monitor,
---or turtle) attached to this computer
---
---### Referencing Peripherals
---Computers can interact with adjacent peripherals. Each peripheral is given a
---name based on which direction it is in:\
---`"bottom"`, `"top"`, `"left"`, `"right"`, `"front"`, `"back"`
---
---It's also possible to use peripherals which are further away using modems.
---Place one modem against your computer and another modem against your
---peripheral. You can then right click the modem to use (or attach) the
---peripheral. This will print a peripheral name to chat, which can then be used
---just like a direction name to access the peripheral. You can click on the
---message to copy the name to your clipboard.
---
---### Using Peripherals
---Once you have the name of a peripheral, you can call functions on it using
---`peripheral.call()`. Once you start making a couple of peripheral
---calls this can get very repetitive, and so we can wrap a peripheral. This
---builds a table of all the peripheral's functions so you can use it like an API
---or module.
---
---### Finding Peripherals
---Sometimes you just need to know a peripheral exists. Thankfully there's
---`peripheral.find()`. This takes a peripheral type and returns all the attached
---peripherals which are of this type.
---
---What is a peripheral type though? This is a string which describes what a
---peripheral is, and so what functions are available on it. For instance,
---speakers are just called `speaker`, and monitors `monitor`. Some peripherals
---might have more than one type - a Minecraft chest is both a `minecraft:chest`
---and `inventory`. You can get all the types a peripheral has with
---`peripheral.getType()`, and check a peripheral is a specific type with
---`peripheral.hasType()`.
---
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html)
peripheral = {}

---Get a list of all available peripherals
---
---If a peripheral is attached to a side, its name will be listed as the side it
---is attached to, if it is attached remotely, it will have a unique name from
---the network it is on
---@return string[] peripherals A list of the names of all of connected peripherals
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:getNames)
function peripheral.getNames() end

---Determines if a peripheral is present
---@param name string|computerSide The name of the device or side of the computer to check
---@return boolean isPresent If *some* peripheral is present on the specified side or with the specified name
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:isPresent)
function peripheral.isPresent(name) end

---Get the type(s) of a peripheral
---@param peripheral string|computerSide|wrappedPeripheral The name/side or wrapped instance of a peripheral to get the type(s) of
---@return peripheralType ... The peripheral's types or `nil` if one is not present
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:getType)
function peripheral.getType(peripheral) end

---Check that a peripheral has a given type
---@param peripheral string|computerSide|wrappedPeripheral The name/side or wrapped instance of a peripheral to check the type of
---@param peripheralType peripheralType The type to check
---@return boolean|nil hasType If the peripheral has the given type or `nil` if it is not present
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:hasType)
function peripheral.hasType(peripheral, peripheralType) end

---Get the methods for the peripheral with a given name
---@param name string|computerSide The name/side of the peripheral to get the methods of
---@return string[]|nil methods An array of method names that are provided by the peripheral or `nil` if it is not present
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:getMethods)
function peripheral.getMethods(name) end

---Get the name of a wrapped peripheral
---@param peripheral wrappedPeripheral The peripheral to get the name of
---@return string name The name of the peripheral
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:getName)
function peripheral.getName(peripheral) end

---Call a method on the peripheral with the provided name
---@param name string|computerSide The peripheral to invoke the method on
---@param method string The name of the method to call
---@param ... any Args to pass to the method
---@return any ... Return values from the method
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:call)
function peripheral.call(name, method, ...) end

---Get a table containing all methods available on a peripheral
---@param name string|computerSide The name of the peripheral to wrap
---@return wrappedPeripheral|nil wrappedPeripheral The table containing the peripheral's methods or `nil` if the peripheral does not exist
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:wrap)
function peripheral.wrap(name) end

---Find all peripherals of a given type and return them wrapped
---@param peripheralType peripheralType The type of peripheral to find
---@param filter? fun(name: string, wrapped: wrappedPeripheral): boolean A filter function that should return if the peripheral should be included in the result
---@return wrappedPeripheral[] wrappedPeripherals The wrapped peripherals that were found, if any
---## Example
---```
---local monitors = { peripheral.find("monitor") }
---for _, monitor in pairs(monitors) do
---    monitor.write("Hello")
---end
---```
------
---[Official Documentation](https://tweaked.cc/module/peripheral.html#v:find)
function peripheral.find(peripheralType, filter) end
