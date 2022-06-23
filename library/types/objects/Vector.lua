---@meta

---A 3 dimensional vector with an `x`, `y`, and `z` value
---
---These are suitable for positions or directions
---
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector)
---@class Vector
Vector = {}

---Add two `Vector` objects together
---
---You can also take advantage of the `__add` metamethod:
---```
---result = vector1 + vector2
---```
---@param v Vector The second `Vector` to add
---@return Vector result The resulting `Vector`
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:add)
function Vector:add(v) end

---Subtract one `Vector` from another
---
---You can also take advantage of the `__sub` metamethod:
---```
---result = vector1 - vector2
---```
---@param v Vector The second `Vector` to subtract
---@return Vector result The resulting `Vector`
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:sub)
function Vector:sub(v) end

---Multiply a `Vector` by a scalar value, scaling it
---
---You can also take advantage of the `__mul` metamethod:
---```
---result = vector1 * 2
---```
---@param scalar number The scalar value to multiply with
---@return Vector result The resulting `Vector`
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:mul)
function Vector:mul(scalar) end

---Divide a `Vector` by a scalar value, scaling it
---
---You can also take advantage of the `__div` metamethod:
---```
---result = vector1 / 2
---```
---@param scalar number The scalar value to divide with
---@return Vector result The resulting `Vector`
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:div)
function Vector:div(scalar) end

---Negate a vector
---
---You can also take advantage of the `__unm` metamethod:
---```
---negated = -vector1
---```
---@return Vector negated The negated `Vector`
function Vector:unm() end

---Compute the dot product of two vectors
---@param v Vector The second vector to use for the calculation
---@return number dot The dot product of the two vectors
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:dot)
function Vector:dot(v) end

---Compute the cross product of two vectors
---@param v Vector The second vector to use for the calculation
---@return Vector cross The cross products of the two vectors
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:cross)
function Vector:cross(v) end

---Get the length/magnitude of this vector
---@return number length The length of this vector
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:length)
function Vector:length() end

---Divide this vector by its length, normalizing it
---@return Vector normalized The normalized vector
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:normalize)
function Vector:normalize() end

---Create a new `Vector` with each dimension rounded
---@param tolerance? number The tolerance that rounding should take place to (defaults to 1)
---@return Vector rounded The rounded vector
---## Example
---```
---local rounded = vector1:round(0.05)
---```
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:round)
function Vector:round(tolerance) end

---Convert this vector to a string for printing
---
---You can also take advantage of the `__tostring` metamethod:
---```
---asString = tostring(vector1)
---```
---@return string str The string representation of this vector
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:tostring)
function Vector:toString() end

---Check if two vectors are equal
---@param v Vector The vector to compare to
---@return boolean equal If the two vectors are equal
---## Example
---```
---local v1 = vector.new(12.00439, 0, 0)
---local v2 = vector.new(12.00441, 0, 0)
---
---local areSimilar = v1:round(0.001):equals(v2:round(0.001))
----->true
---```
------
---[Official Documentation](https://tweaked.cc/module/vector.html#ty:Vector:tostring)
function Vector:equals(v) end
