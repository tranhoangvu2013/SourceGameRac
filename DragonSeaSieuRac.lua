repeat wait() until game:IsLoaded()

function TP(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function Click()
    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
end

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end


_G.ColorESP = Color3.new(0,255,255)

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateBfEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then   
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Handle)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = _G.ColorESP
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateDBEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DragonBallESP then
                if string.find(v.Name, "DB1") or string.find(v.Name, "DB2") or string.find(v.Name, "DB3") or string.find(v.Name, "DB4") or string.find(v.Name, "DB5") or string.find(v.Name, "DB6") or string.find(v.Name, "DB7") then   
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Handle)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = _G.ColorESP
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end)
    end
end

function UnEquipWeapon(ToolSess)
    if game.Players.LocalPlayer.Character:FindFirstChild(ToolSess) then
        getgenv().toolun = game.Players.LocalPlayer.Character:FindFirstChild(ToolSess)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools(toolun)
    end
end

_G.Color = Color3.fromRGB(11, 230, 113)
_G.Logo = 15094837583
wait(0.1)

local Weaponlist = {}
function Update()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        table.insert(Weaponlist,v.Name)
    end   
end

Update()


function CheckQuest()
    local Level = game:GetService("Players").LocalPlayer.Data.Levels.Value
    if Level == 1 or Level <= 49 then
        QuestN = "Lv1Quest"
        Num = 1
    elseif Level == 50 or Level <= 99 then
        Nume = 1
        QuestN = "Lv50Quest"
        Num = 2
    elseif Level == 100 or Level <= 149 then
        Num2 = 2
        QuestN = "Lv100Quest"
        Num = 3
    elseif Level == 150 or Level <= 199 then
        Nume = 3
        QuestN = "Lv150Quest"
        Num = 4
    elseif Level == 200 or Level <= 249 then
        Nume = 4
        QuestN = "Lv200Quest"
        Num = 5
    elseif Level == 250 or Level <= 299 then
        Nume = 5
        QuestN = "Lv250Quest"
        Num = 6
    elseif Level == 300 or Level <= 349 then
        Nume = 6
        QuestN = "Lv300Quest"
        Num = 7
    elseif Level == 350 or Level <= 399 then
        Nume = 7
        QuestN = "Lv350Quest"
        Num = 8
    elseif Level == 400 or Level <= 499 then
        Nume = 8
        QuestN = "Lv400Quest"
        Num = 9
    elseif Level == 500 or Level <= 549 then
        Nume = 9
        QuestN = "Lv500Quest"
        Num = 10
    elseif Level == 550 or Level <= 599 then
        Nume = 10
        QuestN = "Lv550Quest"
        Num = 11
    elseif Level == 600 or Level <= 649 then
        Nume = 11
        QuestN = "Lv600Quest"
        Num = 12
    elseif Level == 650 or Level <= 699 then
        Nume = 12
        QuestN = "Lv650Quest"
        Num = 13
    elseif Level == 700 or Level <= 749 then
        Nume = 13
        QuestN = "Lv700Quest"
        Num = 14
    elseif Level == 750 or Level <= 799 then
        Nume = 14
        QuestN = "Lv750Quest"
        Num = 15
    elseif Level == 800 or Level <= 849 then
        Nume = 15
        QuestN = "Lv800Quest"
        Num = 16
    elseif Level == 850 or Level <= 899 then
        Nume = 16
        QuestN = "Lv850Quest"
        Num = 17
    elseif Level == 900 or Level <= 999 then
        Nume = 17
        QuestN = "Lv900Quest"
        Num = 18
    elseif Level == 1000 or Level <= 1049 then
        Nume = 18
        QuestN = "Lv1000Quest"
        Num = 19
    elseif Level == 1050 or Level <= 1099 then
        Nume = 19
        QuestN = "Lv1050Quest"
        Num = 20
    elseif Level == 1100 or Level <= 1299 then
        Nume = 20
        QuestN = "Lv1100Quest"
        Num = 21
    elseif Level == 1300 or Level <= 1399 then
        Nume = 21
        QuestN = "Lv1300Quest"
        Num = 22
    elseif Level == 1400 or Level <= 1449 then
        Nume = 22
        QuestN = "Lv1400Quest"
        Num = 23
    elseif Level == 1450 or Level <= 1499 then
        Nume = 23
        QuestN = "Lv1450Quest"
        Num = 24
    elseif Level == 1500 or Level <= 1549 then
        Nume = 24
        QuestN = "Lv1500Quest"
        Num = 25
    elseif Level == 1550 or Level <= 1599 then
        Nume = 25
        QuestN = "Lv1550Quest"
        Num = 26
    elseif Level == 1600 or Level <= 1649 then
        Nume = 26
        QuestN = "Lv1600Quest"
        Num = 27
    elseif Level == 1650 or Level <= 1699 then
        Nume = 27
        QuestN = "Lv1650Quest"
        Num = 28
    end
