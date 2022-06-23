---@meta

---@class Window: Redirect
Window = {}

---Get the buffered contents of a given line in this window
---@param y integer The y position of the line to get
---@return string content The text content of this line
---@return string textBlit The text colors of this line, suitable for use with `term.blit()`
---@return string backgroundBlit The background colors of this line, suitable for use with `term.blit()`
---@throws If `y` is not between 1 and this window's height
------
---[Official Documentation](https://tweaked.cc/module/window.html#ty:Window:getLine)
function Window.getLine(y) end

---Set whether this window is visible
---@param visible boolean If this window should be visible
------
---[Official Documentation](https://tweaked.cc/module/window.html#ty:Window:setVisible)
function Window.setVisible(visible) end

---Get whether this window is visible
---@return boolean visible If this window is visible
------
---[Official Documentation](https://tweaked.cc/module/window.html#ty:Window:isVisible)
function Window.isVisible() end

---Draw this window
---
---⚠️ This does nothing if the window is set to be invisible
---
------
---[Official Documentation](https://tweaked.cc/module/window.html#ty:Window:redraw)
function Window.redraw() end

---Set the current terminal's cursor to where this window's cursor is
---
---⚠️ This does nothing if the window is set to be invisible
---
------
---[Official Documentation](https://tweaked.cc/module/window.html#ty:Window:restoreCursor)
function Window.restoreCursor() end

---Get the position of the top left corner of this window
---@return number x The x position of this window
---@return number y The y position of this window
------
---[Official Documentation](https://tweaked.cc/module/window.html#ty:Window:getPosition)
function Window.getPosition() end

---Reposition, resize, or change the inheritance of this window
---
---🗒️ If you are changing the size of this window, it is recommended to fire a
---`term_resize` event to allow programs to adjust their scaling
---@param x number The new x position of this window
---@param y number The new y position of this window
---@param w? number The new width of this window
---@param h? number The new height of this window
---@param parent? Redirect|Monitor The new `Redirect` that this window should be drawn to
------
---[Official Documentation](https://tweaked.cc/module/window.html#ty:Window:reposition)
function Window.reposition(x, y, w, h, parent) end
