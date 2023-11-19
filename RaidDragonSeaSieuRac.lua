repeat wait() until game:IsLoaded()
_G.Color = Color3.fromRGB(66, 245, 135)
_G.Logo = 0000
local Evil = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2duck/gui-/main/sillyhubfreegui.lua"))()
local Win = library:Evil("Crystal "," Hub",_G.Logo )
local tab1 = Win:CraftTab('Auto Raid')
local page1 = tab1:CraftPage('Main',1)

page1:Toggle('Killaura',false,function(value)
    Killaura =  value
end)

page1:Toggle('Auto Raid (Only Melee,Sword)',false,function(value)
    CC = value
end)

page1:Toggle('Fast Attack (All Weapon)',false,function(value)
    CBLRaid = value
end)

page1:Button('Teleport to Raid',function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2299.685791015625, 1035.02490234375, -2715.144775390625)
end)

local page2 = tab1:CraftPage('Player',2)

page2:Label('Mics')

page2:Button('FlyGui',function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Reiji0001/Fly-Gui/main/Fly-Gui_Source"))()
end)

page2:Button('Low Mode',function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/crystalnerd/ScriptLinhTinh/main/AntiLag2"))()
end)

local tab2 = Win:CraftTab('Comming Soon')

spawn(function()
    while wait(0.01) do
        if CBLRaid then
            pcall(function()
                local args = {
                    [1] = 1,
                    [2] = game:GetService("Players").LocalPlayer
                }
                if game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("HackerDepTreai") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].HackerDepTreai.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("Attack") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].Attack.RemoteEvent:FireServer(unpack(args))
                end
            end) 
        end
    end
end)

spawn(function()
    while wait() do
        if CC then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-68.81217956542969, 138.3164520263672, 40.44826889038086)
            pcall(function()
                spawn(function()
                    game:GetService("RunService").Heartbeat:Connect(function()
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                            setfflag("HumanoidParallelRemoveNoPhysics", "False")
                            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                        end
                    end)
                end)
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Killaura then
            for i,v in pairs(game.Workspace.SpawnEnemy:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.Transparency = 1000
                        until not Killaura or not v.Parent or v.Humanoid.Health <= 1
                    end)
                end
            end
        end
    end
end)

game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tools)
    if tools:IsA("Tool") then
        if tools:FindFirstChild("HackerDepTreai") or tools:FindFirstChild("Attack") then 
            Vtool = tools.Name
        end
    end
end)
