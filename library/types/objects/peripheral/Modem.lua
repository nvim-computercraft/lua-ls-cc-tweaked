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
---@class Modem
Modem = {}

---Open a channel on a modem
---
---A channel must be open in order to receive messages on it
---
---Modem can have 128 channels open at one time
---@param channel channel The channel to open (0 - 65535)
---@throws If the `channel` is out of range
---@throws If there are too many open channels
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:open)
function Modem.open(channel) end

---Check if a channel is open or not
---@param channel channel The channel to check (0 - 65535)
---@return boolean isOpen If the channel is open
---@throws If the `channel` is out of range
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:isOpen)
function Modem.isOpen(channel) end

---Close an open channel so that it no longer receives messages
---@param channel channel The channel to close (0 - 65535)
---@throws If the `channel` is out of range
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:close)
function Modem.close(channel) end

---Close all open channels
---
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:closeAll)
function Modem.closeAll() end

---Sends a message on the specified channel over the modem
---
---Modems listening on the specified channel will queue a `modem_message` event
---on any parent computers
---@param channel channel The channel to send the message on (does not need to be open)
---@param replyChannel channel The channel that responses should be sent on. This can be the same channel, but it must be opened on this computer in order to receive the replies
---@param payload boolean|string|number|table The payload of the message to send
---@throws If the channel is out of range
---## Example
---```
---local modem = peripheral.find("modem") or error("No modem attached", 0)
---modem.transmit(15, 43, "Hello, world!")
---```
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:transmit)
function Modem.transmit(channel, replyChannel, payload) end

---Get whether this modem is wireless or wired
---@return boolean isWireless If this modem is wireless
------
---[Official Documentation](https://tweaked.cc/peripheral/modem.html#v:isWireless)
function Modem.isWireless() end
