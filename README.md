# Roblox Custom Inventory

Hi, this is a custom roblox inventory. A free package, easy to use.
Since, im not a professionel making Roblox scripts, or games, there is problems in it.
If you find a problem, please contact me.

- Since i want this to be as frendly as possible to new developers - the system do have a automatic setup, this can be found inside `ServerScriptService > Inventory > Setup`
- This does, that you do not need to place files inside ReplicatedStorage - the script does it for you.
- So all the config is located inside ServerStorage. You cannot rename any of the Inventory folders inside ServerStorage.
- Then the setup system will break.

# Setting up project:
- Open the .rblx file that you can download here - done!
If you already have a place you want the inventory to be, follow this:
- Copy the folder Inventory located inside ServerStorage - paste it in your project
- Copy the folder Inventory located inside ServerScriptService - paste it in your project
- Copy the 3 files located inside StarterGui(GuiUpdater,Buy,Inventory) - paste it in your project
- Go inside ServerScriptService > Inventory > Module > Change the "leaderstatsCash" to the name of your leaderstats currency
- Done!

# Creating items: 
- Go into your ServerStorage
- Now go into Inventory folder
- Open Items folder 
- Copy and paste a already existing item folder
- Open the new copied item folder
- Insert a price under the Price IntValue
- Insert the item's categori
- Insert a icon texture, under the Icon decal.
- Done!

# Making Categories:
- Go into StarterGui
- Go into Inventory
- Open the Frame
- Open the "Kates" folder
- Make a new button, or copy the already existing ones.
- Change the position, to where you want your categori button to be
- Change the name to the name of the Categori you want.
- Done!

## Usage (API)

Start by location our Module Script.
Use this:
__Raw__
```lua
local Module = require(game:GetService("ServerScriptService"):WaitForChild("Inventory").Module)
```

# Add Inventory Item
```lua
Module.AddInventory(%player object%,%string / item name%,%integer / amount%,%integer / price%)
```

# Remove Inventory Item
```lua
Module.RemoveInventory(%player object%,%string / item name%,%integer / amount%)
```

# Clear Player Inventory
```lua
Module.ClearAllInventoryItems(%player object%)
```

# Have Inventory Item
```lua
Module.HaveInventoryItem(%player object%,%string / item name%,%integer / amount%)

-- returns true if player has the inventory item & amount
```
