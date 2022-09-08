---@meta

---A pretty printer for formatting text in a stylized manner.
---
---Printing uses document objects to structure the text. These documents will be
---used to print the most compact layout possible
---
---Based on [*A Prettier Printer*](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf)
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html)
pretty = {}

---A document contains formatted text with multiple possible layouts.
---@class Doc

---An empty document
---@type Doc
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:empty)
pretty.empty = nil

---A document with a single space in it
---@type Doc
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:space)
pretty.space = nil

---A line break, however when in a group and everything can fit on one line, is
---replaced with `empty`
---@type Doc
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:line)
pretty.line = nil

---A line break, however when in a group and everything can fit on one line, is
---replaced with `space`
---@type Doc
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:space_line)
pretty.space_line = nil

---Create a new `Doc` from a string
---@param text string The string to construct a document from
---@param color? color The color to print the text in. Defaults to the current color
---@return Doc doc The document containing the provided text
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:text)
function pretty.text(text, color) end

---Concatenate multiple documents into one
---@param ... Doc|string The documents to concat
---@return Doc doc The concatenated document
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:concat)
function pretty.concat(...) end

---Indents the following lines in the provided document using spaces
---@param depth integer The number of spaces to indent to
---@param doc Doc The document to indent
---@return Doc doc The nested document
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:nest)
function pretty.nest(depth, doc) end

---Build a document that is displayed on a single line if there is enough room
---or as normal if not
---@param doc Doc The document to make a group
---@return Doc doc The grouped document
---## Example
---```
---local pretty = require("cc.pretty")
---
---pretty.print(
---    pretty.group(
---        pretty.concat("Hello", pretty.space_line, "World!")
---    )
---)
---```
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:group)
function pretty.group(doc) end

---Write a doc to the terminal
---@param doc Doc The document to write
---@param maxWidth? number The maximum fraction of the screen width that can be written to before wrapping. Defaults to 0.6
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:write)
function pretty.write(doc, maxWidth) end

---Print a doc to the terminal with a trailing new line
---@param doc Doc The document to write
---@param maxWidth? number The maximum fraction of the screen width that can be written to before wrapping. Defaults to 0.6
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:print)
function pretty.print(doc, maxWidth) end

---Render a document into a string
---@param doc Doc The document to render
---@param width? number The maximum width of this document. Long strings will not be wrapped to fit this width, it is just used for finding the best layout
---@param maxWidth? number The maximum fraction of the screen width that can be written to before wrapping. Defaults to 0.6
---@return string rendered The rendered string
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:render)
function pretty.render(doc, width, maxWidth) end

---@class prettyOptions
---@field function_args boolean Show the arguments to a function if known, defaults to false
---@field function_source boolean Show where a function was defined, defaults to false

---Convert an object into a document that can then be displayed with `write` or `print`
---@param obj any The object to convert to a document
---@param options? prettyOptions Options for how certain things are displayed
---@return Doc doc The formatted document
---## Example
---```
---local pretty = require "cc.pretty"
---pretty.print(pretty.pretty({ 1, 2, 3 }))
---```
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:pretty)
function pretty.pretty(obj, options) end

---A shorthand that calls `pretty` and `print`
---@param obj any The object to print
---@param options? prettyOptions Options for how certain things are displayed
---@param maxWidth? number The maximum fraction of the screen width that can be written to before wrapping. Defaults to 0.6
---## Example
---```
---local pretty = require "cc.pretty"
---pretty.pretty_print({ 1, 2, 3 })
---```
------
---[Official Documentation](https://tweaked.cc/library/cc.pretty.html#v:pretty_print)
function pretty.pretty_print(obj, options, maxWidth) end

return pretty
