---@meta

---Contains constants and functions for colour values. Useful in conjunction
---with Bundled Cables from mods like [Project
---Red](https://projectredwiki.com/wiki/Main_Page), and colors on Advanced
---Computers and Advanced Monitors.
---
---For a British English version, replace colors with colours. This alternative
---API is exactly the same except the colours use British English (e.g.
---colors.gray is spelt colours.grey).
---
---On basic non-color terminals, all the colors are converted to grayscale. This
---means you can still use all 16 colors on the screen, but they will appear as
---the nearest tint of gray. You can check if a terminal supports color by using
---the function `term.isColor`. Grayscale colors are calculated by taking the
---average of the three components, i.e. `(red + green + blue) / 3`.
------
---[Official Documentation](https://tweaked.cc/module/colors.html)
colors = {}

---**Hex**: `#F0F0F0`\
---**RGB**: `240, 240, 240`
---@type color
colors.white = 1

---**Hex**: `#F2B233`\
---**RGB**: `242, 178, 51`
---@type color
colors.orange = 2

---**Hex**: `#E57FD8`\
---**RGB**: `229, 127, 216`
---@type color
colors.magenta = 4

---**Hex**: `#99B2F2`\
---**RGB**: `153, 178, 242`
---@type color
colors.lightBlue = 8

---**Hex**: `#DEDE6C`\
---**RGB**: `222, 222, 108`
---@type color
colors.yellow = 16

---**Hex**: `#7FCC19`\
---**RGB**: `127, 204, 25`
---@type color
colors.lime = 32

---**Hex**: `#F2B2CC`\
---**RGB**: `242, 178, 204`
---@type color
colors.pink = 64

---**Hex**: `#4C4C4C`\
---**RGB**: `76, 76, 76`
---@type color
colors.gray = 128

---**Hex**: `#999999`\
---**RGB**: `153, 153, 153`
---@type color
colors.lightGray = 256

---**Hex**: `#4C99B2`\
---**RGB**: `76, 153, 178`
---@type color
colors.cyan = 512

---**Hex**: `#B266E5`\
---**RGB**: `178, 102, 229`
---@type color
colors.purple = 1024

---**Hex**: `#3366CC`\
---**RGB**: `51, 102, 204`
---@type color
colors.blue = 2048

---**Hex**: `#7F664C`\
---**RGB**: `127, 102, 76`
---@type color
colors.brown = 4096

---**Hex**: `#57A64E`\
---**RGB**: `87, 166, 78`
---@type color
colors.green = 8192

---**Hex**: `#CC4C4C`\
---**RGB**: `204, 76, 76`
---@type color
colors.red = 16384

---**Hex**: `#111111`\
---**RGB**: `17, 17, 17`
---@type color
colors.black = 32768

---Combines colors into a set. Useful for Bundled Cables
---@vararg color
---@return colorSet set The result of combining the provided colors
---## Example
---```
---colors.combine(colors.white, colors.magenta, colours.lightBlue)
-----> 13
---```
------
---[Official Documentation](https://tweaked.cc/module/colors.html#v:combine)
function colors.combine(...) end

---Removes one or more colors from a set. Useful for Bundled Cables.
---@param color color The color to subtract from
---@vararg color
---@return colorSet set The result of subtracting the provided colors
---## Example
---```
---colors.subtract(colours.lime, colours.orange, colours.white)
-----> 32
---```
------
---[Official Documentation](https://tweaked.cc/module/colors.html#v:subtract)
function colors.subtract(color, ...) end

---Test whether a color is contained within a color set
---@param set colorSet
---@param color color
---## Example
---```
---colors.test(colors.combine(colors.white, colors.magenta, colours.lightBlue), colors.lightBlue)
-----> true
---```
------
---[Official Documentation](https://tweaked.cc/module/colors.html#v:test)
function colors.test(set, color) end

---Combine an RGB value into one hexadecimal representation
---@param r number The red channel (0 - 1)
---@param g number The green channel (0 - 1)
---@param b number The blue channel (0 - 1)
---@return number hex The hexadecimal representation of the RGB value
---## Example
---```
---colors.packRGB(0.7, 0.2, 0.6)
-----> 0xb23399
---```
------
---[Official Documentation](https://tweaked.cc/module/colors.html#v:packRGB)
function colors.packRGB(r, g, b) end

---Convert a hex value into separate r, g, b, values
---@param hex number
---@return number r Red component (0 - 1)
---@return number g Green component (0 - 1)
---@return number b Blue component (0 - 1)
---## Example
---```
---colors.unpackRGB(0xb23399)
-----> 0.7, 0.2, 0.6
---```
function colors.unpackRGB(hex) end

---Calls either `colors.packRGB` or `colors.unpackRGB` depending on how many
---arguments it receives.
---@deprecated
---@param r number The red channel (0 - 1)
---@param g number The green channel (0 - 1)
---@param b number The blue channel (0 - 1)
---@return number hex The hexadecimal representation of the RGB value
---🚮 **Deprecated in `v1.81.0`**, use `colors.packRGB()`
---## Example
---```
---colors.rgb8(0.7, 0.2, 0.6)
-----> 0xb23399
---```
------
---[Official Documentation](https://tweaked.cc/module/colors.html#v:rgb8)
function colors.rgb8(r, g, b) end

---Calls either `colors.packRGB` or `colors.unpackRGB` depending on how many
---arguments it receives.
---@deprecated
---@param hex number
---@return number r Red component (0 - 1)
---@return number g Green component (0 - 1)
---@return number b Blue component (0 - 1)
---🚮 **Deprecated in `v1.81.0`**, use `colors.unpackRGB()`
---## Example
---```
---colors.rgb8(0xb23399)
-----> 0.7, 0.2, 0.6
---```
------
---[Official Documentation](https://tweaked.cc/module/colors.html#v:rgb8)
function colors.rgb8(hex) end

---Converts a color into a blit hex character for use with `term.blit()`
---@param color color The color to convert
---@return string blit The blit hex character that represents the given color
---## Example
---```
---colors.toBlit(colors.magenta)
-----> "2"
---```
------
---[Official Documentation](https://tweaked.cc/module/colors.html#v:toBlit)
function colors.toBlit(color) end
