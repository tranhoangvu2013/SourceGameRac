local KeySystemUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/tranvanbao14112008/PickleHub/main/KeySystemW.lua"))()
KeySystemUI.New({
   ApplicationName = "PickleHub", -- Your Key System Application Name
   Name = "Pickle Hub", -- Your Script name
   Info = "Do You Need Help? | Please Join Discord!", -- Info text in the GUI, keep empty for default text.
   DiscordInvite = "https://discord.gg/ta7EasMvCv" -- Optional.
})
repeat task.wait() until KeySystemUI.Finished() or KeySystemUI.Closed
   if KeySystemUI.Finished() and KeySystemUI.Closed == false then

      if game.PlaceId == 13370783664 then

         game.StarterGui:SetCore("SendNotification", {
            Title = "Loadings...",
            Text = "Wait 10 Seconds!",
            Icon = "rbxassetid://14660986586",
            Duration = 10
         })
         wait(5)
         local args = {
            [1] = workspace.Check.ToWorld2
         }

         game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
         wait(1)
         local args = {
            [1] = workspace.Check.ToWorld3
         }

         game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
         wait(1)
         local args = {
            [1] = workspace.Check.ToWorld4
         }

         game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
         wait(1)
         local args = {
            [1] = workspace.Check.ToWorld5
         }

         game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
         wait(1)
         local args = {
            [1] = 1
         }

         game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
         wait(1)
         game.StarterGui:SetCore("SendNotification", {
            Title = "Important",
            Text = "Please Defeat Vegeta!",
            Icon = "rbxassetid://14660986586",
            Duration = 10
         })
         wait(1)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21.7345638, 4.69635582, 29.9880333, -0.125640884, -6.59777899e-10, 0.992075801, -2.19710294e-09, 1, 3.86797039e-10, -0.992075801, -2.13109508e-09, -0.125640884)
         wait(1)

         local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/tranvanbao14112008/PickleHub/main/Pickle_Ui.lua')))()

         local Window = OrionLib:MakeWindow({Name = "Pickle Hub | Anime Energy Clash Simulator", HidePremium = false, IntroText = "Pickle Hub | Community", Icon = "14660700477", SaveConfig = true, ConfigFolder = "PickleHub_AnimeEnergyClashSimulator"})

         local Tab1 = Window:MakeTab({
            Name = "General",
            Icon = "rbxassetid://7040391851",
            PremiumOnly = false
         })

         local Tab2 = Window:MakeTab({
            Name = "Summon",
            Icon = "rbxassetid://9606626859",
            PremiumOnly = false
         })

         local Tab3 = Window:MakeTab({
            Name = "Teleport",
            Icon = "rbxassetid://9606628205",
            PremiumOnly = false
         })

         local Tab4 = Window:MakeTab({
            Name = "Misc",
            Icon = "rbxassetid://9613645002",
            PremiumOnly = false
         })

         Tab1:AddToggle({
            Name = "Auto Win Boss",
            Default = false,
            Callback = function(value)
            win = value
         end
      })

      Tab1:AddToggle({
         Name = "Auto Rebirth",
         Default = false,
         Callback = function(value)
         rebirth = value
      end
   })

   Tab1:AddToggle({
      Name = "Auto Claim",
      Default = false,
      Callback = function(value)
      event1 = value
   end
})

Tab1:AddDropdown({
   Name = "Select Train",
   Default = "None Train",
   Options = {"None Train" ,"Sword", "Ki", "Chakra"},
   Callback = function(value)

   if value == "None Train" then
      --none

   elseif value == "Sword" then
      local args = {
         [1] = "p1"
      }

      game:GetService("ReplicatedStorage").Remote.Event.Skin:FindFirstChild("[C-S]TryEquipBestSkin"):FireServer(unpack(args))

   elseif value == "Ki" then
      local args = {
         [1] = "p2"
      }

      game:GetService("ReplicatedStorage").Remote.Event.Skin:FindFirstChild("[C-S]TryEquipBestSkin"):FireServer(unpack(args))

   elseif value == "Chakra" then
      local args = {
         [1] = "p3"
      }

      game:GetService("ReplicatedStorage").Remote.Event.Skin:FindFirstChild("[C-S]TryEquipBestSkin"):FireServer(unpack(args))
   end
end
})

--tab2

