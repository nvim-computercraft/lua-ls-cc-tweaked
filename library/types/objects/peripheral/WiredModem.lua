---@meta

---Modems allow you to send messages between computers over large distances
---
---🗒️The `rednet` API builds on top of modems and is more user-friendly
---
---Modems operate on channels. Any modem can send a message on a channel, but
---only those that have opened the channel are able to receive messages.
---
---Channels are an integer between 0 and 65535 (inclusive). While these channels
---have no initial significance, certain APIs or programs can make use of
---specififc channels. For example, the `gps` module sends all of its messages on
---`gps.CHANNEL_GPS` (default is 65534), while `rednet` uses the channel equal to
---the computer's ID
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html)
---@class WiredModem: Modem
WiredModem = {}

---List all peripherals on the wired network
---
---If this computer is attached to the network, it **will not** be included in this list
---@return string[] peripherals Remote peripheral names on the network
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:getNamesRemote)
function WiredModem.getNamesRemote() end

---Get if a peripheral is available on this wired network
---@param name string The peripheral's name
---@return boolean isPresent If a peripheral with the given name is present
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:isPresentRemote)
function WiredModem.isPresentRemote(name) end

---Get the type of a peripheral on this wired network
---@param name string The peripheral's name
---@return peripheralType|nil type The peripheral's type or `nil` if it is not present
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:getTypeRemote)
function WiredModem.getTypeRemote(name) end

---Check that a peripheral is of a given type
---@param name string The peripheral's name
---@param type peripheralType The type to check
---@return boolean|nil isType If a peripheral has a given type or `nil` if it is not present
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:hasTypeRemote)
function WiredModem.hasTypeRemote(name, type) end

---Get the names of the methods for a peripheral with the provided name
---@param name string The peripheral's name
---@return string[]|nil methods An array of method names or `nil` if it is not present
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:getMethodsRemote)
function WiredModem.getMethodsRemote(name) end

---Call a method on a peripheral on this wired network
---@param name string The name of the peripheral to invoke the method on
---@param method string The name of the method to call
---@param ... any Args to pass to the method
---@return any ... The return values of the method
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:callRemote)
function WiredModem.callRemote(name, method, ...) end

---Get the network name of the current computer, if the modem is on
---@return string|nil name The current computer's name on the wired network on `nil` if the modem is off
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:getNameLocal)
function WiredModem.getNameLocal() end
