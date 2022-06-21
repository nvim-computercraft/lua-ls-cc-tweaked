---@meta

---Contains utilities for drawing graphics such as pixels, lines, and images
---
------
---[Official Documentation](https://tweaked.cc/module/paintutils.html)
paintutils = {}

---Parse an image from a multi-line string
---@param image string A string containing the raw image data
---@return table imageData The parsed image data, for use with `paintutils.drawImage()`
------
---[Official Documentation](https://tweaked.cc/module/paintutils.html#v:parseImage)
function paintutils.parseImage(image) end

---Loads an image from a file
---
---These image files can be created using the `paint` program
---@param path path The file to load
---@return table|nil imageData The parsed image data, for use with `paintutils.drawImage()`, or `nil` if the file does not exist
---## Example
---```
---local image = paintutils.loadImage("data/example.nfp")
---paintutils.drawImage(image, term.getCursorPos())
---```
------
---[Official Documentation](https://tweaked.cc/module/paintutils.html#v:loadImage)
function paintutils.loadImage(path) end

---Draws a single pixel to the current terminal
---
---`1, 1` is the top left of the terminal screen
---
---⚠️ This may change the position of the cursor and the background color. Neither may be preserved
---@param x number The x position to draw at
---@param y number The y position to draw at
---@param color? color The color to use for this pixel. If omitted, the color will default to the current background color
------
---[Official Documentation](https://tweaked.cc/module/paintutils.html#v:drawPixel)
function paintutils.drawPixel(x, y, color) end

---Draws a straight line between the two coordinates to the current terminal
---
---`1, 1` is the top left of the terminal screen
---
---⚠️ This may change the position of the cursor and the background color. Neither may be preserved
---@param x number The x position to start drawing at
---@param y number The y position to start drawing at
---@param x2 number The x position to stop drawing at
---@param y2 number The y position to stop drawing at
---@param color? color The color to use for this line. If omitted, the color will default to the current background color
------
---[Official Documentation](https://tweaked.cc/module/paintutils.html#v:drawLine)
function paintutils.drawLine(x, y, x2, y2, color) end

---Draws the outline if a box to the current terminal
---
---`1, 1` is the top left of the terminal screen
---
---⚠️ This may change the position of the cursor and the background color. Neither may be preserved
---@param x number The x position to start drawing at
---@param y number The y position to start drawing at
---@param x2 number The x position to stop drawing at
---@param y2 number The y position to stop drawing at
---@param color? color The color to use for this box. If omitted, the color will default to the current background color
------
---[Official Documentation](https://tweaked.cc/module/paintutils.html#v:drawBox)
function paintutils.drawBox(x, y, x2, y2, color) end

---Draws a filled box to the current terminal
---
---`1, 1` is the top left of the terminal screen
---
---⚠️ This may change the position of the cursor and the background color. Neither may be preserved
---@param x number The x position to start drawing at
---@param y number The y position to start drawing at
---@param x2 number The x position to stop drawing at
---@param y2 number The y position to stop drawing at
---@param color? color The color to use for this box. If omitted, the color will default to the current background color
------
---[Official Documentation](https://tweaked.cc/module/paintutils.html#v:drawFilledBox)
function paintutils.drawFilledBox(x, y, x2, y2, color) end

---Draw an image that was loaded by `paintutils.parseImage()` or `paintutils.loadImage()`
---@param image table The parsed image data
---@param x number The x position to start drawing at
---@param y number The y position to start drawing at
------
---[Official Documentation](https://tweaked.cc/module/paintutils.html#v:drawImage)
function paintutils.drawImage(image, x, y) end
