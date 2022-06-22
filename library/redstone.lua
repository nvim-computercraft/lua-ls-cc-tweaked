---@meta

---The redstone API allows you to interact with redstone I/O in binary,
---analogue, and "bundled" mode
---
---When a redstone input changes, a `redstone` event will be fired
---
------
---[Official Documentation](https://tweaked.cc/module/redstone.html)
redstone = {}

---Get the valid sides of this computer
---@return computerSidesTable sides The sides of the computer
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getSides)
function redstone.getSides() end

---Set the binary state of a redstone signal on a specific side of this computer
---@param side computerSide The side of the computer to set the state of
---@param state boolean If the redstone should be on, with a signal strength of 15
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:setOutput)
function redstone.setOutput(side, state) end

---Get the current redstone output state at the side of a computer
---@param side computerSide The side of the computer to check
---@return boolean state If the redstone output is on or off
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getOutput)
function redstone.getOutput(side) end

---Get the current redstone input of a given side
---@param side computerSide The side of the computer to check
---@return boolean state Whether the redstone input is on or off
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getInput)
function redstone.getInput(side) end

---Set the redstone signal strength for a given side
---@param side computerSide The side of the computer to set the signal strength for
---@param strength signalStrength The strength of the analog output signal
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:setAnalogOutput)
function redstone.setAnalogOutput(side, strength) end

---Set the redstone signal strength for a given side
---@param side computerSide The side of the computer to set the signal strength for
---@param strength signalStrength The strength of the analogue output signal
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:setAnalogueOutput)
function redstone.setAnalogueOutput(side, strength) end

---Get the redstone analog output signal strength for a given side
---@param side computerSide The side of the computer to check
---@return signalStrength strength The strength of the analog output signal (0 - 15)
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getAnalogOutput)
function redstone.getAnalogOutput(side) end

---Get the redstone analogue output signal strength for a given side
---@param side computerSide The side of the computer to check
---@return signalStrength strength The strength of the analogue output signal (0 - 15)
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getAnalogueOutput)
function redstone.getAnalogueOutput(side) end

---Get the current analog input strength for a given side
---@param side computerSide The side of the computer to check
---@return signalStrength strength The strength of the analog input signal
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getAnalogInput)
function redstone.getAnalogInput(side) end

---Get the current analogue input strength for a given side
---@param side computerSide The side of the computer to check
---@return signalStrength strength The strength of the analogue input signal
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getAnalogueInput)
function redstone.getAnalogueInput(side) end

---Set the bundled cable output for a given side
---
---🗒️ Use `colors.subtract()` and `colors.combine()` to make a color set
---@param side computerSide The side to set
---@param colorSet colorSet The colorSet to set for the output
function redstone.setBundledOutput(side, colorSet) end

---Get the bundled cable output for a given side
---@param side computerSide The side of the computer to check
---@return colorSet colorSet The bundled cable output
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getBundledOutput)
function redstone.getBundledOutput(side) end

---Get the bundled cable input for a given side
---@param side computerSide The side of the computer to check
---@return colorSet colorSet The bundled cable input
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:getBundledInput)
function redstone.getBundledInput(side) end

---Test whether a bundled input is as expected
---@param side computerSide The side of the computer to check
---@param colorSet colorSet The input that is expected
---@return boolean success If the test is true
------
---[Official Documentation](https://tweaked.cc/module/redstone.html#v:testBundledInput)
function redstone.testBundledInput(side, colorSet) end
