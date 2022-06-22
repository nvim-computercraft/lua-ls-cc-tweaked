---@meta

---The rednet API provides a layer of abstraction on top of the modem peripheral
---in order to make communicating between computers easier
---
---### Basic Usage
---In order to send and receive message between two computers, they must have a
---modem attached. They can then use `rednet.open()` to start sending and
---receiving messages
---
---⚠️ Unintended computers could be listening in to messages or pretending to be
---other computers. Encrypting/signing your messages would help increase the
---security of your messages
---
---### Protocols
---Protocols provide a basic means to filter messages being sent over rednet and
---offer a basic sort of DNS that allows you to discover other computers by
---their friendly hostname
---
------
---[Official Documentation](https://tweaked.cc/module/rednet.html)
rednet = {}

---The channel that messages will be sent on by `rednet.broadcast()`
---
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:CHANNEL_BROADCAST)
rednet.CHANNEL_BROADCAST = 65535

---The channel used to repeat messages
---
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:CHANNEL_REPEAT)
rednet.CHANNEL_REPEAT = 65535

---The highest channel reserved by rednet for computer IDs. Computers with IDs
---greater or equal to this limit will wrap back around to 0
---
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:MAX_ID_CHANNELS)
rednet.MAX_ID_CHANNELS = 65500

---Open a modem, allowing it to send and receive on rednet
---
---This opens two channels on the modem, one matching the ID of this computer,
---and another matching the value of `rednet.CHANNEL_BROADCAST`
---@param modem string|computerSide The name/side of the modem to open
---@throws If there is no modem with the given name
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:open)
function rednet.open(modem) end

---Close a modem, preventing it from sending or receiving on rednet
---@param modem? string|computerSide The name/side of the modem to close. If omitted, all modems will be closed
---@throws If there is no modem with the given name
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:close)
function rednet.close(modem) end

---Get whether a modem is currently open on rednet
---@param modem string|computerSide The name/side of the modem to check. If omitted, all modems will be checked
---@return boolean isOpen If the modem is open
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:isOpen)
function rednet.isOpen(modem) end

---Send a message to a target computer
---@param recipient integer The ID of the computer to send the message to
---@param message number|boolean|string|table The message to send
---@param protocol? string The protocol to send the message under
---@return boolean success If the message was sent (does not guarantee that the message was received)
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:send)
function rednet.send(recipient, message, protocol) end

---Broadcast a message over the channel defined by `rednet.CHANNEL_BROADCAST`
---
---Every device listening on rednet can receive broadcasted messages
---@param message number|boolean|string|table The message to broadcast
---@param protocol string The protocol to broadcast the message under
-------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:broadcast)
function rednet.broadcast(message, protocol) end

---Receive a message over rednet
---@param protocol? string The protocol to exclusively receive messages under
---@param timeout? number The number of seconds to wait if no message is received
---@return number|nil sender The ID of the computer which sent the message or `nil` if the timeout was reached and no message was received
---@return nil|number|boolean|string|table message The received message
---@return nil|string protocol The protocol the message was sent under
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:receive)
function rednet.receive(protocol, timeout) end

---Register this computer as hosting a specific protocol under the provided
---hostname. This allows other computers to find this one by using
---`rednet.lookup()`
---
---No two computers can share the same hostname and the hostname `localhost` is reserved. They can only share hostnames in the following scenarios:
---- They are hosting different protocols
---- They join the same network after registering
---@param protocol string The protocol this computer provides
---@param hostname string The name this computer exposes for this protocol
---@throws If the requested hostname is reserved or already in use
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:host)
function rednet.host(protocol, hostname) end

---Stop hosting a certain protocol, preventing this computer from responding to
---`rednet.lookup()` requests
---@param protocol string The protocol to unregister from
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:unhost)
function rednet.unhost(protocol) end

---Search the network for computers hosting a specific protocol
---@param protocol string The protocol to perform a lookup on
---@param hostname? string The hostname to search for
---@return number|nil ... The IDs of any computers that match the search critera
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:lookup)
function rednet.lookup(protocol, hostname) end

---Listen for modem messages and convert them into rednet messages, ready for
---receiving through `rednet.receive()`
---
---⚠️ This is called on startup and should not be called manually
---
------
---[Official Documentation](https://tweaked.cc/module/rednet.html#v:run)
function rednet.run() end
