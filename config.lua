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

-- add globals to config

local GLOBALS = {
	"sleep",
	"write",
	"print",
	"printError",
	"read",
	"_HOST",
	"_CC_DEFAULT_SETTINGS",
	"colors",
	"disk",
	"fs",
	"gps",
	"help",
}

for _, g in ipairs(GLOBALS) do
	table.insert(configs, {
		key = "Lua.diagnostics.globals",
		action = "add",
		value = g,
	})
end