Tab2:AddDropdown({
Name = "Select Egg Normal",
Default = "None Egg Normal",
Options = {"None Egg Normal", "Egg 1 | World 1", "Egg 2 | World 1", "Egg 3 | World 1", "Egg 4 | World 1", "Egg 5 | World 2", "Egg 6 | World 2", "Egg 7 | World 2", "Egg 8 | World 2", "Egg 9 | World 2", "Egg 10 | World 2", "Egg 11 | World 3", "Egg 12 | World 3", "Egg 13 | World 3", "Egg 14 | World 3", "Egg 15 | World 3", "Egg 16 | World 3", "Egg 17 | World 4", "Egg 18 | World 4", "Egg 19 | World 4", "Egg 20 | World 4", "Egg 21 | World 4", "Egg 22 | World 4", "Egg 23 | World 5", "Egg 24 | World 5", "Egg 25 | World 5", "Egg 26 | World 5" ,"Egg 27 | World 5"},
Callback = function(value)
_G.EggV1 = value
end
})

Tab2:AddDropdown({
Name = "Select Egg Gem",
Default = "None Egg Gem",
Options = {"None Egg Gem", "Egg Gem 1 | World 1"},
Callback = function(value)
_G.EggGem = value
end
})


Tab2:AddToggle({
Name = "Auto Hacth",
Default = false,
Callback = function(value)
hacth = value
end
})

Tab2:AddToggle({
Name = "Auto Craft All",
Default = false,
Callback = function(value)
craft = value
end
})

--tab3

Tab3:AddDropdown({
Name = "World",
Default = "None World",
Options = {"None World", "World 1", "World 2", "World 3", "World 4", "World 5"},
Callback = function(value)

if value == "None World" then
--none

elseif value == "World 1" then
local args = {
[1] = 1
}

game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
elseif value == "World 2" then
local args = {
[1] = 2
}

game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
elseif value == "World 3" then
local args = {
[1] = 3
}

game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
elseif value == "World 4" then
local args = {
[1] = 4
}

game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
elseif value == "World 5" then
local args = {
[1] = workspace.Check.ToWorld5
}

game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
end
end
})

Tab3:AddDropdown({
Name = "Other",
Default = "None Other",
Options = {"None Other", "Shenlong Shop","Hero Fusion","Rainbow Fusion","Enchant Machine"},
Callback = function(value)

if value == "None Other" then
--none

elseif value == "Shenlong Shop" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-63.1748428, 2.99999928, -81.1117249, 0.90548718, 3.53499914e-08, 0.424373597, -5.13271452e-08, 1, 2.62176538e-08, -0.424373597, -4.55216345e-08, 0.90548718)
elseif value == "Hero Fusion" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-40.1278725, 3.41228056, -88.5489349, 0.989218533, -1.12450795e-08, 0.146446779, -4.78829698e-10, 1, 8.00205129e-08, -0.146446779, -7.92279025e-08, 0.989218533)
elseif value == "Rainbow Fusion" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1097.77368, 5.40829325, -114.717834, 0.479725003, 2.10208153e-08, 0.877418876, -2.60648108e-08, 1, -9.70673675e-09, -0.877418876, -1.82131927e-08, 0.479725003)
elseif value == "Enchant Machine" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2220.47144, 3.42915511, -0.610107362, 0.517587066, 8.61505498e-08, 0.855630517, -1.02855154e-07, 1, -3.84676007e-08, -0.855630517, -6.80956802e-08, 0.517587066)
end
end
})

--misc

Tab4:AddToggle({
Name = "Auto Spin",
Default = false,
Callback = function(value)
spin = value
end
})

Tab4:AddToggle({
Name = "Auto Click",
Default = false,
Callback = function(value)
autoclick = value
end
})


