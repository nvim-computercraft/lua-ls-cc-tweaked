---@meta

---A HTTP response. This provides the same methods as a file as well as some response-specific methods
---@class Response
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
Response = {}

---Get the response code and message returned by the server
---@return number code The response code (e.g. 200)
---@return string message The response message (e.g. "OK")
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response:getResponseCode)
function Response.getResponseCode() end

---Get the [response headers](https://developer.mozilla.org/en-US/docs/Glossary/Response_header)
---
---If multiple headers are sent with the same name, they will be combined with a
---comma
---@return table<HTTP_RESPONSE_HEADERS, string>
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response:getResponseHeaders)
function Response.getResponseHeaders() end

---Read a single line from the response
---@param includeNewline? boolean If any trailing newline characters should be included. Defaults to false
---@return string|nil line The read line or nil if the end of the response has been reached
---@throws If the response has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function Response.readLine(includeNewline) end

---Read the remainder of the response
---@return string|nil contents The remaining contents of the response or nil if at the end of the response
---@throws If the response has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function Response.readAll() end

---Read characters from the response
---@param count? number The number of characters to read. Defaults to 1
---@return string|nil characters The read character(s) or nil if at the end of the response
---@throws When trying to read a negative number of characters
---@throws If the response has been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function Response.read(count) end

---Close the response
---
---Once closed, it can no longer be read unless it is re-requested
---@throws If the response has already been closed
------
---[Official Documentation](https://tweaked.cc/module/http.html#ty:Response)
function Response.close() end
