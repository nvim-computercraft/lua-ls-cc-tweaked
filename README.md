# Lua Language Server library for CC: Tweaked
This is a [Lua Language Server](https://github.com/sumneko/lua-language-server) [library](https://github.com/sumneko/lua-language-server/wiki/Libraries) for [CC: Tweaked](https://computercraft.cc)'s [APIs](https://tweaked.cc/).

Before the fork, this was intended to be used in [Visual Studio Code](https://code.visualstudio.com/) with [Sumneko's Lua extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) (`sumneko.lua`). This fork concentrates on making completions for ComputerCraft a first-class citizen in editors such as Neovim, Vim, and Emacs.

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
9. Then to enable third party libaries click on `Edit in settings.json` under `Check Third Party` and set `"Lua.workspace.checkThirdParty": true`

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

> [!NOTE]
> CC: Tweaked has some [seriously cursed](https://tweaked.cc/reference/feature_compat.html) support for Lua features, thus, the environment is a little messy and is not currently emulated as accurately as possible. As time goes on, we can figure out what is and isn't supported in CC:Tweaked and remove unsupported features using `config.json` from the built-in libraries of Sumneko's Lua extension.