end
CheckQuest()

local Evil = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2duck/gui-/main/sillyhubfreegui.lua"))()
local Win = library:Evil("Dragon Sea","",_G.Logo )
local Weapon = nil
local tab1 = Win:CraftTab('Main')
local tab2 = Win:CraftTab('Misc')
local tab3 = Win:CraftTab('Teleport')
local tab4 = Win:CraftTab('Raid')
local page1 = tab1:CraftPage('Main',1)

page1:Toggle('Killaura Mob',false,function(value)
    Killaura =  value
end)

page1:Toggle('Auto Farm Level',false,function(value)
    Farm = value
end)

page1:Toggle('Fast Attack (Only Map)',false,function(value)
    CBLRaid = value
end)

local page2 = tab1:CraftPage('Config',2)

page2:Toggle('Dupe Farm',false,function(value)
    Dupe = value
end)

page2:Dropdown("Select Method Farm",{"Normal","Fast"},"Normal",function(a)
    Method = a
end)

page2:Slider("Distance Farm",true,0,100,1,function(value)
    DistanceMob = value
end)


page2:Dropdown("Select Weapon",Weaponlist,"",function(a)
    Weapon = a
end)


local page1_2 = tab2:CraftPage('Misc',1)

page1_2:Toggle('Esp Fruit',false,function(va)
    DevilFruitESP = va
    while DevilFruitESP do wait()
        UpdateBfEsp() 
    end
end)

page1_2:Toggle('Esp Dragon Ball',false,function(va)
    DragonBallESP = va
    while DragonBallESP do wait()
        UpdateDBEsp() 
    end
end)

page1_2:Button('Grab Fruit',function()
    pcall(function()
        for _,v in pairs(game.workspace:GetChildren()) do
            if string.find(v.Name,"Fruit") then
                if v:IsA("Tool") then
                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end)
end)

page1_2:Button('Grab Dragon Ball',function()
    pcall(function()
        for _,v in pairs(game.workspace:GetChildren()) do
            if string.find(v.Name,"DB1") or string.find(v.Name, "DB2") or string.find(v.Name, "DB3") or string.find(v.Name, "DB4") or string.find(v.Name, "DB5") or string.find(v.Name, "DB6") or string.find(v.Name, "DB7") then
                if v:IsA("Tool") then
                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end)
end)

page1_2:Button('FlyGui',function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Reiji0001/Fly-Gui/main/Fly-Gui_Source"))()
end)
page1_2:Button('Low Mode',function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/crystalnerd/ScriptLinhTinh/main/AntiLag2"))()
end)

local page2_2 = tab2:CraftPage('Stats',2)

page2_2:Toggle('Auto Stats (Melee)',false,function(value)
    Melee = value
end)

page2_2:Toggle('Auto Stats (Defense)',false,function(value)
    Defense = value
end)

page2_2:Toggle('Auto Stats (Sword)',false,function(value)
    Sword = value
end)

page2_2:Toggle('Auto Stats (Devil Fruit)',false,function(value)
    DevilFruit = value
end)

local page1_3 = tab3:CraftPage('Teleport',1)

