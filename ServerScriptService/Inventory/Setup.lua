local Categori = Instance.new("Folder",game.ReplicatedStorage)
Categori.Name = "Kates"

for _, Categoris in pairs(game.ServerStorage.Inventory.Items:GetChildren()) do
	if Categoris:IsA("Folder") then
		if Categoris:FindFirstChild("Categori") then
			local Kate = Instance.new("StringValue",game.ReplicatedStorage.Kates)
			Kate.Name = Categoris.Name
			Kate.Value = Categoris.Categori.Value
		end
	end
end

local Icons = Instance.new("Folder",game.ReplicatedStorage)
Icons.Name = "Icons"

for _, Icons in pairs(game.ServerStorage.Inventory.Items:GetChildren()) do
	if Icons:IsA("Folder") then
		if Icons:FindFirstChild("Icon") then
			local Kate = Instance.new("Decal",game.ReplicatedStorage.Icons)
			Kate.Name = Icons.Name
			Kate.Texture = Icons.Icon.Texture
		end
	end
end
