---@meta

---@alias ccTweaked.fs.path string A string that specifies a location in a directory structure. Components are separated by slashes `/`

---@alias ccTweaked.fs.openMode
---| '"r"' # read mode
---| '"w"' # write mode
---| '"a"' # append mode
---| '"rb"' # binary read mode
---| '"wb"' # binary write mode
---| '"ab"' # binary append mode

---@alias ccTweaked.fs.seekWhence
---| '"set"' # relative to the start of the file
---| '"cur"' # relative to the current position
---| '"end"' # relative to the end of the file

---@alias ccTweaked.fs.ASCII number An [ASCII code](https://www.rapidtables.com/code/text/ascii-table.html) that corresponds to a character

---@alias ccTweaked.fs.fileAttributes {size: number, isDir: boolean, isReadOnly: boolean, created: ccTweaked.epoch, modified: ccTweaked.epoch}
