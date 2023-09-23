repeat wait() until game:IsLoaded()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/TranVanBao1411/StarXYZHub/main/OrionUi.lua')))()
local Window = OrionLib:MakeWindow({Name = "Star XYZ Hub | Dungeon Quest", HidePremium = false, IntroText = "Star XYZ Hub | Community", Icon = "14765538999"})
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://7040391851",
	PremiumOnly = false
})
local MainSection = MainTab:AddSection({
	Name = "I Need More Bullets"
})
MainTab:AddButton({
	Name = "Teleport To Door 1",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-171.528732, 184.97345, -2.12447405, 0.0251308512, 5.41790968e-08, 0.999684155, 7.29249106e-09, 1, -5.43795373e-08, -0.999684155, 8.65679173e-09, 0.0251308512)
  	end    
})
MainTab:AddButton({
	Name = "Teleport To Door 2",
	Callback = function(value)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-337.100281, 185.327805, -0.620007396, 0.0251287669, 3.59363987e-08, 0.999684215, -1.17289618e-08, 1, -3.56529242e-08, -0.999684215, -1.08293445e-08, 0.0251287669)
  	end    
})
MainTab:AddButton({
	Name = "Boost FPS",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/AntiLag2"))()
  	end    
})
local MainSection = MainTab:AddSection({
	Name = "I Love Big Weapon"
})
MainTab:AddToggle({
	Name = "Auto Teleport To Boss",
	Default = false,
	Callback = function(value)
		TeleportToBoss = value
	end    
})
MainTab:AddToggle({
	Name = "Auto Teleport To Energy Soucre 1",
	Default = false,
	Callback = function(value)
		TeleportToEnergySoucre1 = value
	end    
})
MainTab:AddToggle({
	Name = "Auto Teleport To Energy Soucre 2",
	Default = false,
	Callback = function(value)
		TeleportToEnergySoucre2 = value
	end    
})
MainTab:AddToggle({
	Name = "Auto Attack - Skill",
	Default = false,
	Callback = function(value)
		AutoAttackAndSkill = value
	end    
})
spawn(function()
while wait(0.5) do
if TeleportToBoss then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-535.079712, 184.957581, -2.67367506, -0.0125594605, -5.78345905e-08, -0.999921143, -1.68933667e-08, 1, -5.76269628e-08, 0.999921143, 1.61682703e-08, -0.0125594605)
end)
end
end
end)
spawn(function()
while wait(0.5) do
if TeleportToEnergySoucre1 then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.251526, 184.957596, 54.2952309, 0.942981958, -1.80784294e-08, 0.3328439, -6.64310651e-09, 1, 7.31356593e-08, -0.3328439, -7.11767285e-08, 0.942981958)
end)
end
end
end)
spawn(function()
while wait(0.5) do
if TeleportToEnergySoucre2 then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.275696, 184.958221, -55.1067352, -0.994300663, 3.78536882e-08, 0.106612094, 4.82310121e-08, 1, 9.47588816e-08, -0.106612094, 9.93608325e-08, -0.994300663)
end)
end
end
end)
spawn(function()
while wait(0.1) do
if AutoAttackAndSkill then
pcall(function()
game:GetService("ReplicatedStorage").remotes.weaponUsed:FireServer()
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Glitch Blade").swing:FireServer()
local args = {
    [1] = "e",
    [2] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chain Phase Shock")
}
game:GetService("ReplicatedStorage").remotes.abilityUsed:FireServer(unpack(args))
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chain Phase Shock").abilityEvent:FireServer()
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phase Barrage").spellEvent:FireServer()
end)
end
end
end)
