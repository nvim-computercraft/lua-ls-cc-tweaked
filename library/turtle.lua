---@meta

---Turtles are a robot that can break/place blocks, attack mobs, and move around
---the world. They have an inventory of 16 slots, allowing them to store blocks
---they have broken or would like to place.
---
---### Moving a turtle
---Turtles are blocks and can therefor move around the world on Minecraft's
---grid, one block at a time. Moving a turtle (but not turning it) consumes fuel.
---If a turtle does not have fuel, it will refuse to move and the movement
---functions will return `false`. To prevent a runaway turtle, it is recommended
---to wrap your movement functions with `assert()` to throw a fatal error, if
---you don't want to handle errors in a different way, like so:
---
---```
---assert(turtle.forward())
---```
---
---### Upgrades
---A base turtle can move around and place blocks, however, through upgrades,
---they can do even more such as mine, dig, till, attack, and more. Turtles have
---a slot on their left and right sides where you can equip tools (sword,
---pickaxe, hoe, etc.) or peripherals (modem, speaker)
turtle = {}

---Move the turtle forward one block
---@return boolean success If the turtle could move
---@return string|nil errorMessage Why the turtle couldn't move
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:forward)
function turtle.forward() end

---Move the turtle back one block
---@return boolean success If the turtle could move
---@return string|nil errorMessage Why the turtle couldn't move
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:back)
function turtle.back() end

---Move the turtle up one block
---@return boolean success If the turtle could move
---@return string|nil errorMessage Why the turtle couldn't move
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:up)
function turtle.up() end

---Move the turtle down one block
---@return boolean success If the turtle could move
---@return string|nil errorMessage Why the turtle couldn't move
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:down)
function turtle.down() end

---Rotate the turtle 90 degrees to the left
---@return boolean success If the turtle could turn
---@return string|nil errorMessage Why the turtle couldn't turn
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:turnLeft)
function turtle.turnLeft() end

---Rotate the turtle 90 degrees to the right
---@return boolean success If the turtle could turn
---@return string|nil errorMessage Why the turtle couldn't turn
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:turnRight)
function turtle.turnRight() end

---Attempt to break the block in front of the turtle
---
---This requires a tool capable of breaking the block. Diamond pickaxes can
---break any block but other tools are more limited
---@param side? turtleSide The specific tool to use
---@return boolean success If a block was broken
---@return string|nil errorMessage The reason no block was broken
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:dig)
function turtle.dig(side) end

---Attempt to break the block above the turtle
---
---This requires a tool capable of breaking the block. Diamond pickaxes can
---break any block but other tools are more limited
---@param side? turtleSide The specific tool to use
---@return boolean success If a block was broken
---@return string|nil errorMessage The reason no block was broken
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:digUp)
function turtle.digUp(side) end

---Attempt to break the block below the turtle
---
---This requires a tool capable of breaking the block. Diamond pickaxes can
---break any block but other tools are more limited
---@param side? turtleSide The specific tool to use
---@return boolean success If a block was broken
---@return string|nil errorMessage The reason no block was broken
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:digDown)
function turtle.digDown(side) end

---Place a block or item in front of the turtle
---
---This also allows buckets to pick up or place liquids and wheat to breed cows.
---It cannot, however, be used to trigger buttons or levers
---@param text? string When placing a sign, set it's contents to this text
---@return boolean success If a block was placed
---@return string|nil errorMessage The reason the block could not be placed
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:place)
function turtle.place(text) end

---Place a block or item above the turtle
---
---This also allows buckets to pick up or place liquids and wheat to breed cows.
---It cannot, however, be used to trigger buttons or levers
---@param text? string When placing a sign, set it's contents to this text
---@return boolean success If a block was placed
---@return string|nil errorMessage The reason the block could not be placed
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:placeUp)
function turtle.placeUp(text) end

---Place a block or item below the turtle
---
---This also allows buckets to pick up or place liquids and wheat to breed cows.
---It cannot, however, be used to trigger buttons or levers
---@param text? string When placing a sign, set it's contents to this text
---@return boolean success If a block was placed
---@return string|nil errorMessage The reason the block could not be placed
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:placeDown)
function turtle.placeDown(text) end

---Drop the contents of the currently selected slot into the inventory in front
---of the turtle or into the world if there is no inventory
---@param count? integer The number of items to drop. If omitted, the entire stack will be dropped
---@return boolean success If items were dropped
---@return string errorMessage The reason items weren't dropped
---@throws If dropping an invalid number of items
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:drop)
function turtle.drop(count) end