page1_3:Dropdown("Select Island To Teleport",{"Start Island","Sand Island","Roshi Island","Snow Island","Pink Island","NameK Island","IDK Island","DontKnowThisIsland","Sky Island","Sky2 Island","Magma Island","Broly Island","Snuw Island","Secret House","Zamasu Island","Boss Broly Island","Sea Beast Island"},nil,function(a)
    if a == "Start Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(763.180908, 198.715561, 313.915527, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a == "Sand Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1400.95068, 107.864403, -366.769592, 0.173624337, 0, 0.984811902, 0, 1, 0, -0.984811902, 0, 0.173624337)
    elseif a == "Roshi Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-700.902893, 100.1214142, -1429.79468, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469)
    elseif a == "Snow Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(400.063232, 104.515747, -2343.72412, 0.152966559, 0, 0.988231361, 0, 1, 0, -0.988231361, 0, 0.152966559)
    elseif a == "Pink Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2700.44238, 99.3593597, -2515.00439, 0.344021738, -0, -0.938961744, 0, 1, -0, 0.938961744, 0, 0.344021738)
    elseif a == "NameK Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-492.455078, 87.4435577, 2207.8479, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    elseif a == "IDK Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(702.585754, 200.011795, 4200.17188, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    elseif a =="DontKnowThisIsland" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3599.39429, 76.961422, -1500.0415, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Sky Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2313.02148, 1100.74725, -2486.85059, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a =="Snuw Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1292.31323, 120.282104, 4108.2207, 0, 0, 1, 0, -1, 0, 1, 0, -0)
    elseif a =="Magma Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1223.66321, 100.9973755, -3480.50439, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a =="Sky2 Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9930.25977, 9992.77637, -9.17041016, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Broly Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3344.97827, 88.4703445, 324.548096, -0.226463541, -2.25652652e-08, -0.974019647, 3.46116096e-08, 1, -3.12144977e-08, 0.974019647, -4.07813339e-08, -0.226463541)
    elseif a =="Secret House" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9900.36719, 10126.2021, 209.791992, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Zamasu Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3334.58179, 79.9945602, 1399.63916, 0.207508251, -9.89531443e-08, 0.978233278, -3.65285189e-08, 1, 1.08903592e-07, -0.978233278, -5.83318069e-08, 0.207508251)
    elseif a =="Boss Broly Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5945.77246, 86.3899689, 3287.37573, 0.0122147491, -6.73873046e-08, 0.999925375, -7.53682343e-08, 1, 6.83130068e-08, -0.999925375, -7.61970398e-08, 0.0122147491)
    elseif a =="Sea Beast Island" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2290.80273, 83.3219299, 1260.94067, -0.0748878866, 3.82371255e-08, -0.997191966, 3.24806386e-08, 1, 3.59055434e-08, 0.997191966, -2.97005407e-08, -0.0748878866)
    end
end)

