local ds = game:GetService("DataStoreService")
local store = ds:GetDataStore("saved")

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder",player)
	leaderstats.Name = "leaderstats"
	local Success,Result = pcall(function()
		return store:GetAsync("id-"..player.UserId,"SavedData")
	end)
	local Diamonds = Instance.new("IntValue",player.leaderstats)
	Diamonds.Name = "Diamonds"
	
	local Cash = Instance.new("IntValue",player.leaderstats)
	Cash.Name = "Cash"
	
	--print(1)
	--print(Result.Cash)
	if Success then
		--print(2)
		if Result then
			--print(3)
			if Result.Cash ~= nil then
				Cash.Value = Result.Cash
			end
			if Result.Diamonds ~= nil then
				Diamonds.Value = Result.Diamonds
			end
		end
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	if player:FindFirstChild("leaderstats") then
		local Success,Error = pcall(function()
			store:SetAsync("id-"..player.UserId,{Cash = player.leaderstats.Cash.Value,Diamonds = player.leaderstats.Diamonds.Value})
		end)
	end
end)
