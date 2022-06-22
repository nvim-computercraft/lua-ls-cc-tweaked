---@meta

---Monitors are a block that can display the terminal on one side. This allows
---them to be viewed and interacted with without opening a GUI
---
---Monitors act as terminal redirects and share the same methods, as well as some additional ones
---
---Like computers, monitors come in both normal (no color) and advanced (color) varieties
---
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html)
---@class Monitor
Monitor = {}

---Set the scale of text on this monitor. A larger scale will have a lower resolution but larger text
---@param scale number The scale of the monitor. Must be a multiple of 0.5 between 0.5 and 5
---@throws If the `scale` is out of range
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setTextScale)
function Monitor.setTextScale(scale) end

---Get the current text scale
---@return number scale The current text scale for this monitor
---@throws If the monitor cannot be found
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getTextScale)
function Monitor.getTextScale() end

---Write `text` at the current cursor position, moving the cursor to the end of the text
---
---🗒️Unlike `_G.write()` and `_G.print()`, this function does not wrap text
---@param text string The text to write
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:write)
function Monitor.write(text) end

---Move all positions up or down
---@param y number The number of lines to move by (can be negative)
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:scroll)
function Monitor.scroll(y) end

---Get the current position of the cursor
---@return number x The current x position
---@return number y The current y position
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getCursorPos)
function Monitor.getCursorPos() end

---Set the position of the cursor
---@param x number The new x position
---@param y number The new y position
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setCursorPos)
function Monitor.setCursorPos(x, y) end

---Check if the cursor is currently blinking
---@return boolean isBlinking If the cursor is currently blinking
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getCursorBlink)
function Monitor.getCursorBlink() end

---Set whether the cursor should be visible and blinking at the current cursor position
---@param blink boolean If the cursor should be blinking
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setCursorBlink)
function Monitor.setCursorBlink(blink) end

---Get the size of the terminal
---@return number width The terminal's width
---@return number height The terminal's height
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getSize)
function Monitor.getSize() end

---Clears the terminal, filling it with the current background color
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:clear)
function Monitor.clear() end

---Clears the line the cursor is on, filling it with the current background color
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:clearLine)
function Monitor.clearLine() end

---Get the current text color that text would be drawn in
---@return color textColor The current text color
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getTextColor)
function Monitor.getTextColor() end

---Get the current text colour that text would be drawn in
---@return color textColour The current text colour
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getTextColour)
function Monitor.getTextColour() end

---Set the colour that text should be drawn in
---@param colour color The new colour text should be drawn in
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setTextColour)
function Monitor.setTextColour(colour) end

---Set the color that text should be drawn in
---@param color color The new color text should be drawn in
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setTextColor)
function Monitor.setTextColor(color) end

---Get the current background colour
---
---This is used when writing text and clearing the terminal
---@return color backgroundColour The current background colour
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getBackgroundColour)
function Monitor.getBackgroundColour() end

---Get the current background color
---
---This is used when writing text and clearing the terminal
---@return color backgroundColor The current background color
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getBackgroundColor)
function Monitor.getBackgroundColor() end

---Set the current background colour
---
---This is used when writing text and clearing the terminal
---@param colour color The new background colour that should be used
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setBackgroundColour)
function Monitor.setBackgroundColour(colour) end

---Set the current background color
---
---This is used when writing text and clearing the terminal
---@param color color The new background color that should be used
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setBackgroundColor)
function Monitor.setBackgroundColor(color) end

---Get whether this terminal supports colour
---
---Terminals which don't support colour still allow writing coloured
---text/backgrounds, but it will be displayed in greyscale
---@return boolean isColour Whether this terminal supports colour or not
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:isColour)
function Monitor.isColour() end

---Get whether this terminal supports color
---
---Terminals which don't support color still allow writing colored
---text/backgrounds, but it will be displayed in greyscale
---@return boolean isColor Whether this terminal supports color or not
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:isColor)
function Monitor.isColor() end

---Writes `text` to the terminal with the specified text and background colors
---
---The cursor will be moved to the end of the text after writing
---
---`textColor` and `backgroundColor` must both be strings and the same length as
---`text`. Each of their characters represent a single hexadecimal digit, which
---is converted to a color
---@param text string The text to write
---@param textColor string A string of hexadecimal values that correspond to colors from the `colors` API
---@param backgroundColor string A string of hexadecimal values that correspond to colors from the `colors` API
---@throws If the inputs are not all of the same length
---## Example
---```
---term.blit("Hello, world!","01234456789ab","0000000000000")
---```
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:blit)
function Monitor.blit(text, textColor, backgroundColor) end

---Set the value for a specific colour from CC's palette
---
---While you still can't have more than 16 colours, you can change what values
---are available. For example, you can change `colors.red` to `#FF0000` for it to
---be *more* red
---@param index color The colour that should be changed
---@param colour integer A 24 bit integer representing the RGB value of a colour
---## Example
---```
---term.setPaletteColour(colors.red, 0xFF0000)
---```
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setPaletteColour)
function Monitor.setPaletteColour(index, colour) end

---Set the value for a specific colour from CC's palette
---
---While you still can't have more than 16 colours, you can change what values
---are available. For example, you can change `colors.red` to `1, 0, 0` for it to
---be *more* red
---@param index color The colour that should be changed
---@param r number The red channel value
---@param g number The green channel value
---@param b number The blue channel value
---## Example
---```
---term.setPaletteColour(colors.red, 1, 0, 0)
---```
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setPaletteColour)
function Monitor.setPaletteColour(index, r, g, b) end

---Set the value for a specific color from CC's palette
---
---While you still can't have more than 16 colors, you can change what values
---are available. For example, you can change `colors.red` to `#FF0000` for it to
---be *more* red
---@param index color The color that should be changed
---@param color integer A 24 bit integer representing the RGB value of a color
---## Example
---```
---term.setPaletteColor(colors.red, 0xFF0000)
---```
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setPaletteColor)
function Monitor.setPaletteColor(index, color) end

---Set the value for a specific color from CC's palette
---
---While you still can't have more than 16 colors, you can change what values
---are available. For example, you can change `colors.red` to `1, 0, 0` for it to
---be *more* red
---@param index color The color that should be changed
---@param r number The red channel value
---@param g number The green channel value
---@param b number The blue channel value
---## Example
---```
---term.setPaletteColor(colors.red, 1, 0, 0)
---```
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:setPaletteColor)
function Monitor.setPaletteColor(index, r, g, b) end

---Get the current colour value for a specific colour from the palette
---@param colour color The colour to get the value of
---@return number red The red channel (0 - 1)
---@return number green The green channel (0 - 1)
---@return number blue The blue channel (0 - 1)
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getPaletteColour)
function Monitor.getPaletteColour(colour) end

---Get the current color value for a specific color from the palette
---@param color color The color to get the value of
---@return number red The red channel (0 - 1)
---@return number green The green channel (0 - 1)
---@return number blue The blue channel (0 - 1)
------
---[Official Documentation](https://tweaked.cc/peripheral/monitor.html#v:getPaletteColor)
function Monitor.getPaletteColor(color) end
