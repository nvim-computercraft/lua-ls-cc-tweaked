---@meta

---Module for reading and drawing "Nitrogen Fingers Text" (NFT) images.
---
---NFT images support coloured text and pixels, unlike `paintutils.parseImage`
---
---[Official Documentation](https://tweaked.cc/library/cc.image.nft.html)
local nft = {}

---Parse an NFT from a string
---@param image string The image content as a string
---@return table image The parsed image data
---
---[Official Documentation](https://tweaked.cc/library/cc.image.nft.html#v:parse)
function nft.parse(image) end

---Load an NFT from a file
---@param path string The filesystem path to the image file
---@return table|nil image The parsed image data or `nil` if the file could not be loaded
---@return nil|string error A message explaining why the file could not load
---
---[Official Documentation](https://tweaked.cc/library/cc.image.nft.html#v:load)
function nft.load(path) end

---Draw an NFT image on the screen
---@param image table An image data table, as returned from `nft.parse()` or `nft.load()`
---@param xPos integer The x position to begin the drawing at
---@param yPos integer The y position to begin the drawing at
---@param target? ccTweaked.term.Redirect The terminal to draw to. Defaults to the current terminal
---
---[Official Documentation](https://tweaked.cc/library/cc.image.nft.html#v:draw)
function nft.draw(image, xPos, yPos, target) end

return nft
