---@meta

---A
---[websocket](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API)
---that can be used to send/receive messages to/from a web server
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Websocket)
---@class Websocket
Websocket = {}

---Wait for a message from the server
---@param timeout? number The number of seconds to wait for a message. Default to never timing out
---@return string|nil response The received message or `nil` if the websocket was closed while waiting or the timeout was reached
---@return boolean isBinary If this is a binary message
---@throws If the websocket has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Websocket:receive)
function Websocket.receive(timeout) end

---Send a message to the server
---@param message any The message to send
---@param binary? boolean If this message is binary or not
---@throws If the message is too large
---@throws If the websocket has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Websocket:send)
function Websocket.send(message, binary) end

---Close the websocket connection meaning you can no longer send or receive on it
---
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Websocket:close)
function Websocket.close() end
