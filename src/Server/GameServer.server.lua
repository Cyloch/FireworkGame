
local MyServerService = require(game.ServerScriptService:WaitForChild('Services'):WaitForChild('MyServerService'))

print('Server started')

MyServerService.Exec()

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Tools = ReplicatedStorage:WaitForChild("Tools")
local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(Player)
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local FireworkTool = Tools:WaitForChild("Firework"):Clone()
    FireworkTool.Parent = Player.Backpack
end)
