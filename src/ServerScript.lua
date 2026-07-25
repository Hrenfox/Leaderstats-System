local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)

	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local Coins = Instance.new("IntValue")
	Coins.Name = "Coins"
	Coins.Value = 0
	Coins.Parent = leaderstats

	local Level = Instance.new("IntValue")
	Level.Name = "Level"
	Level.Value = 1
	Level.Parent = leaderstats

	local Kills = Instance.new("IntValue")
	Kills.Name = "Kills"
	Kills.Value = 0
	Kills.Parent = leaderstats

	local Deaths = Instance.new("IntValue")
	Deaths.Name = "Deaths"
	Deaths.Value = 0
	Deaths.Parent = leaderstats

	player.CharacterAdded:Connect(function(character)

		local humanoid = character:WaitForChild("Humanoid")

		humanoid.Died:Connect(function()
			Deaths.Value += 1
		end)

	end)

end)
