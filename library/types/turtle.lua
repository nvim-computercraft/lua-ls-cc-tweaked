---@meta

---@alias turtleSide
---| '"left"'
---| '"right"'

---@alias turtleSlot
---| 1
---| 2
---| 3
---| 4
---| 5
---| 6
---| 7
---| 8
---| 9
---| 10
---| 11
---| 12
---| 13
---| 14
---| 15
---| 16

---@class inspectInfo
---@field name string The name of the block
---@field state table<string, any> The state of the block
---@field tags table<string, boolean> The tags of the block

---@class turtleDetails
---@field name string The name of the item
---@field count integer The number of items in this slot

---@class turtleDetailsDetailed
---@field name string The name of the item
---@field count integer The number of items in this slot
---@field maxCount integer The max number of items that can be in this stack
---@field displayName string The display name of this item
---@field tags table<string, boolean> The tags of this item