---Drop the contents of the currently selected slot into the inventory above
---the turtle or into the world if there is no inventory
---@param count? integer The number of items to drop. If omitted, the entire stack will be dropped
---@return boolean success If items were dropped
---@return string errorMessage The reason items weren't dropped
---@throws If dropping an invalid number of items
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:dropUp)
function turtle.dropUp(count) end

---Drop the contents of the currently selected slot into the inventory below
---the turtle or into the world if there is no inventory
---@param count? integer The number of items to drop. If omitted, the entire stack will be dropped
---@return boolean success If items were dropped
---@return string errorMessage The reason items weren't dropped
---@throws If dropping an invalid number of items
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:dropDown)
function turtle.dropDown(count) end

---Change the currently selected inventory slot
---
---This determines what slot `turtle.drop()`, `turtle.place()`, and others act
---on
---@param slot turtleSlot The inventory slot to select
---@return boolean success If the slot has been selected (1 - 16)
---@throws If `slot` is out of range
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:select)
function turtle.select(slot) end

---Get the number of items in the given slot
---@param slot? turtleSlot The slot to check (1 - 16, default is the selected slot)
---@return integer count The number of items in the slot
---@throws If `slot` is out of range
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:getItemCount)
function turtle.getItemCount(slot) end

---Get the remaining space in a stack in a slot
---@param slot? turtleSlot The slot to check (1 - 16, default is the selected slot)
---@return integer count The number of items that can fit in this stack
---@throws If `slot` is out of range
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:getItemSpace)
function turtle.getItemSpace(slot) end

---Check if there is a solid (non-air, non-liquid) block in front of the turtle
---@return boolean detected If there is a block in front
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:detect)
function turtle.detect() end

---Check if there is a solid (non-air, non-liquid) block above the turtle
---@return boolean detected If there is a block above
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:detectUp)
function turtle.detectUp() end

---Check if there is a solid (non-air, non-liquid) block below the turtle
---@return boolean detected If there is a block below
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:detectDown)
function turtle.detectDown() end

---Check if the block in front of the turtle is the same as the item in the
---currently selected slot
---@return boolean areSame If the block and the item are the same
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:compare)
function turtle.compare() end

---Check if the block above the turtle is the same as the item in the
---currently selected slot
---@return boolean areSame If the block and the item are the same
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:compareUp)
function turtle.compareUp() end

---Check if the block below the turtle is the same as the item in the
---currently selected slot
---@return boolean areSame If the block and the item are the same
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:compareDown)
function turtle.compareDown() end

---Attack the entity in front of the turtle
---@param side? turtleSide The specific tool to use to attack
---@return boolean attacked Whether an entity was attacked
---@return string|nil errorMessage The reason nothing was attacked
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:attack)
function turtle.attack(side) end

---Attack the entity above the turtle
---@param side? turtleSide The specific tool to use to attack
---@return boolean attacked Whether an entity was attacked
---@return string|nil errorMessage The reason nothing was attacked
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:attackUp)
function turtle.attackUp(side) end

---Attack the entity below the turtle
---@param side? turtleSide The specific tool to use to attack
---@return boolean attacked Whether an entity was attacked
---@return string|nil errorMessage The reason nothing was attacked
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:attackDown)
function turtle.attackDown(side) end

---Suck an item from the inventory in front of the turtle or from the world if there is no inventory
---
---This will pull the item into the first acceptable slot, starting with the currently selected one
---@param count? integer The number of items to suck up (default is up to a stack of items)
---@return boolean success If any items were picked up
---@return string|nil errorMessage The reason why nothing was picked up
---@throws If given an invalid `count`
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:suck)
function turtle.suck(count) end

---Suck an item from the inventory above the turtle or from the world if there is no inventory
---
---This will pull the item into the first acceptable slot, starting with the currently selected one
---@param count? integer The number of items to suck up (default is up to a stack of items)
---@return boolean success If any items were picked up
---@return string|nil errorMessage The reason why nothing was picked up
---@throws If given an invalid `count`
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:suckUp)
function turtle.suckUp(count) end

---Suck an item from the inventory below the turtle or from the world if there is no inventory
---
---This will pull the item into the first acceptable slot, starting with the currently selected one
---@param count? integer The number of items to suck up (default is up to a stack of items)
---@return boolean success If any items were picked up
---@return string|nil errorMessage The reason why nothing was picked up
---@throws If given an invalid `count`
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:suckDown)
function turtle.suckDown(count) end

