local tool = script.Parent
local toolModel = tool:WaitForChild("Model")
local realModel = game:GetService("ReplicatedStorage"):WaitForChild("Firework")
local canActivate = true


local function toolTransparency(transparency)
	local parts = toolModel:GetChildren()
	for i = 1, #parts do
		if parts[i]:IsA("BasePart") then
			parts[i].Transparency = transparency
		end
	end
end


tool.Activated:Connect(function()
	if canActivate then
		canActivate = false
		toolTransparency(1)
		local newModel = realModel:Clone()
		newModel.Parent = game.Workspace
		newModel:SetPrimaryPartCFrame(tool.Handle.CFrame)
		newModel.Core.Launch:Play()
		wait(2)
		newModel.Model:Destroy()
		newModel.Core.Particles:Emit(100)
		newModel.Core.Explosion:Play()
		wait(2)
		newModel:Destroy()
		toolTransparency(0)
		canActivate = true
	end
end)