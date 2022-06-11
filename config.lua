name = "CC:Tweaked"

words = { "turtle%.%w+", "rednet%.%w+", "redstone%.%w+", "minecraft", "computercraft" }

files = { "startup.lua" }

configs = {
	{
		key = "Lua.runtime.version",
		action = "set",
		value = "Lua 5.3",
	},
}
