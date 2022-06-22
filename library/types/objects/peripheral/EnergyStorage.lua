---@meta

---Offers methods for interacting with blocks that use Forge's energy system
---
---This works with storage blocks as well as generators and machines that consume energy
---
---🗒️ Due to limitations with Forge's energy API, you cannot measure throughput (RF used/generated per tick)
---
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/energy_storage.html)
---@class EnergyStorage
EnergyStorage = {}

---Get the energy of this block
---@return number RF The energy stored in this block
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/energy_storage.html#v:getEnergy)
function EnergyStorage.getEnergy() end

---Get the maximum amount of energy that this block can store
---@return number RF The capacity of this block
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/energy_storage.html#v:getEnergyCapacity)
function EnergyStorage.getEnergyCapacity() end
