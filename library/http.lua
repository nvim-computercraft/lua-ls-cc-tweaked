---@meta

---An API for making [HTTP
---requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods). Allows
---sending/receiving data to/from a web server.
---
---[Making requests to local IPs](https://tweaked.cc/guide/local_ips.html) is
---blocked by default but can be enabled in the configuration file.
------
---[Official Documentation](https://tweaked.cc/module/http.html)
http = {}

---Asynchronously make a
---[GET](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/GET) or
---[POST](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/POST) request
---
---When the request is completed, the `http_success` or `http_failure` event will be fired.
---@async
---@param url string The URL to make the request to
---@param body? string The body of the request. If provided, a [POST](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/POST) request will be made
---@param headers? table<HTTP_REQUEST_HEADERS, string> The [request headers](https://developer.mozilla.org/en-US/docs/Glossary/Request_header)
---@param binary? boolean If the request should be a binary request. If true, the body will not be UTF-8 encoded and the response will not be decoded
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:request)
function http.request(url, body, headers, binary) end

---Asynchronously make a [HTTP request](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)
---
---When the request is completed, the `http_success` or `http_failure` event will be fired.
---@async
---@param request HTTP_REQUEST
---## Request Parameter Shape
---```
---request = {
---    url: string, -- The URL to make the request to
---    body?: string, -- The body of the request, if it has one
---    headers?: {[string] = string}, -- The request headers
---    binary?: boolean, -- If the request should be a binary request. If true, the body will not be UTF-8 encoded and the response will not be decoded
---    method?: string, -- The HTTP method to use
---    redirect?: boolean -- Whether HTTP redirects should be followed. Defaults to true
---}
---```
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:request)
function http.request(request) end

---Make a [GET](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/GET) request
---@param url string The URL to make the request to
---@param headers? table<HTTP_REQUEST_HEADERS, string> The [request headers](https://developer.mozilla.org/en-US/docs/Glossary/Request_header)
---@param binary? boolean If the request should be a binary request. If true, the body will not be UTF-8 encoded and the response will not be decoded
---@return Response|BinaryResponse|nil response The HTTP response object. `nil` when the request fails
---@return string message Why the request failed
---@return nil|Response|BinaryResponse failedResponse The response object for the failed request, if available
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:get)
function http.get(url, headers, binary) end

---Make a HTTP request
---@param request HTTP_REQUEST
---@return Response|BinaryResponse|nil response The HTTP response object. `nil` when the request fails
---@return string message Why the request failed
---@return nil|Response|BinaryResponse failedResponse The response object for the failed request, if available
---## Request Parameter Shape
---```
---request = {
---    url: string, -- The URL to make the request to
---    body?: string, -- The body of the request, if it has one
---    headers?: {[string] = string}, -- The request headers
---    binary?: boolean, -- If the request should be a binary request. If true, the body will not be UTF-8 encoded and the response will not be decoded
---    method?: string, -- The HTTP method to use
---    redirect?: boolean -- Whether HTTP redirects should be followed. Defaults to true
---}
---```
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:get)
function http.get(request) end

---Make a [POST](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/POST) request
---@param url string The URL to make the request to
---@param body string The body of the [POST](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/POST) request
---@param headers? table<HTTP_REQUEST_HEADERS, string> The [request headers](https://developer.mozilla.org/en-US/docs/Glossary/Request_header)
---@param binary? boolean If the request should be a binary request. If true, the body will not be UTF-8 encoded and the response will not be decoded
---@return Response|BinaryResponse|nil response The HTTP response object. `nil` when the request fails
---@return string message Why the request failed
---@return nil|Response|BinaryResponse failedResponse The response object for the failed request, if available
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:post)
function http.post(url, body, headers, binary) end

---Make a HTTP request
---@param request HTTP_REQUEST
---@return Response|BinaryResponse|nil response The HTTP response object. `nil` when the request fails
---@return string message Why the request failed
---@return nil|Response|BinaryResponse failedResponse The response object for the failed request, if available
---## Request Parameter Shape
---```
---request = {
---    url: string, -- The URL to make the request to
---    body?: string, -- The body of the request, if it has one
---    headers?: {[string] = string}, -- The request headers
---    binary?: boolean, -- If the request should be a binary request. If true, the body will not be UTF-8 encoded and the response will not be decoded
---    method?: string, -- The HTTP method to use
---    redirect?: boolean -- Whether HTTP requests should be followed. Defaults to true
---}
---```
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:post)
function http.post(request) end

---Asynchronously determine if a URL can be requested
---
---This will immediately return if the URL entered is itself invalid. You will
---then want to listen to the `http_check` event which will contain more info on
---if the URL can be requested.
---@async
---@param url string The URL to check
---@return boolean valid If the URL is valid. It could still 404, this is just confirming the URL is valid (read above)
---@return nil|string message Why the URL is invalid (e.g. blocked, malformed, etc.)
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:checkURLAsync)
function http.checkURLAsync(url) end

---Determine if a URL can be requested
---@param url string The URL to check
---@return boolean valid If the URL can be requested
---@return nil|string message Why the URL cannot be requested (e.g. blocked, malformed, etc.)
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:checkURL)
function http.checkURL(url) end

---Open a websocket
---@param url string The URL of the websocket to connect to. Should use the `ws://` or `wss://` protocol
---@param headers? table<string, string> Headers to send for the handshake
---@return Websocket|false websocket The websocket connection object or false if it failed to connect
---@return string message Why the websocket failed to connect
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:websocket)
function http.websocket(url, headers) end

---Asynchronously open a websocket
---
---Returns immediately and a `websocket_success` or `websocket_failure` event will be fired when the request is completed
---@param url string The URL of the websocket to connect to. Should use the `ws://` or `wss://` protocol
---@param headers? table<string, string> Headers to send for the handshake
------
---[Official Documentation](https://tweaked.cc/module/http.html#v:websocketAsync)
function http.websocketAsync(url, headers) end