Tab4:AddButton({
Name = "Redeem All Code",
Callback = function(value)
local args = {
[1] = "Luckyone"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
wait()
local args = {
[1] = "Goku"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
wait()
local args = {
[1] = "Shinyone"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
wait()
local args = {
[1] = "CurePack"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
wait()
local args = {
[1] = "Rainbow"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
end
})

Tab4:AddButton({
Name = "Anti Afk",
Callback = function(value)
local VirtualUser=game:service'VirtualUser' game:service'Players'.LocalPlayer.Idled:connect(function() VirtualUser:CaptureController() VirtualUser:ClickButton2(Vector2.new()) end)
warn("Anti-Afk has Loaded")
end
})

Tab4:AddButton({
Name = "Mega Boost FPS",
Callback = function()
fps()
end
})

Tab4:AddButton({
Name = "Boost FPS",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tranvanbao14112008/ScriptLinhTinh/main/AntiLag2"))()
end
})

--autoclick
spawn(function()
while wait() do
if autoclick then
pcall(function()
game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerClick"):FireServer()
end)
end
end
end)

--evrnt1
spawn(function()
while wait(1) do
if event1 then
local args = {
[1] = "E700"
}

game:GetService("ReplicatedStorage").Remote.Event.Events:FindFirstChild("[C-S]TryGetEventReward"):FireServer(unpack(args))

elseif craft then
game:GetService("ReplicatedStorage").Remote.Event.Pet:FindFirstChild("[C-S]TryCraftAll"):FireServer()

elseif spin then
game:GetService("ReplicatedStorage").Remote.Function.Spin:FindFirstChild("[C-S]TrySpin"):InvokeServer()

elseif win then
local args = {
[1] = true
}

game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerPKEnd"):FireServer(unpack(args))

elseif rebirth then
game:GetService("ReplicatedStorage").Remote.Event.Rebirth:FindFirstChild("[C-S]TryBuyRebirth"):FireServer()

pcall(function()
end)
end
end
end)

spawn(function()
while wait(1) do
if hacth and _G.EggV1 == "None Egg Normal" then
--none

elseif hacth and _G.EggV1 == "Egg 1 | World 1" then
local args = {
[1] = "Egg1"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 2 | World 1" then
local args = {
[1] = "Egg2"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 3 | World 1" then
local args = {
[1] = "Egg3"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 4 | World 1" then
local args = {
[1] = "Egg4"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 5 | World 2" then
local args = {
[1] = "Egg5"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 6 | World 2" then
local args = {
[1] = "Egg6"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 7 | World 2" then
local args = {
[1] = "Egg7"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 8 | World 2" then
local args = {
[1] = "Egg8"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 9 | World 2" then
local args = {
[1] = "Egg9"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 10 | World 2" then
local args = {
[1] = "Egg10"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))


elseif hacth and _G.EggV1 == "Egg 11 | World 3" then
local args = {
[1] = "Egg11"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 12 | World 3" then
local args = {
[1] = "Egg12"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 13 | World 3" then
local args = {
[1] = "Egg13"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 14 | World 3" then
local args = {
[1] = "Egg14"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 15 World 3" then
local args = {
[1] = "Egg15"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 16 World 3" then
local args = {
[1] = "Egg16"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 17 World 4" then
local args = {
[1] = "Egg17"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 18 | World 4" then
local args = {
[1] = "Egg18"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 19 World 4" then
local args = {
[1] = "Egg19"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 20 | World 4" then
local args = {
[1] = "Egg20"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 21 | World 4" then
local args = {
[1] = "Egg21"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 22 | World 4" then
local args = {
[1] = "Egg22"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 23 | World 5" then
local args = {
[1] = "Egg23"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))



elseif hacth and _G.EggV1 == "Egg 24 | World 5" then
local args = {
[1] = "Egg24"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 25 | World 5" then
local args = {
[1] = "Egg25"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 26 | World 5" then
local args = {
[1] = "Egg26"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 27 | World 5" then
local args = {
[1] = "Egg27"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))
pcall(function()
end)
end
end
end)

spawn(function()
while wait(1) do
if hacth and _G.EggGem == "None Egg Gem" then
--none

elseif hacth and _G.EggGem == "Egg Gem 1 | World 1" then
local args = {
[1] = "Gem1"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))
pcall(function()
end)
end
end
end)



function fps()
local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
v.Lifetime = NumberRange.new(0)
elseif v:IsA("Explosion") then
v.BlastPressure = 1
v.BlastRadius = 1
elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
v.Enabled = false
elseif v:IsA("MeshPart") then
v.Material = "Plastic"
v.Reflectance = 0
v.TextureID = 10385902758728957
end
end
for i, e in pairs(l:GetChildren()) do
if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
e.Enabled = false
end
end
end

OrionLib:Init()
--antixhit
loadstring(game:HttpGet("https://raw.githubusercontent.com/tranvanbao14112008/ScriptLinhTinh/main/AntiChit"))()

else
wait(0.5)

loadstring(game:HttpGet("https://raw.githubusercontent.com/tranvanbao14112008/PickleHub/main/StatusW.lua"))()
wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "Not Support Game",
Text = "Shutdown In 5 Seconds!",
Icon = "rbxassetid://14660986586",
Duration = 5
})
wait(5)
setclipboard("https://discord.gg/ta7EasMvCv")
wait(0.5)
game.Players.LocalPlayer:Kick("Not Support Game Please Check Status!")
end

else
game.StarterGui:SetCore("SendNotification", {
Title = "W W W",
Text = "You Close Gui?",
Icon = "rbxassetid://14660986586",
Duration = 5
})
end