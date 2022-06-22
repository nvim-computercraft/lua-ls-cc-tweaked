---@meta

---@class serializationOptions
---@field compact? boolean Do not emit whitespace characters
---@field allow_repetitions? boolean Relax the check for recursive tables, allowing them to appear multiple times so long as they don't appear in themselves

---@class unserializeJSONOptions
---@field nbt_style? boolean When true, this will accept stringified NBT strings, as produced by many commands.
---@field parse_null? boolean When true, `null` will be parsed as `textutils.json_null` instead of `nil`
---@field parse_empty_array? boolean When false, empty arrays will be passed as a new table. By default (or when true), they are passed as `textutils.empty_json_array`
