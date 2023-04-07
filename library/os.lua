---@meta

---For interacting with CraftOS on the current computer
---
------
---[Official Documentation](https://tweaked.cc/module/os.html)
os = {}

---Loads an API/library into the global environment
---
---This will load and execute the given file and all exported variables and
---functions will be available under the namespace of the filename
---(e.g.`fileName.functionName`)
---
---🚮 **Deprecated** due to it polluting the global namespace\
---You should instead use `require()` to load libraries/APIs
---@param path path Path to the file to load
---@return boolean success If the API was successfully loaded
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:loadAPI)
function os.loadAPI(path) end

---Unloads an API that was loaded with `os.loadAPI()`
---
---🚮 **Deprecated**, see `os.loadAPI()` for more info
---@param name string The name of the API to unload
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:unloadAPI)
function os.unloadAPI(name) end

---Pause execution of the current thread and wait for an event to fire
---
---If no event name is provided, it will resume when any event fires
---
---Unlike `os.pullEventRaw()`, this function will stop when it receives a
---`terminate` event and it will print the error "Terminated"
---
---This works by yielding until it receives a vararg list where the first
---element matches the name of the event provided
---@param event event|string? The event to listen for
---@return event|string event The name of the event that fired
---@return any ... Any values returned by the event
---## Example
---```
---while true do
---    local eventData = { os.pullEvent() }
---    local event = eventData[1]
---
---    if event == "mouse_click" then
---        print("Button", eventData[2], "was clicked at", eventData[3], ",", eventData[4])
---    elseif event == "key" then
---        print("Key code", eventData[2], "was pressed")
---    end
---end
---```
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:pullEvent)
function os.pullEvent(event) end

---Pause execution of the current thread and wait for an event to fire,
---including the terminate event
---
---This behaves nearly the exact same as `os.pullEvent()` except this also
---allows you to handle the `terminate` event, rather than stopping
---
---If no event name is provided, it will resume when any event fires
---
---This works by yielding until it receives a vararg list where the first
---element matches the name of the event provided
---@param event event|string? The event to listen for
---@return event|string event The name of the event that fired
---@return any ... Any values returned by the event
---## Example
---```
---while true do
---    local event = os.pullEventRaw()
---    if event == "terminate" then
---        print("Caught terminate event!")
---    end
---end
---```
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:pullEventRaw)
function os.pullEventRaw(event) end

---Pauses execution for the specified number of seconds. An alias for `_G.sleep()`
---@param time number The number of seconds to sleep for, rounded up to the nearest multiple of 0.05
---As it waits for a fixed amount of world ticks, time will automatically be
---rounded up to the nearest multiple of 0.05 seconds. If you are using
---coroutines or the parallel API, it will only pause execution of the current
---thread, not the whole program.
---## Example
---```
---print("Going to sleep for 2 seconds!")
---sleep(2)
---print("Slept for 2 seconds!")
---```
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:sleep)
function os.sleep(time) end

---Get the current CraftOS version. Defined by `bios.lua`
---@return string version CraftOS version (e.g. `CraftOS 1.8`)
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:version)
function os.version() end

---Run a new process
---
---This does not provide access to the `shell` API, for this, you should instead
---use `shell.run()`
---
---If the program cannot be found, or failed to run, it will print the error and
---return false. If you want to handle this more gracefully, use an alternative
---such as `loadfile()`.
---## Example
---```
---local pENV = {}
---local path = "/add.lua"
---local PID = os.run(pENV, path, 2, 2)
---```
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:run)
---@param env table The environment to load the path under. For example, passing `_E` will pass the environment you are currently using.
---@param path path The path to the program to launch
---@param ... any Additional arguments to pass to the program
function os.run(env, path, ...) end

---Adds an event to the event queue that can later be listened to with `os.pullEvent()`
---@param name event|string The name of the event to queue
---@param ... any The parameters of the event that can be read later
---@triggers `any`
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:queueEvent)
function os.queueEvent(name, ...) end

---Start a timer that will fire a `timer` event when it reaches the specified
---number of seconds.
---
---As this waits for a fixed amount of world ticks, `seconds` will be rounded up
---to the nearest multiple of 0.05 seconds
---@param seconds number The number of seconds until the timer fires
---@return integer ID The ID of the new timer
---@throws If `seconds` is below zero
---@triggers `timer`
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:startTimer)
function os.startTimer(seconds) end

