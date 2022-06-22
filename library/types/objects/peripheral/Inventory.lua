---@meta

---Methods for interacting with inventories
---
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/inventory.html)
---@class Inventory
Inventory = {}

---Get the size of this inventory
---@return number slots The number of slots in this inventory
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/inventory.html#v:size)
function Inventory.size() end

---List all items in this inventory
---
---Each item in the inventory is represented by a table containing some basic
---information, much like turtle.getItemDetail includes. More information can be
---fetched with getItemDetail. The table contains the item name, the count and an
---a (potentially nil) hash of the item's nbt. This NBT data doesn't contain
---anything useful, but allows you to distinguish identical items.
---
---The returned table is sparse, and so empty slots will be nil - it is
---recommended to loop over using pairs rather than ipairs.
---@return itemList list The list of items in this inventory
---## Example
---```
---local chest = peripheral.find("minecraft:chest")
-----print all items in the adjacent chest
---for slot, item in pairs(chest.list()) do
---    print(("%d x %s in slot %d"):format(item.count, item.name, slot))
---end
---```
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/inventory.html#v:list)
function Inventory.list() end

---Get detailed information about an item in this inventory
---@param slot integer The slot to get more info about
---@return table|nil info Information about the item in the slot or `nil` if no item is present
---@throws If the slot is out of range
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/inventory.html#v:getItemDetail)
function Inventory.getItemDetail(slot) end

---Get the maximum quantity of items that can be stored in this stack
---@param slot integer The slot to check
---@return integer limit The maximum number of items that can be in this stack
---@throws If the slot is out of range
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/inventory.html#v:getItemLimit)
function Inventory.getItemLimit(slot) end

---Push items from this inventory to another
---@param toName string The name of the inventory to push to
---@param sourceSlot integer The slot from this inventory to push from
---@param limit? integer The maximum number of items to move (default is the stack limit)
---@param targetSlot? integer The slot in the target inventory to push the items into (by default will insert into any slot)
---@return integer quantity The number of items transferred
---@throws If the target inventory doesn't exist
---@throws If the target inventory isn't an inventory
---@throws If the `sourceSlot` is out of range
---@throws If the `targetSlot` is out of range
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/inventory.html#v:pushItems)
function Inventory.pushItems(toName, sourceSlot, limit, targetSlot) end

---Pull items from another inventory into this one
---@param sourceName string The name of the inventory to pull from
---@param sourceSlot integer The slot of the source inventory to pull from
---@param limit? integer The maximum number of items to move (default is the stack limit)
---@param targetSlot? integer The slot in this inventory to push the items into (by default will insert into any slot)
---@return integer quantity The number of items transferred
---@throws If the source inventory doesn't exist
---@throws If the source inventory isn't an inventory
---@throws If the `sourceSlot` is out of range
---@throws If the `targetSlot` is out of range
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/inventory.html#v:pullItems)
function Inventory.pullItems(sourceName, sourceSlot, limit, targetSlot) end
