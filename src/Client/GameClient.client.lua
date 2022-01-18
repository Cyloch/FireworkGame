repeat wait() until game.Players.LocalPlayer.Character

local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPLayer.CharacterAdded:Wait()
