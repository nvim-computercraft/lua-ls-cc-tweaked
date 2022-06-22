---@meta

---A computer or turtle wrapped as a peripheral
---
---A computer will have the type `computer` while a turtle will have the type
---`turtle`
------
---[Official Documentation](https://tweaked.cc/peripheral/computer.html)
---@class Computer
Computer = {}

---Turn the computer on
---
------
---[Official Documentation](https://tweaked.cc/peripheral/computer.html#v:turnOn)
function Computer.turnOn() end

---Shutdown the computer
---
------
---[Official Documentation](https://tweaked.cc/peripheral/computer.html#v:shutdown)
function Computer.shutdown() end

---Reboot or turn on the computer
---
------
---[Official Documentation](https://tweaked.cc/peripheral/computer.html#v:reboot)
function Computer.reboot() end

---Get the ID of the computer
---@return integer ID The ID of the computer
------
---[Official Documentation](https://tweaked.cc/peripheral/computer.html#v:getID)
function Computer.getID() end

---Get whether the computer is on or not
---@return boolean isOn If the computer is on
------
---[Official Documentation](https://tweaked.cc/peripheral/computer.html#v:isOn)
function Computer.isOn() end

---Get the label of the computer
---@return string|nil label The computer's label or `nil` if it does not have one
------
---[Official Documentation](https://tweaked.cc/peripheral/computer.html#v:getLabel)
function Computer.getLabel() end
