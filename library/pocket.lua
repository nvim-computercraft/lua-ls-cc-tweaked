---@meta

---Functions for pocket computers
---
---This API is only available on pocket computers. This allows you to check if
---the current computer is a pocket computer
---
---```
---if pocket then print("This is a pocket computer") end
---```
------
---[Official Documentation](https://tweaked.cc/module/pocket.html)
pocket = {}

---Equip an upgrade from the player's inventory, prioritizing the currently
---selected slot
---@return boolean success If an item was equipped
---@return string|nil errorMessage The reason an item was not equipped
------
---[Official Documentation](https://tweaked.cc/module/pocket.html#v:equipBack)
function pocket.equipBack() end

---Remove the currently equipped upgrade
---@return boolean success If an upgrade was unequipped
---@return string errorMessage The reason why an upgrade was not unequipped
------
---[Official Documentation](https://tweaked.cc/module/pocket.html#v:unequipBack)
function pocket.unequipBack() end
