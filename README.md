# Roblox Custom Inventory

Hi, this is a custom roblox inventory. A free package, easy to use.
Since, im not a professionel making Roblox scripts, or games, there is problems in it.
If you find a problem, please contact me.

## Usage (API)

Start by location our Module Script.
Use this:
```lua
local Module = require(game:GetService("ServerScriptService").Inventory.Module)
```

# Add Inventory Item
```lua
Module.AddInventory(player,item,amount,price)
```

# Remove Inventory Item
```lua
local Module = require(game:GetService("ServerScriptService").Inventory.Module)
Module.RemoveInventory(player,item,amount)
```

# Clear Player Inventory
```lua
local Module = require(game:GetService("ServerScriptService").Inventory.Module)
Module.ClearAllInventoryItems(player)
```

# Have Inventory Item
```lua
local Module = require(game:GetService("ServerScriptService").Inventory.Module)
Module.ClearAllInventoryItems(player,item,amount)
```