---Cancels a timer that was started with `os.startTimer()`
---@param ID integer The ID of the timer to cancel
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:cancelTimer)
function os.cancelTimer(ID) end

---Set an alarm that will fire an `alarm` event at the requested game-time.
---@param time number The game-time to fire the event at (0.0 - 24.0)
---@return integer ID The ID of the new alarm
---@throws if the `time` is out of range
---@triggers `alarm`
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:setAlarm)
function os.setAlarm(time) end

---Cancels an alarm that was started with `os.setAlarm()`
---@param ID integer The ID of the alarm to cancel
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:cancelAlarm)
function os.cancelAlarm(ID) end

---Shut down this computer immediately
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:shutdown)
function os.shutdown() end

---Reboot this computer immediately
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:reboot)
function os.reboot() end

---Get the ID of this computer
---@return integer ID The ID of this computer
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:getComputerID)
function os.getComputerID() end

---Get the ID of this computer
---@return integer ID The ID of this computer
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:computerID)
function os.computerID() end

---Get the label of this computer
---@return string|nil label The label of this computer or `nil` if none is set
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:getComputerLabel)
function os.getComputerLabel() end

---Get the label of this computer
---@return string|nil label The label of this computer or `nil` if none is set
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:computerLabel)
function os.computerLabel() end

---Set the label of this computer
---@param label string? The new label for this computer or `nil` to clear it
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:setComputerLabel)
function os.setComputerLabel(label) end

---Get the number of seconds that this computer has been running for
---@return number uptime This computer's uptime in seconds
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:clock)
function os.clock() end

---Get the current time in one of the below formats
---
---- `ingame` - The current world time (default)
---- `utc` - Get the hour of the day in UTC time
---- `local` - Get the hour of the day in the timezone that the server is located in
---
---This function can also be given the table from calling `os.date("*t")` in
---which case, this function returns a [UNIX
---timestamp](https://www.unixtimestamp.com/)
---@param locale? locale|dateTable The locale to get the time in
---@return number time The hour of the selected locale or a UNIX timestamp depending on the value passed in
---@throws If an invald locale is passed in
---## Examples
---### Get game time
---```
---textutils.formatTime(os.time())
-----> "12:29 PM"
---```
---### Get UNIX timestamp
---```
---os.time(os.date("*t"))
-----> 1658310967
---```
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:time)
function os.time(locale) end

---Get the amount of days since UNIX epoch in one of the below formats
---
---- `ingame` - The number of days since the save was created (default)
---- `utc` - Get the number of days since 1 January 1970 in UTC time
---- `local` - Get the number of days since 1 January 1970 in the server's local timezone
---
---@param locale? locale
---@return number days Value depends on `locale` passed in
---@throws If an invalid locale is passed
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:day)
function os.day(locale) end

---Get the number of milliseconds since an epoch
---@param locale locale The locale to get the epoch from
---@return number milliseconds Number of milliseconds since the selected epoch
---@throws If an invalid locale is passed
------
---[Official Documentation](https://tweaked.cc/module/os.html#v:epoch)
function os.epoch(locale) end

---Get a date string (or table)
---
---The format string takes the same formats as [C's strftime
---function](http://www.cplusplus.com/reference/ctime/strftime/). It can be
---prefixed with an exclamation mark (!) to use UTC time instead of the server's
---local timezone.
---
---If the format is exactly `*t` (optionally prefixed with !), a table will be
---returned instead. This table has fields for the year, month, day, hour,
---minute, second, day of the week, day of the year, and whether Daylight Savings
---Time is in effect. This table can be converted to a UNIX timestamp (days since
---1 January 1970) with date.
---@param format? string The format of the string to return. Defaults to `%c`
---@param time? number The time (in seconds) to convert to a string. Defaults to the current time
---@return string|dateTable
---@throws If an invalid format is passed
---## Examples
---### Get Date String
---```
---os.date("%d %b, %Y")
-----> "20 Jun, 2022"
---```
---### Get Date Table
---```
---os.date("*t")
----->
---{
---    year = 2022,
---    yday = 171,
---    month = 6,
---    day = 20,
---    wday = 2,
---    hour = 14,
---    min = 30,
---    sec = 14,
---    isdst = false
---
---}
---```
function os.date(format, time) end
