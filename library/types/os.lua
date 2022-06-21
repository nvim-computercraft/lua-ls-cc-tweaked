---@meta

---@alias locale
---| '"ingame"' # The current world time
---| '"utc"' # Get the hour of the day in UTC time
---| '"local"' # Get the hour of the day in the timezone that the server is located in

---@class dateTable
---@field year integer year number
---@field yday integer day of the year
---@field wday integer day of the week
---@field month integer month of the year
---@field day integer day of the month
---@field hour integer hour of the day
---@field min integer Minute of the hour
---@field sec integer Seconds of the minute
---@field isdst boolean If Daylight Saving Time is in effect
