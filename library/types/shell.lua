---@meta

---@alias shellCompletionFunction fun(shell: shell, index: integer, argument: string, previous: table<string, string>|nil) The completion function to use for completion

---@alias shellCompletionInfo table<string, completionInfo>
---@class completionInfo
---@field fnComplete shellCompletionFunction
