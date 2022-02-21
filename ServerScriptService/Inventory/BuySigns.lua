local Signs = game.Workspace:WaitForChild("BuySigns")

local Module = require(script.Parent.Module)

for _, BuySigns in pairs(Signs:GetChildren()) do
	if BuySigns:FindFirstChild("ClickDetector") then
		BuySigns.ClickDetector.MouseClick:Connect(function(player)			
			
			game.ReplicatedStorage.GuiUpdate:FireClient(player,true)
			player.PlayerGui.Buy.Frame.Price.Text = "Price: "..BuySigns.Config.Price.Value
			player.PlayerGui.Buy.Frame.Names.Text = "Name: "..BuySigns.Config.Names.Value
			player.PlayerGui.Buy.Frame.NamesV.Value = BuySigns.Config.Names.Value
			player.PlayerGui.Buy.Frame.PriceV.Value = BuySigns.Config.Price.Value
		end)
	end
end

game.ReplicatedStorage.Buy.OnServerEvent:Connect(function(player,itemname,itemprice,amount)
	if itemname ~= nil and itemprice ~= nil then
		if game.ServerStorage.Items:FindFirstChild(itemname) then
			if game.ServerStorage.Items:FindFirstChild(itemname).Value == tonumber(itemprice) then
				if tonumber(amount) then
					Module.AddInventory(player,itemname,amount,itemprice)
					player.PlayerGui.Buy.Frame.Visible = false
					game.ReplicatedStorage.GuiUpdate:FireClient(player,false)
				end
			end
		end
	end
end)