---Get the amount of fuel this turtle has
---@return number|"unlimited" amount The current fuel level or `"unlimited"` if the config has disabled turtle fuel consumption when moving
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:getFuelLevel)
function turtle.getFuelLevel() end

---Refuel this turtle using the item in the currently selected slot
---
---Refueling will continue until the turtle is full or all items have been
---consumed
---
---Passing `0` can be used to test if the currently selected item is combustable as it will return `false`
---@param count? integer The maximum number of items to consume
---@return boolean success If the turtle was refuelled
---@return string|nil errorMessage The reason the turtle was not refuelled
---@throws If `count` is out of range
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:refuel)
function turtle.refuel(count) end

---Compare the item in the currently selected slot to an item in another slot
---@param slot turtleSlot The slot to compare to
---@return boolean areSame If the two items are the same
---@throws If the slot is out of range
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:compareTo)
function turtle.compareTo(slot) end

---Move an item from the selected slot to another one
---@param slot turtleSlot The slot to move the item to
---@param count? integer The maximum number of items in the stack to move
---@return boolean success If an item was successfully moved
---@throws If the slot is out of range
---@throws If `count` is out of range
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:transferTo)
function turtle.transferTo(slot, count) end

---Get the currently selected slot
---@return integer slot The currently selected slot
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:getSelectedSlot)
function turtle.getSelectedSlot() end

---Get the maximum amount of fuel that this turtle can hold
---
---By default normal turtles have a limit of 20,000 and
---advanced turtles have a limit of 100,000
---@return integer|"unlimited" limit The maximum amount of fuel this turtle can hold or `"unlimited"` if the config has disabled turtle fuel consumption
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:getFuelLimit)
function turtle.getFuelLimit() end

---Equip/Unequip an item on the left side of this turtle
---
---This attempts to equip the item in currently selected slot. The current
---equipment is removed and placed in the turtle's inventory. If there is no item
---in the currently selected slot, the current upgrade is removed but no new one
---is equipped, effectively unequipping the turtle
---@return boolean success If the item was equipped
---@return string|nil errorMessage The reason equipping failed
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:equipLeft)
function turtle.equipLeft() end

---Equip/Unequip an item on the right side of this turtle
---
---This attempts to equip the item in currently selected slot. The current
---equipment is removed and placed in the turtle's inventory. If there is no item
---in the currently selected slot, the current upgrade is removed but no new one
---is equipped, effectively unequipping the turtle
---@return boolean success If the item was equipped
---@return string|nil errorMessage The reason equipping failed
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:equipRight)
function turtle.equipRight() end

---Get information about the block in front of the turtle
---@return boolean blockPresent If there is a block in front of the turtle
---@return inspectInfo|string info Info about the block or a message explaining that there is no block
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:inspect)
function turtle.inspect() end

---Get information about the block above the turtle
---@return boolean blockPresent If there is a block above the turtle
---@return inspectInfo|string info Info about the block or a message explaining that there is no block
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:inspectUp)
function turtle.inspectUp() end

---Get information about the block below the turtle
---@return boolean blockPresent If there is a block below the turtle
---@return inspectInfo|string info Info about the block or a message explaining that there is no block
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:inspectDown)
function turtle.inspectDown() end

---Get information about the items in the given slot
---@param slot? turtleSlot The slot to get information about (defaults to the currently selected slot)
---@param detailed? boolean Whether to get more info on the block. This results in much more info at the cost of execution time
---@return nil|turtleDetails|turtleDetailsDetailed info Information about `slot` or `nil` if it is empty
---@throws If the slot is out of range
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:getItemDetail)
function turtle.getItemDetail(slot, detailed) end

---Craft a recipe based on the turtle's inventory
---
---This requires the items to craft the item to be laid out as if the turtle's
---inventory is a crafting table. **ALL other slots must be empty**
---@param limit? integer The maximum number of items to craft (default is 64)
---@return boolean success If crafting succeeded
---@return string|nil errorMessage Why crafting failed
---@throws If limit is less than 1
---@throws If limit is greater than 64
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:craft)
function turtle.craft(limit) end

---The builtin turtle API with no generate helper functions
---
---🚮 **Deprecated** This used to behave differently than the `turtle` API. This
---should never be needed now
---@deprecated
------
---[Official Documentation](https://tweaked.cc/module/turtle.html#v:native)
turtle.native = {}
