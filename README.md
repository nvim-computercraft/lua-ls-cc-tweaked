# CC:Tweaked Documentation
This documentation covers the Lua API for [ComputerCraft:Tweaked](https://tweaked.cc/) and is meant to be used in [Visual Studio Code](https://code.visualstudio.com/) with [Sumneko's Lua extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) (`sumneko.lua`).

## Setup
1. Download the repository
2. If you don't already have one, create a folder, wherever you'd like, that can contain all your third-party libraries for Sumneko's Lua extension.
3. In this folder, create a new folder named `CC-Tweaked` or something similar.
4. Paste the contents from this repo in this new `CC-Tweaked` folder.
5. Open VS Code and [open the settings](https://code.visualstudio.com/docs/getstarted/settings)
6. In the searchbar, type:
   ```txt
   @ext:sumneko.lua third party library
   ```
7. Select `Add Item`
8. Paste in the absolute path to the folder containing all of your libraries from step 2 (the one that contains the `CC-Tweaked` folder)

Now when you trigger one of the below cases you should be prompted to set up your workspace as a `CC:Tweaked` workspace.

Trigger cases:
- Following phrases are found in file:
  - `turtle.<something>`
  - `rednet.<something>`
  - `redstone.<something>`
  - `peripheral.<something>`
  - `minecraft`
  - `computercraft`
- File is named:
  - `startup.lua`

After applying the workspace, you should have full autocompletion and diagnostics.

> Note: CC:Tweaked has some [seriously cursed](https://tweaked.cc/reference/feature_compat.html) support for Lua features, thus, the environment is a little messy and is not currently emulated as accurately as possible. As time goes on, I can figure out what is and isn't supported in CC:Tweaked and remove unsupported features using `config.lua` from the built-in libraries of Sumneko's Lua extension.
