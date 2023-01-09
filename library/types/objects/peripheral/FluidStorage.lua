---@meta

---Offers methods for interacting with tanks and other fluid storage blocks
---
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/fluid_storage.html)
---@class FluidStorage
FluidStorage = {}

---Get all "tanks" in this fluid storage
---
---Each tank either contains some amount of fluid or is empty. Tanks with fluids
---inside will return some basic information about the fluid, including its name
---and amount.
---
---The returned table is sparse, and so empty tanks will be nil - it is
---recommended to loop over using pairs rather than ipairs.
---@return table|nil[]
function FluidStorage.tanks() end

---Move a fluid from one container to another connected one
---@param toName string The name of the peripheral/container to
---@param limit? number The maximum amount of fluid to move
---@param fluidName? string The name of the fluid to move. If not given, a random fluid will be moved
---@return number fluidMoved The amount of fluid moved
---@throws If the target container doesn't exist
---@throws If the target container isn't for fluids
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/fluid_storage.html#v:pushFluid)
function FluidStorage.pushFluid(toName, limit, fluidName) end

---Move a fluid from a connected contained into this one
---
---Both containers must be attached through wired modems
---@param fromName string The name of the container to pull from
---@param limit? number The maximum amount of fluid to move
---@param fluidName? string The name of the fluid to move. If not given, a random fluid will be moved
---@return number fluidMoved The amount of fluid moved
---@throws If the source container doesn't exist
---@throws If the source container isn't for fluids
------
---[Official Documentation](https://tweaked.cc/generic_peripheral/fluid_storage.html#v:pullFluid)
function FluidStorage.pullFluid(fromName, limit, fluidName) end
