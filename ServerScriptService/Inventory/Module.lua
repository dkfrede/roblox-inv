local ServerStorage = game:GetService("ServerStorage")

local Items = ServerStorage.Inventory:WaitForChild("Items")

local module = {}

function module.AddInventory(player,item,amount,itemprice)
	if item ~= nil then
		if Items:FindFirstChild(item) then
			if player:FindFirstChild("Inventory") then
				if not player.Inventory:FindFirstChild(item) then
					local price = 0
					for i=1,amount do
						price = price + itemprice
					end
					
					if player.leaderstats.Cash.Value >= price then
					
						local Item = Instance.new("IntValue",player.Inventory)
						Item.Name = item
						Item.Value = amount
						
						player.leaderstats.Cash.Value -= price
					else
						print("error - player dont have the money to buy x"..amount.." "..item.." for $"..price.."")
						
					end
				else
					local price = 0
					for i=1,amount do
						price = price + itemprice
					end

					if player.leaderstats.Cash.Value >= price then
						player.Inventory:FindFirstChild(item).Value += amount
						
						player.leaderstats.Cash.Value -= price
					else
						print("error - player dont have the money to buy x"..amount.." "..item.." for $"..price.."")
					end
				end
			end
		end
	end
end

function module.RemoveInventory(player,item,amount)
	if item ~= nil then
		if item ~= nil then
			if Items:FindFirstChild(item) then
				if player:FindFirstChild("Inventory") then
					if not player.Inventory:FindFirstChild(item) then
						print("Error - player don't have the removed item")
					else
						if player.Inventory:FindFirstChild(item) == 1 then
							player.Inventory:FindFirstChild(item):Destroy()
						else
							if player.Inventory:FindFirstChild(item).Value <= amount then
								
								player.Inventory:FindFirstChild(item):Destroy()
								
							else
								player.Inventory:FindFirstChild(item).Value -= 1
							end
						end
					end
				end
			end
		end
	end
end

function module.ClearAllInventoryItems(player)
	if player:FindFirstChild("Inventory") then
		player.Inventory:ClearAllChildren()
	end
end

function module.HaveInventoryItem(player,item,amount)
	if player:FindFirstChild("Inventory") then
		if player.Inventory:FindFirstChild(item) then
			if player.Inventory[item].Value >= amount then
				return true
			end
		end
	end
end




return module
