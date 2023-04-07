---@meta

---A base class for all objects that interact with a terminal (e.g. `term` and monitors)
---@class Redirect
Redirect = {}

---Write `text` at the current cursor position, moving the cursor to the end of the text
---
---🗒️Unlike `_G.write()` and `_G.print()`, this function does not wrap text
---@param text string|number The text to write
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:write)
function Redirect.write(text) end

---Move all positions up or down
---@param y number The number of lines to move by (can be negative)
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:scroll)
function Redirect.scroll(y) end

---Get the current position of the cursor
---@return integer x The current x position
---@return integer y The current y position
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getCursorPos)
function Redirect.getCursorPos() end

---Set the position of the cursor
---@param x number The new x position
---@param y number The new y position
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setCursorPos)
function Redirect.setCursorPos(x, y) end

---Check if the cursor is currently blinking
---@return boolean isBlinking If the cursor is currently blinking
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getCursorBlink)
function Redirect.getCursorBlink() end

---Set whether the cursor should be visible and blinking at the current cursor position
---@param blink boolean If the cursor should be blinking
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setCursorBlink)
function Redirect.setCursorBlink(blink) end

---Get the size of the terminal
---@return integer width The terminal's width
---@return integer height The terminal's height
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getSize)
function Redirect.getSize() end

---Clears the terminal, filling it with the current background color
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:clear)
function Redirect.clear() end

---Clears the line the cursor is on, filling it with the current background color
---
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:clearLine)
function Redirect.clearLine() end

---Get the current text color that text would be drawn in
---@return color textColor The current text color
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getTextColor)
function Redirect.getTextColor() end

---Get the current text colour that text would be drawn in
---@return color textColour The current text colour
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getTextColour)
function Redirect.getTextColour() end

---Set the colour that text should be drawn in
---@param colour color The new colour text should be drawn in
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setTextColour)
function Redirect.setTextColour(colour) end

---Set the color that text should be drawn in
---@param color color The new color text should be drawn in
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setTextColor)
function Redirect.setTextColor(color) end

---Get the current background colour
---
---This is used when writing text and clearing the terminal
---@return color backgroundColour The current background colour
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getBackgroundColour)
function Redirect.getBackgroundColour() end

---Get the current background color
---
---This is used when writing text and clearing the terminal
---@return color backgroundColor The current background color
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getBackgroundColor)
function Redirect.getBackgroundColor() end

---Set the current background colour
---
---This is used when writing text and clearing the terminal
---@param colour color The new background colour that should be used
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setBackgroundColour)
function Redirect.setBackgroundColour(colour) end

---Set the current background color
---
---This is used when writing text and clearing the terminal
---@param color color The new background color that should be used
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setBackgroundColor)
function Redirect.setBackgroundColor(color) end

---Get whether this terminal supports colour
---
---Terminals which don't support colour still allow writing coloured
---text/backgrounds, but it will be displayed in greyscale
---@return boolean isColour Whether this terminal supports colour or not
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:isColour)
function Redirect.isColour() end

---Get whether this terminal supports color
---
---Terminals which don't support color still allow writing colored
---text/backgrounds, but it will be displayed in greyscale
---@return boolean isColor Whether this terminal supports color or not
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:isColor)
function Redirect.isColor() end

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
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:blit)
function Redirect.blit(text, textColor, backgroundColor) end

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
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setPaletteColour)
function Redirect.setPaletteColour(index, colour) end

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
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setPaletteColour)
function Redirect.setPaletteColour(index, r, g, b) end

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
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setPaletteColor)
function Redirect.setPaletteColor(index, color) end

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
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:setPaletteColor)
function Redirect.setPaletteColor(index, r, g, b) end

---Get the current colour value for a specific colour from the palette
---@param colour color The colour to get the value of
---@return number red The red channel (0 - 1)
---@return number green The green channel (0 - 1)
---@return number blue The blue channel (0 - 1)
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getPaletteColour)
function Redirect.getPaletteColour(colour) end

---Get the current color value for a specific color from the palette
---@param color color The color to get the value of
---@return number red The red channel (0 - 1)
---@return number green The green channel (0 - 1)
---@return number blue The blue channel (0 - 1)
------
---[Official Documentation](https://tweaked.cc/module/term.html#ty:Redirect:getPaletteColor)
function Redirect.getPaletteColor(color) end