page1_3:Dropdown("Select NPC To Teleport",{"Combat NPC","Dark Blade NPC","Wooden Sword NPC","Black Leg NPC","Speed Nimbus NPC","Random Race NPC","Dark Blade Awake NPC","Diamond Sword NPC","Flower Sword NPC","Dragon Ball NPC","Race V2 NPC","Electro NPC","Dragon Combat NPC","Dark Sword NPC","Devil Fruit NPC (Beli)","Devil Fruit NPC (Gem)","? NPC","Flame Sword NPC","Legendary Combat NPC","Awakening Fruit NPC","Mini Blade NPC","Lucky Random NPC (Ruby)"},nil,function(a)
    if a == "Combat NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(324.491699, 95.0442429, 640.770386, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a == "Dark Blade NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(326.995056, 94.5463333, 700.915344, -0.998775065, 3.27190435e-08, 0.0494808927, 3.4276578e-08, 1, 3.06289571e-08, -0.0494808927, 3.2287474e-08, -0.998775065)
    elseif a == "Wooden Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(693.296448, 95.3060303, 358.411926, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a == "Black Leg NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1353.80566, 69.2778931, -410.218567, 0.202771068, 0, 0.979226172, 0, 1, 0, -0.979226172, 0, 0.202771068)
    elseif a == "Speed Nimbus NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-683.739441, 66.8792419, -1508.07739, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Random Race NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2525.24731, 83.6779327, 1329.15759, -0.999616385, -2.39192877e-06, 0.0277067125, 2.39192877e-06, 1, 0.000172627479, -0.0277067125, 0.000172627479, -0.999616385)
    elseif a =="Dark Blade Awake NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9897.81738, 10108.9648, 159.725479, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a =="Diamond Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(332.367798, 73.7791748, -2189.32666, 0.870833814, 0, 0.491577566, 0, 1, 0, -0.491577566, 0, 0.870833814)
    elseif a =="Flower Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2753.55688, 132.597, -2810.2124, 0.870833814, 0, 0.491577566, 0, 1, 0, -0.491577566, 0, 0.870833814)
    elseif a =="Dragon Ball NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-364.716034, 208.071259, 2480.65845, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    elseif a =="Race V2 NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-215.362549, 149.672379, 2573.77271, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    elseif a =="Electro NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3720.87817, 71.5120239, -1512.24292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    elseif a =="Dragon Combat NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1212.63647, 62.8808861, -3430.13574, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    elseif a =="Dark Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3978.69727, 175.450104, 55.7550926, 0.2798419, 0.774647951, 0.567105949, -0.166371077, 0.620899677, -0.766031504, -0.94552058, 0.120017737, 0.302632749)
    elseif a =="Devil Fruit NPC (Gem)" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3520.30054, 110.198532, 1392.3158, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    elseif a =="? NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3750.03247, 89.1133957, 484.051758, 0.974033058, -0, -0.226405889, 0, 1, -0, 0.226405889, 0, 0.974033058)
    elseif a =="Flame Sword NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2480.08716, 1037.58276, -2659.84473, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
    elseif a =="Legendary Combat NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1402.45935, 121.164917, 4284.67285, 0.0653696954, 6.20536582e-08, 0.997861087, -1.76270714e-08, 1, -6.10319262e-08, -0.997861087, -1.35997302e-08, 0.0653696954)
    elseif a =="Awakening Fruit NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1207.09473, 76.1849365, 3944.9873, -0.056713324, 6.12705904e-08, -0.998390496, 4.28006039e-08, 1, 5.89380882e-08, 0.998390496, -3.93891391e-08, -0.056713324)
    elseif a =="Mini Blade NPC" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3281.55371, 69.3005295, 22.631422, -0.946952462, 1.50558872e-08, 0.321373612, -3.67973629e-09, 1, -5.76911781e-08, -0.321373612, -5.58133735e-08, -0.946952462)
    elseif a =="Lucky Random NPC (Ruby)" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3272.34326, 89.0924606, -204.238068, 0.526233375, -9.13948455e-08, -0.850340188, 2.92853137e-08, 1, -8.93571013e-08, 0.850340188, 2.21202114e-08, 0.526233375)
    elseif a =="Devil Fruit NPC (Beli)" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(479.479065, 94.8633347, 693.720398, -0.994107902, -3.14160289e-08, 0.108395211, -2.75976735e-08, 1, 3.67263944e-08, -0.108395211, 3.35185426e-08, -0.994107902)
     end
end)

local page1_4 = tab4:CraftPage('Raid',1)

page1_4:Toggle('Killaura Raid (Stop On Wave 5)',false,function(value)
    KillauraRaid =  value
end)

page1_4:Toggle('Auto Boss Raid (Use Fly)',false,function(value)
    CC = value
end)

page1_4:Toggle('Fast Attack (Only Raid)',false,function(value)
    CBLRaid2 = value
end)

page1_4:Button('Teleport to Raid',function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2299.685791015625, 1035.02490234375, -2715.144775390625)
end)

function fixQuest()
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestTake") then
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
            if v.Name == "QuestTake" then
                v.Decline.Size = UDim2.new(0, 10000, 0, 10000)
                v.Decline.Position = UDim2.new(-2, 0, -5, 0)
                v.Decline.BackgroundTransparency = 1
            end
        end   
        wait(.5)
        Click()
    end
