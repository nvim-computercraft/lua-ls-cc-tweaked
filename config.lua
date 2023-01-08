name = "CC:Tweaked"

words = {
    "colors%.%w+",
    "commands%.%w+",
    "disk%.%w+",
    "fs%.%w+",
    "globals%.%w+",
    "gps%.%w+",
    "help%.%w+",
    "http%.%w+",
    "io%.%w+",
    "keys%.%w+",
    "multishell%.%w+",
    "os%.%w+",
    "paintutils%.%w+",
    "parallel%.%w+",
    "peripheral%.%w+",
    "pocket%.%w+",
    "rednet%.%w+",
    "redstone%.%w+",
    "settings%.%w+",
    "shell%.%w+",
    "term%.%w+",
    "textutils%.%w+",
    "turtle%.%w+",
    "vector%.%w+",
    "window%.%w+",
}

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
	"commands",
	"disk",
	"fs",
	"gps",
	"help",
	"http",
	"io",
	"keys",
	"multishell",
	"os",
	"paintutils",
	"parallel",
	"peripheral",
	"pocket",
	"rednet",
	"redstone",
	"settings",
	"shell",
	"term",
	"textutils",
	"turtle",
	"vector",
	"window",
}

for _, g in ipairs(GLOBALS) do
	table.insert(configs, {
		key = "Lua.diagnostics.globals",
		action = "add",
		value = g,
	})
end
