repeat wait() until game:IsLoaded()
_G.Color = Color3.fromRGB(66, 245, 245)
_G.Logo = 14765538999
local Evil = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2duck/gui-/main/sillyhubfreegui.lua"))()
local Win = library:Evil("Star XYZ Hub","",_G.Logo )
local tab1 = Win:CraftTab('Main')
local page1 = tab1:CraftPage('Main',1)
page1:Button('Teleport Door 1',function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-171.528732, 184.97345, -2.12447405, 0.0251308512, 5.41790968e-08, 0.999684155, 7.29249106e-09, 1, -5.43795373e-08, -0.999684155, 8.65679173e-09, 0.0251308512)
end)
page1:Button('Teleport Door 2',function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-337.100281, 185.327805, -0.620007396, 0.0251287669, 3.59363987e-08, 0.999684215, -1.17289618e-08, 1, -3.56529242e-08, -0.999684215, -1.08293445e-08, 0.0251287669)
end)
page1:Toggle('Auto Attack And Skill',false,function(value)
AutoAttackAndSkill = value
end)
page1:Toggle('Teleport Boss',false,function(value)
TeleportBoss = value
end)
page1:Toggle('Teleport Energy Source 1',false,function(value)
TeleportEnergySource1 = value
end)
page1:Toggle('Teleport Energy Source 2',false,function(value)
TeleportEnergySource2 = value
end)
local page1 = tab1:CraftPage('Misc',2)
page1:Button('Anti Cheat',function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/AntiChit"))()
end)
page1:Button('Boost FPS',function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/AntiLag2"))()
end)
page1:Button('Fly Gui',function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/crystalnerd/SupportBuLon/main/FlyBuLon"))()
end)
page1:Button('Anti AFK',function()
    local VirtualUser=game:service'VirtualUser' game:service'Players'.LocalPlayer.Idled:connect(function() VirtualUser:CaptureController() VirtualUser:ClickButton2(Vector2.new()) end)
warn("Anti-Afk has Loaded")
end)
spawn(function()
while wait(0.5) do
if TeleportBoss then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-535.079712, 184.957581, -2.67367506, -0.0125594605, -5.78345905e-08, -0.999921143, -1.68933667e-08, 1, -5.76269628e-08, 0.999921143, 1.61682703e-08, -0.0125594605)
end)
end
end
end)
spawn(function()
while wait(0.5) do
if TeleportEnergySource1 then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.251526, 184.957596, 54.2952309, 0.942981958, -1.80784294e-08, 0.3328439, -6.64310651e-09, 1, 7.31356593e-08, -0.3328439, -7.11767285e-08, 0.942981958)
end)
end
end
end)
spawn(function()
while wait(0.5) do
if TeleportEnergySource2 then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.275696, 184.958221, -55.1067352, -0.994300663, 3.78536882e-08, 0.106612094, 4.82310121e-08, 1, 9.47588816e-08, -0.106612094, 9.93608325e-08, -0.994300663)
end)
end
end
end)
spawn(function()
while wait(0.5) do
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