end
spawn(function()
    while wait() do
        if Farm then
            pcall(function()
                CheckQuest()
                if game:GetService("Players").LocalPlayer.Quest.Num.Value == 0 then
                    CheckQuest()
                    Fast = false
                    for _,v in pairs(game.workspace.QuestFolder:GetChildren()) do
                        if v.Name == QuestN then			
                            TP(v.ClickPart.CFrame * CFrame.new(0,0,3))
                            wait(0.1)
                            Fast = false
                            fireclickdetector(v.ClickPart.ClickDetector)					
                        end
                    end
                    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestTake") then
                        local Event = game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept.RemoteEvent
                        Event:FireServer()
                    end 
                elseif game:GetService("Players").LocalPlayer.Quest.Num.Value == Num then
                    CheckQuest()
                    spawn(function()
                        fixQuest()
                    end)
                    for i,x in pairs(game:GetService("Workspace").Npc:GetChildren()) do
                        if x:FindFirstChild("Data") then
                            if Num ~= 1 and x.Data.Num.Value ~= 1 and Dupe then
                                if x.Data.Num.Value == Num then
                                    if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            EquipWeapon(Weapon)
                                            if Method == "Normal"then
                                                Click()
                                            elseif Method == "Fast" then
                                                Fast = true
                                            else
                                                Click()   
                                            end
                                            TP(x.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob))
                                        until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                    end
                                else
                                    if x.Data.Num.Value == Nume then
                                        if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                EquipWeapon(Weapon)
                                                if Method == "Normal"then
                                                    Click()
                                                elseif Method == "Fast" then
                                                    Fast = true
                                                else
                                                    Click()   
                                                end
                                                TP(x.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob))
                                            until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                        end
                                    end
                                end
                            else
                                if x.Data.Num.Value == Num then
                                    if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            EquipWeapon(Weapon)
                                            if Method == "Normal"then
                                                Click()
                                            elseif Method == "Fast" then
                                                Fast = true
                                            else
                                                Click()   
                                            end
                                            TP(x.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceMob))
                                        until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                    end
                                end
                            end
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Quest.Num.Value ~= Num and game:GetService("Players").LocalPlayer.Quest.Num.Value ~= 0 then
                    UnEquipWeapon(Weapon)
                    CheckQuest()
                    Fast = false

                    spawn(function()
                        fixQuest()
                    end)

                    if game:GetService("Players").LocalPlayer.Quest.Num.Value ~= Num then
                        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestBar") then
                            local Event = game:GetService("Players").LocalPlayer.PlayerGui.QuestBar.Background.Cancle.RemoteEvent
                            Event:FireServer()
                        end
                    end
                    wait()
                    for _,v in pairs(game.workspace.QuestFolder:GetChildren()) do
                        if v.Name == QuestN then			
                            TP(v.ClickPart.CFrame * CFrame.new(0,0,3))
                            Fast = false
                            wait(0.1)
                        end
                    end
                end
            end)
        else
            Fast = false
        end
    end
end)

spawn(function()
    while wait(0.01) do
        if CBLRaid or Fast then
            pcall(function()
                local args = {
                    [1] = 1,
                    [2] = game:GetService("Players").LocalPlayer
                }
                if game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("HackerSo1TheGioi") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].HackerSo1TheGioi.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("Attack") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].Attack.RemoteEvent:FireServer(unpack(args))
                end
            end) 
        end
    end
end)

spawn(function()
    while wait(0.01) do
        if CBLRaid2 then
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
            if game.workspace:FindFirstChild("Npc") then
                check = game.Workspace.Npc
            end
            wait()
            for i,v in pairs(check:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.Transparency = 0.8
                        until not Killaura or not v.Parent or v.Humanoid.Health <= 1
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if KillauraRaid then
            for i,v in pairs(game.Workspace.SpawnEnemy:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                            v.HumanoidRootPart.Transparency = 1000
                        until not KillauraRaid or not v.Parent or v.Humanoid.Health <= 1
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Melee then
            pcall(function()
                local args = {
                    [1] = "Melee"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Defense then
            pcall(function()
                local args = {
                   [1] = "MaxHealth"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Sword then
            pcall(function()
                local args = {
                    [1] = "Sword"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if DevilFruit then
            pcall(function()
                local args = {
                    [1] = "DevilFruit"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)


game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tools)
    if tools:IsA("Tool") then
        if tools:FindFirstChild("HackerSo1TheGioi") or tools:FindFirstChild("Attack") or tools:FindFirstChild("HackerDepTreai") then 
            Vtool = tools.Name
        end
    end
end)
