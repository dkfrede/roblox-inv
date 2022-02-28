local DataStoreService = game:GetService("DataStoreService")

local InventoryData = DataStoreService:GetDataStore("SaveddInventoryd")

local Module = require(script.Parent.Module)

local function Added(player)
	local Inventory = Instance.new("Folder",player)
	Inventory.Name = "Inventory"
	
	-- DatastoreService
	local data
	local success,errormessage = pcall(function()
		data = InventoryData:GetAsync("id-"..player.UserId)
	end)
	if success then
		if data ~= nil then
			for _, items in pairs(data) do
				local inventory = Instance.new("IntValue",player:WaitForChild("Inventory"))
				inventory.Name = items.Name
				inventory.Value = items.Value
			end
		end
	end
end

local function Removed(player)
	local inventory = {}
	if player:FindFirstChild("Inventory") then
		for _, InventoryItems in pairs(player.Inventory:GetChildren()) do
			table.insert(inventory,{Name = InventoryItems.Name,Value = InventoryItems.Value})
		end
	end
	InventoryData:SetAsync("id-"..player.UserId,inventory)
end

game.Players.PlayerAdded:Connect(Added)
game.Players.PlayerRemoving:Connect(Removed)
