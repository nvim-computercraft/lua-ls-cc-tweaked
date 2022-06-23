---@meta

---The window API lets you create `Window` objects for redirecting the terminal
---to smaller windows
---
------
---[Official Documentation](https://tweaked.cc/module/window.html)
window = {}

---Create a `Window` object that can be used as a terminal redirect
---@param parent Redirect|Monitor The parent terminal to draw to
---@param x number The x position of this window within the parent
---@param y number The y position of this window within the parent
---@param width number The width of this window
---@param height number The height of this window
---@param visible? boolean If this window should immediately be visible (defaults to true)
---@return Window window The window object
------
---[Official Documentation](https://tweaked.cc/module/window.html#v:create)
function window.create(parent, x, y, width, height, visible) end
