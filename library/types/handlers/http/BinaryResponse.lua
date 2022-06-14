---@meta

---A HTTP response. This provides the same methods as a file as well as some response-specific methods
---@class BinaryResponse
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
BinaryResponse = {}

---Get the response code and message returned by the server
---@return number code The response code (e.g. 200)
---@return string message The response message (e.g. "OK")
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response:getResponseCode)
function BinaryResponse.getResponseCode() end

---Get the [response headers](https://developer.mozilla.org/en-US/docs/Glossary/Response_header)
---
---If multiple headers are sent with the same name, they will be combined with a
---comma
---@return table<HTTP_RESPONSE_HEADERS, string>
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response:getResponseHeaders)
function BinaryResponse.getResponseHeaders() end

---Read a single line from the response
---@param includeNewline? boolean If any trailing newline characters should be included. Defaults to false
---@return string|nil line The read line or nil if the end of the response has been reached
---@throws If the response has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function BinaryResponse.readLine(includeNewline) end

---Read the remainder of the response
---@return string|nil contents The remaining contents of the response or nil if at the end of the response
---@throws If the response has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function BinaryResponse.readAll() end

---Read a number of bytes from the response
---@param count number The number of bytes to read
---@return string|nil byte The byte as a string or nil when the end of the response is reached
---@throws When trying to read a negative number of bytes
---@throws If the response has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function BinaryResponse.read(count) end

---Read a byte from the response
---@return ASCII|nil byte The byte as an [ASCII code](https://www.rapidtables.com/code/text/ascii-table.html)
---@throws If the response has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function BinaryResponse.read() end

---Close the response
---
---Once closed, it can no longer be read unless it is re-requested
---@throws If the response has already been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function BinaryResponse.close() end

---Seek to a new position in the response. The new position is an offset relative to `whence`
---@param whence seekWhence What `offset` is relative to
---@param offset number The offset to seek to
---@return number|nil newPosition The new response read position relative to the start of the response or nil if seeking failed
---@return string|nil errorMessage The reason seeking failed
---@throws If the response has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function BinaryResponse.seek(whence, offset) end
