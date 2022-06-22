---@meta

---The printer peripheral allows you to print pages and books
---
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html)
---@class Printer
Printer = {}

---Writes text to the currently active page
---@param ... string|number The values to write to the current page
---@throws If no page is started
---@throws If any values couldn't be converted to a string
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:write)
function Printer.write(...) end

---Get the current position of the cursor on the page
---@return number x The x position of the cursor
---@return number y The y position of the cursor
---@throws If a page isn't being printed
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:getCursorPos)
function Printer.getCursorPos() end

---Set the current position of the cursor on the page
---@param x number The new x coordinate of the cursor
---@param y number The new y coordinate of the cursor
---@throws If a page isn't being printed
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:setCursorPos)
function Printer.setCursorPos(x, y) end

---Get the size of the current page
---@return number width The width of the current page
---@return number height The height of the current page
---@throws If a page isn't being printed
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:getPageSize)
function Printer.getPageSize() end

---Starts printing a new page
---@return boolean success Whether a new page could be started or not
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:newPage)
function Printer.newPage() end

---Finish printing the current page and feed it into the output tray
---@return boolean success Whether the page could be finalized or not
---@throws If a page isn't being printed
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:endPage)
function Printer.endPage() end

---Set the title of the current page
---@param title? string The title to set for the current page
---@throws If a page isn't being printed
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:setPageTitle)
function Printer.setPageTitle(title) end

---Get the amount of ink remaining in the printer
---@return number ink The amount of ink left in the printer
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:getInkLevel)
function Printer.getInkLevel() end

---Get the amount of paper left in the printer
---@return number pages The amount of paper left in the printer
------
---[Official Documentation](https://tweaked.cc/peripheral/printer.html#v:getPaperLevel)
function Printer.getPaperLevel() end
