local ok, val = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/k7gi/poopo/refs/heads/main/thegoat.lua"))()
end)

if not ok or val ~= "ImKindaGay" then
    print("nice try skid")
    return
end

print("it FUCKING RETURNED omg nigga boy")
local fucknigga = tick()
repeat task.wait() until game:IsLoaded()
if not game:GetService("Players").LocalPlayer.Character then 
    game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
end

if game:GetService("ReplicatedFirst"):FindFirstChild("Intro") then 
	task.spawn(function()
		if (getgenv().Auto_Rejoiner) then
			local IntroUI = PlayerGui:FindFirstChild("IntroUI")
			if IntroUI then
				local PlayButton = IntroUI:FindFirstChild("SurfaceGui"):FindFirstChild("Frame"):FindFirstChild("Play")
				task.wait(15)
				repeat
					getconnections(PlayButton.MouseButton1Click)[1]:Fire()
					task.wait(.25)
				until not PlayerGui:FindFirstChild("IntroUI")
			end
			task.wait(60)
		end
	end)
end

repeat task.wait() until (tick() - fucknigga) > 10

local Players = cloneref(game:GetService("Players"))
local VirtualInputManager = cloneref(game:GetService("VirtualInputManager"))
local LogService = cloneref(game:GetService("LogService"))
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MemoryStoreService = game:GetService("MemoryStoreService")
local HttpService = game:GetService("HttpService")
local Workspace = game:GetService("Workspace")

local Player = Players.LocalPlayer
repeat task.wait() until Player.Character
local PlayerGui = Player:WaitForChild("PlayerGui")
local Character = Player.Character
local Humanoid = Character and Character:FindFirstChild("Humanoid")
local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
local Random = Random.new()
local Start = os.clock()




local HyphonReady = false

function Hyphon_Emulator()
    warn("challing hyphons peak")   
    local Emulation_SET = false

    local Wrapped_Functions = filtergc("function", {
        Constants = {"__tostring", "__call", "rawget", ":P"},
        Upvalues = {"Attempted function hijacking detected. Logged."},
        IgnoreExecutor = true
    })
    local DetectionFunction = nil

    for Index, Function in pairs(Wrapped_Functions) do
        local Upvalues = debug.getupvalues(Function)
        for Index, Upvalue in pairs(Upvalues) do
            if (typeof(Upvalue) == "function" and islclosure(Upvalue)) then
                Upvalues = debug.getupvalues(Upvalue)
                if (#Upvalues == 17) then
                    DetectionFunction = Function
                end
            end
        end
    end

    if not (DetectionFunction) then
        Player:Kick("hyphon challed us :( (rejoin and wait a lil longer before execute) #6")
        task.wait(9e9)
    end

    local OldHookfunction = nil
    OldHookfunction = hookfunction(DetectionFunction, function() end)

    local OnClientInvoke_Hyphon = filtergc("function", {
        StartLine = 2102,
        IgnoreExecutor = true
    }, true)
    local InvokeServer_Hyphon = filtergc("function", {
        StartLine = 2247,
        Source = debug.info(OnClientInvoke_Hyphon, "s"),
        IgnoreExecutor = true
    }, true)
    local HandshakeVersion_Holder = filtergc("function", {
        StartLine = 3394,
        Source = debug.info(OnClientInvoke_Hyphon, "s"),
        IgnoreExecutor = true
    }, true)
    local Fake_Dec = filtergc("function", {
        StartLine = 1097,
        Source = debug.info(OnClientInvoke_Hyphon, "s"),
        IgnoreExecutor = true
    }, true)

    if not (OnClientInvoke_Hyphon) then
        Player:Kick("hyphon challed us :( (rejoin and wait a lil longer before execute) #5")
        task.wait(9e9)
    end
    local Important_Function = filtergc("function", {
        StartLine = 456,
        Source = debug.info(OnClientInvoke_Hyphon, "s"),
        IgnoreExecutor = true
    }, true)
    if not (InvokeServer_Hyphon) then
        Player:Kick("hyphon challed us :( (rejoin and wait a lil longer before execute) #4")
        task.wait(9e9)
    end
    if not (HandshakeVersion_Holder) then
        Player:Kick("hyphon challed us :( (rejoin and wait a lil longer before execute) #1")
        task.wait(9e9)
    end
    if not (Fake_Dec) then
        Player:Kick("hyphon challed us :( (rejoin and wait a lil longer before execute) #2")
        task.wait(9e9)
    end
    if not (Important_Function) then
        Player:Kick("hyphon challed us :( (rejoin and wait a lil longer before execute) #3")
        task.wait(9e9)
    end

    local Hyphon_Encode = debug.getupvalue(OnClientInvoke_Hyphon, 1)
    local Hyphon_Decode = debug.getupvalue(OnClientInvoke_Hyphon, 21)

    local Hyphon_Script = nil
    local Hyphon_Check = MemoryStoreService:FindFirstChild("Hyphon_Check")
    local Hyphon_CheckTick = nil
    local HandshakeVersion = tostring(debug.getupvalue(HandshakeVersion_Holder, 5)) .. "Handshake_V5"
    local RemoteFunction = debug.getupvalue(InvokeServer_Hyphon, 6)
    local RemoteFunctionTick = nil
    local InvokeServer_Data = {
        TokenOne = nil,
        TokenTwo = nil,
        CurrentNumber = nil,
        TokenThree = nil,
        TenthArgTable = nil,
        TokenFour = nil,
        Tablets = nil,
        SSL = nil,
        LuaFunction = nil,
        ChangeDebounce = nil,
    }

    for Index, Object in pairs(getnilinstances()) do
        if (Object:IsA("Script") and Object.Name:len() == 32) then
            Hyphon_Script = Object
        end
    end

    if not (Hyphon_Script) then
        Player:Kick("hyphon challed us :( (rejoin and wait a lil longer before execute) #7")
        task.wait(9e9)
    end

    local Old_Fireserver = nil
    Old_Fireserver = hookfunction(Hyphon_Check.FireServer, newcclosure(function(self, ...)
        Hyphon_CheckTick = tick()
        return Old_Fireserver(self, ...)
    end))

    local Old_InvokeServer = nil
    Old_InvokeServer = hookfunction(RemoteFunction.InvokeServer, newcclosure(function(self, ...)
        if (Emulation_SET ~= true) then
            local Arguments = table.pack(...)
            RemoteFunctionTick = tick()
            InvokeServer_Data.TokenOne = Arguments[1][1]
            InvokeServer_Data.TokenTwo = Arguments[1][2]
            InvokeServer_Data.CurrentNumber = Hyphon_Decode(Arguments[1][4])
            InvokeServer_Data.TokenThree = Arguments[1][6]
            InvokeServer_Data.TenthArgTable = Arguments[1][10]
            InvokeServer_Data.TokenFour = Arguments[1][11]
            InvokeServer_Data.Tablets = Arguments[1][12]["Tablets"]
            InvokeServer_Data.SSL = Arguments[1][13]["SSL"]
            InvokeServer_Data.LuaFunction = Arguments[1][13]["LuaFunction"]
        end
        return Old_InvokeServer(self, ...)
    end))
    setstackhidden(RemoteFunction.InvokeServer, true)

    repeat task.wait() until Hyphon_CheckTick and RemoteFunctionTick

    InvokeServer_Data.ChangeDebounce = debug.getupvalue(OnClientInvoke_Hyphon, 4)
    Emulation_SET = true

    local OldBit32 = nil
    OldBit32 = hookfunction(bit32.bxor, function(...)
        if not (checkcaller()) and getcallingscript() == Hyphon_Script then
            return task.wait(9e9)
        end
        return OldBit32(...)
    end)

    task.spawn(function()
        while task.wait(10) do
            InvokeServer_Data.Tablets[3] = tick()
        end
    end)
    task.spawn(function()
        while task.wait(4) do
            InvokeServer_Data.Tablets[4] = tick()
        end
    end)

    for Index, Object in pairs(ReplicatedStorage:GetChildren()) do
        if (Object.Name:len() > 4) then
            continue
        end
        if not (Object:IsA("Folder")) then
            continue
        end
        local RemoteFunction = Object:FindFirstChildOfClass("RemoteFunction")
        RemoteFunction["OnClientInvoke"] = function(Arg1, Arg2, Arg3, Arg4)
            InvokeServer_Data.CurrentNumber = -1
            InvokeServer_Data.TokenTwo = Hyphon_Decode(Arg1)
            local Table = {
                debug.getupvalue(OnClientInvoke_Hyphon, 26),
                Hyphon_Encode("Hyphon-," .. tostring(math.random(242, 789)) .. "{ Date (Data: " .. tostring(math.random(1, 9)) .. ")"),
                Fake_Dec(Arg3, tostring(Player.UserId)),
                debug.getupvalue(OnClientInvoke_Hyphon, 29)(),
                Hyphon_Encode(tostring(workspace:GetServerTimeNow())),
                {
                    CI = Hyphon_Encode(tostring(tick())),
                    TL = InvokeServer_Data.Tablets,
                    GL = nil,
                    LS = 3 + game.PlaceVersion
                }
            }
            return Table
        end
    end

    task.spawn(function()
        local InvokeServer = function()
            InvokeServer_Data.CurrentNumber += 1
            InvokeServer_Data.Tablets[5] = tick() - 0.5
            InvokeServer_Data.Tablets[6] = tick()
            print(tostring(InvokeServer_Data.CurrentNumber))
            print(InvokeServer_Data.TokenTwo)
            RemoteFunction:InvokeServer({
                InvokeServer_Data.TokenOne,
                InvokeServer_Data.TokenTwo,
                nil,
                [4] = Hyphon_Encode(tostring(InvokeServer_Data.CurrentNumber)),
                [5] = debug.getupvalue(InvokeServer_Hyphon, 12)("_1") .. "__index",
                [6] = InvokeServer_Data.TokenThree,
                [7] = "Hooked",
                [8] = Hyphon_Encode(tostring(os.time())),
                [9] = tick(),
                [10] = InvokeServer_Data.TenthArgTable,
                [11] = InvokeServer_Data.TokenFour,
                [12] = {
                    ["CurrentTick"] = Hyphon_Encode(tostring(tick())),
                    ["Tablets"] = InvokeServer_Data.Tablets
                },
                [13] = {
                    ["Metatable code"] = Hyphon_Encode("nil"),
                    ["SSL"] = InvokeServer_Data.SSL,
                    ["LuaFunction"] = InvokeServer_Data.LuaFunction
                }
            })
        end

        task.wait(35 - (tick() - RemoteFunctionTick))
        InvokeServer()

        while task.wait(35) do
            InvokeServer()
        end
    end)

    task.spawn(function()
        local FireServer = function()
            InvokeServer_Data.Tablets[1] = tick()
            InvokeServer_Data.Tablets[2] = tick() + .5
            Hyphon_Check:FireServer(tick(), HandshakeVersion)
            task.wait(.1)
            Hyphon_Check:FireServer()
        end

        task.wait(9 - (tick() - Hyphon_CheckTick))
        FireServer()

        while task.wait(9) do
            FireServer()
        end
    end)

    print("challed hyphon off doa peak")
    HyphonReady = true
end


Hyphon_Emulator()



repeat task.wait() until HyphonReady == true

local function Rejoin()
	queue_on_teleport([=[
	queue_on_teleport([[loadstring(game:HttpGet("https://raw.githubusercontent.com/thebestpersoneversmh/multifarm/refs/heads/main/farm.lua")()]])
	]=])
	game:GetService("TeleportService"):Teleport(10179538382)
end


local DEFAULT_GOAL_AMOUNT = 1750000

local GoalCashSettings = {
    ["Goal Cash"] = true;
    ["Memorize Goal"] = false;
    ["Goal Amount"] = DEFAULT_GOAL_AMOUNT;
    ["Extra Cash"] = 0;
}

local StatusLastChanged = tick()

local SettingsData = {
    ["WebhookURL"] = "https://discord.com/api/webhooks/1513729733316050985/EnJLDLed5TUVGbQfBFe9wycv7VNzE-2xH0o9pGYeD8t_qJ4rM_Zux_2H9SbRWNORvuH8",
    ["Deleting"] = false;
    ["Ready"] = false;
    ["Status"] = "[ START UP ] : Waiting for a response from the system.";
    ["Old HRP Position"] = CFrame.new(HumanoidRootPart.Position);
    ["Apartment"] = nil;

    ["Autofarm Enabled"] = false;
    ["Auto Rejoin"] = true;
    ["IsHealing"] = false;

    ["Cards Counter"] = 0;
    ["Potato Counter"] = 0;
    ["Marshmallow Counter"] = 0;

    ["Safety Counter"] = 0;

    ["Farming Starter Cash"] = false;
    ["Sufficient Cash"] = false;
    ["Cash Check"] = false;

    ["Purchasing Ski-Mask"] = false;
    ["Purchasing Apartment"] = false;


    ["BikeSpawned"] = false;
    ["BikeSitting"] = false;
    ["RespawnPending"] = false;
    ["RespawnTask"] = nil;
}

local Settings = setmetatable({}, {
    __index = SettingsData,

    __newindex = function(_, key, value)
        if key == "Status" and SettingsData[key] ~= value then
            StatusLastChanged = tick()
        end

        SettingsData[key] = value
    end
})

task.spawn(function()
    while task.wait(10) do
        if Settings["Autofarm Enabled"] and tick() - StatusLastChanged >= 300 then
            warn("Status hasn't changed in 5 minutes, rejoining...")
            Rejoin()
            break
        end
    end
end)

local Data = {
    ["Hourly Rate"] = 0;
    ["Run Time"] = 0;
    ["Starting Cash"] = 0;
    ["Cash Change"] = 0;
    ["Cycles"] = 0;
}

local function FormatTime(Seconds)
    local hours = math.floor(Seconds / 3600)
    local minutes = math.floor((Seconds % 3600) / 60)
    local seconds = math.floor(Seconds % 60)
    return string.format("%02d:%02d:%02d", hours, minutes, seconds)
end

local function GetCommaValue(Number)
    local Formatted = tostring(Number)
    while true do
        Formatted, Replaced = string.gsub(Formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (Replaced == 0) then break end
    end
    return Formatted
end

local ClearGoalCache = function()
    for Index = 1, 4 do
        local FileName = "AutoFarmMemory" .. Index .. "_" .. Player.Name .. ".txt"
        if isfile(FileName) then
            delfile(FileName)
        end
    end
end

local CreateGoalFiles = function()
    writefile("AutoFarmMemory1_" .. Player.Name .. ".txt", tostring(Data["Cash Change"]))
    writefile("AutoFarmMemory2_" .. Player.Name .. ".txt", tostring(GoalCashSettings["Goal Amount"]))
    writefile("AutoFarmMemory3_" .. Player.Name .. ".txt", tostring(GoalCashSettings["Goal Cash"]))
    writefile("AutoFarmMemory4_" .. Player.Name .. ".txt", tostring(GoalCashSettings["Memorize Goal"]))
end

local function SendDataWebhook()
    local Response = request({
        Url = Settings["WebhookURL"];
        Method = "POST";
        Headers = { ["Content-Type"] = "application/json" };
        Body = HttpService:JSONEncode({
            Embeds = {
                Color = 255255;
                Author = { "South Bronx Cash Autofarm V2" };
                Title = "Player: " .. tostring(Player.Name);
                Description = "**Cash Gained: **" .. tostring(Data["Cash Change"]) .. "\nHourly Estimate: " .. tostring(Data["Hourly Rate"]) .. "\n";
            }
        })
    })
end




local LocalBackpack = Player:FindFirstChild("Backpack") or Player:WaitForChild("Backpack")

local function SpawnAndSitOnBike()
    local ExistingBike = Workspace:FindFirstChild(string.format("%s's Car", Player.Name))
    if ExistingBike and ExistingBike:FindFirstChild("DriveSeat") and ExistingBike.DriveSeat.Occupant then
        Settings["Status"] = "[ BIKE ] : Already on bike"
        Settings["BikeSitting"] = true
        Settings["BikeSpawned"] = true
        return true
    end

    Settings["Status"] = "[ BIKE ] : Spawning bike..."

    local Bike = Workspace:FindFirstChild(string.format("%s's Car", Player.Name))

    if not Bike then
        ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RPC"):FireServer(buffer.fromstring("\001"), "Spawn", "DirtBike")
        task.wait(5)
        Bike = Workspace:FindFirstChild(string.format("%s's Car", Player.Name))
    end

    if not Bike then
        Settings["Status"] = "[ BIKE ] : Bike not found after spawn!"
        return false
    end

    local DriveSeat = Bike:WaitForChild("DriveSeat")

    Humanoid:UnequipTools()
    Humanoid.Health = 90
    HumanoidRootPart.CFrame = CFrame.new(67^2, 10^10, 67^2)
    repeat task.wait() until Player.CharacterAdded:Wait()
    Character = Player.Character
    Humanoid = Character:WaitForChild("Humanoid")
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

    local TargetCFrame = DriveSeat.CFrame * CFrame.new(3, 1, 0)
	task.wait(2)
    for i = 1, 5 do
        HumanoidRootPart.CFrame = TargetCFrame
        task.wait(0.05)
    end

    task.wait(2.5)

    if (HumanoidRootPart.Position - Bike:FindFirstChildWhichIsA("Part", true).Position).Magnitude > 25 then
        Settings["Status"] = "[ BIKE ] : Failed to teleport to bike!"
        return false
    end

    local Prompt = DriveSeat:FindFirstChildWhichIsA("ProximityPrompt", true)
    if not Prompt then
        local Attachment = DriveSeat:FindFirstChild("Attachment")
        if Attachment then Prompt = Attachment:FindFirstChild("ProximityPrompt") end
    end

    if Prompt then
        Prompt.HoldDuration = 0
        Prompt.RequiresLineOfSight = false
        Prompt.MaxActivationDistance = 9e9
        fireproximityprompt(Prompt)
    end

    Settings["Status"] = "[ BIKE ] : Sitting on bike!"
    Settings["BikeSitting"] = true
    Settings["BikeSpawned"] = true
    return true
end




function DirtBikeTeleport(TargetPosition)
    local c = Player.Character
    if not c then return false, "No character!" end
    local h = c:FindFirstChild("Humanoid")
    if not h then return false, "No humanoid!" end

    if not (h.SeatPart) then

        Settings["Status"] = "[ BIKE ] : Not on bike, attempting to re-sit..."
        local ok = SpawnAndSitOnBike()
        if not ok then
            return false, "Could not get on bike!"
        end
        task.wait(0.3)
    end

    local DriveSeat = h.SeatPart
    if not DriveSeat or DriveSeat.Name ~= "DriveSeat" then
        return false, "Not on a dirtbike seat!"
    end

    local Vehicle = DriveSeat.Parent
    if not Vehicle then
        return false, "Vehicle not found!"
    end

    DriveSeat.CFrame = CFrame.new(TargetPosition)
    for i, Object in pairs(Vehicle:GetDescendants()) do
        if (Object:IsA("Part") or Object:IsA("BasePart")) then
            Object.CFrame = CFrame.new(TargetPosition)
        end
    end
    task.wait(.1)
    for i = 1, 9 do
        for i, Object in pairs(Vehicle:GetDescendants()) do
            if (Object:IsA("Part") or Object:IsA("BasePart")) then
                Object.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
        end
        task.wait()
    end
    return true
end

local GoalAndHourlyFunction = function()
    repeat task.wait() until PlayerGui:FindFirstChild("Main")
    local Main = PlayerGui:FindFirstChild("Main")
    repeat task.wait() until Main.Enabled == true
    repeat task.wait() until Main:FindFirstChild("Money")
    local Money = Main:FindFirstChild("Money")
    repeat task.wait() until Money:FindFirstChild("Amount")
    local Amount = Money:FindFirstChild("Amount")

    local Result = string.gsub(Amount.Text, "%D+", "")
    Settings["Starting Cash"] = tonumber(Result)

    if GoalCashSettings["Goal Cash"] == true and GoalCashSettings["Memorize Goal"] then
        if isfile("AutoFarmMemory1_" .. Player.Name .. ".txt") and isfile("AutoFarmMemory2_" .. Player.Name .. ".txt") then
            local LastMemory2 = readfile("AutoFarmMemory2_" .. Player.Name .. ".txt")
            if LastMemory2 ~= "nil" then
                GoalCashSettings["Goal Amount"] = tonumber(LastMemory2)
            end
            task.wait()
            local LastMemory1 = readfile("AutoFarmMemory1_" .. Player.Name .. ".txt")
            if LastMemory1 ~= "nil" then
                task.spawn(function()
                    repeat task.wait() until Settings["Ready"] == true
                    GoalCashSettings["Extra Cash"] = LastMemory1
                end)
            end
        end
    end

    task.spawn(function()
        while task.wait() do
            repeat task.wait() until PlayerGui:FindFirstChild("Main")
            local Main = PlayerGui:FindFirstChild("Main")
            repeat task.wait() until Main:FindFirstChild("Money")
            local Money = Main:FindFirstChild("Money")
            repeat task.wait() until Money:FindFirstChild("Amount")
            local Amount = Money:FindFirstChild("Amount")
            Result = string.gsub(Amount.Text, "%D+", "")
            Data["Cash Change"] = tonumber(Result - (Settings["Starting Cash"] - GoalCashSettings["Extra Cash"]))
            if tonumber(Result) <= 2000 then
                Settings["Sufficient Cash"] = false
            else
                Settings["Sufficient Cash"] = true
            end
            if (tonumber(Result) >= 1750000) then
                Player:Kick("Autofarm V2 | " .. Player.Name .. ", you have reached max cash.")
                return
            end
            if GoalCashSettings["Goal Cash"] == true then
                if (Data["Cash Change"] >= GoalCashSettings["Goal Amount"]) then
                    Settings["Deleting"] = true
                    Player:Kick("Autofarm V2 | " .. Player.Name .. ", you have reached the desired goal of $" .. tostring(GetCommaValue(GoalCashSettings["Goal Amount"])) .. " after " .. FormatTime(Data["Run Time"]))
                    repeat
                        ClearGoalCache()
                        task.wait()
                    until not isfile("AutoFarmMemory1_" .. Player.Name .. ".txt")
                    return
                end
            end
        end
    end)
    Settings["Ready"] = true
end
task.spawn(GoalAndHourlyFunction)

task.spawn(function()
    if Settings["Autofarm Enabled"] == true then
        while task.wait(.5) do
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, nil)
            task.wait(.5)
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, nil)
        end
    end
end)

local AfkAndLeaverHandler = function()
    Player.Idled:Connect(function()
        if Settings["Autofarm Enabled"] == true then
            local VirtualUser = cloneref(game:GetService("VirtualUser"))
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end
    end)
    Players.PlayerRemoving:Connect(function(plr)
        if (plr == Player) then
            warn("Player is leaving, attempting to create the files.")
            if (GoalCashSettings["Goal Cash"] == true and GoalCashSettings["Memorize Goal"] == true) then
                if Settings["Deleting"] ~= true then
                    CreateGoalFiles()
                end
            end
        end
    end)
    while task.wait() do
        if Settings["Autofarm Enabled"] ~= true then
            Settings["Status"] = "[ START UP ] : Autofarm is currently yielding."
        end
    end
end
task.spawn(AfkAndLeaverHandler)

RunService.RenderStepped:Connect(function()
    if Humanoid.Health <= 80 or PlayerGui:WaitForChild("Main"):WaitForChild("CombatFrame").Visible == true then
        Settings["IsHealing"] = true
        Settings["Status"] = "[ ANTI-DEATH ] : Waiting until health is above 80."
        DirtBikeTeleport(Vector3.new(-769, 6, 654))
    else
        Settings["IsHealing"] = false
        if Settings["Status"] == "[ ANTI-DEATH ] : Waiting until health is above 80." then
            Settings["Status"] = "[ START UP ] : Waiting for a response from the system."
        end
    end
end)

task.spawn(function()
    Humanoid.Died:Connect(function()
        if Settings["Auto Rejoin"] == true then
            CreateGoalFiles()
            task.wait()
            game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
        end
    end)
end)

local function FindAvailableHomeless()
    Settings["Old HRP Position"] = CFrame.new(HumanoidRootPart.Position)
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ POTATO CHIPS ] : Looking for available homeless people."

    local Homeless = workspace.Folders.HomelessPeople
    local AvailableHomeless = {}

    for Index, Object in next, Homeless:GetChildren() do
        if Object:IsA("Model") then
            local UpperTorso = Object:FindFirstChild("RightLowerLeg")
            if (math.floor(UpperTorso.Rotation.X) == 90) then
                table.insert(AvailableHomeless, Object)
            end
        end
    end
    return AvailableHomeless
end

for i, Object in pairs(getgc(true)) do
    if (typeof(Object) == "table" and typeof(rawget(Object, "Homeless")) == "table") then
        if rawget(Object.Homeless, "MaxDistance") then
            Object.Homeless.MaxDistance = 9e9
        end
    end
end

local function FindAvailableApartments()
    local Available = {}
    local Owned = {}
    local Apartments = {"WH1"; "BH3"; "BH2"; "BH4"; "BH1"; "LT1";}
    local CasinoApartments = {"Home 1"; "Home 2"; "Home 3"; "Home 4"}
    for Index, Object in next, workspace:WaitForChild("Map").APTS:GetChildren() do
        if (Object:IsA("Model")) then
            if table.find(Apartments, tostring(Object)) then
                local Board = Object:FindFirstChild("Board", Model)
                if Board.name.SurfaceGui.TextLabel.Text == "VACANT" then
                    table.insert(Available, Object)
                elseif Board.name.SurfaceGui.TextLabel.Text == Player.Name then
                    table.insert(Owned, Object)
                end
            elseif table.find(CasinoApartments, tostring(Object)) then
                local Board = Object:FindFirstChild("Board", Model)
                if Board.name.SurfaceGui.TextLabel.Text == "VACANT" then
                    table.insert(Available, Object)
                elseif Board.name.SurfaceGui.TextLabel.Text == Player.Name then
                    table.insert(Owned, Object)
                end
            end
        end
    end
    if #Owned >= 1 then return Owned, "Owned" end
    return Available, "Not Owned"
end

local function FindAvailableATMs()
    local ATMs = workspace:WaitForChild("Map").ATMS
    local AvailableATM
    for Index, ATM in next, ATMs:GetChildren() do
        if ATM:FindFirstChild("ATMScreen").Transparency == 0 then
            AvailableATM = ATM
        end
    end
    return AvailableATM
end

local function PurchaseSkiMask()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    repeat task.wait() until Settings["Sufficient Cash"] == true
    Settings["Purchasing Ski-Mask"] = true
    Settings["Cash Check"] = true
    Settings["Status"] = "[ MASK ] : Attempting to purchase and wear Ski-Mask."
    Humanoid:UnequipTools()
    task.wait(.05)
    if not Player:WaitForChild("Backpack"):FindFirstChild("SkiMask") then
        DirtBikeTeleport(Vector3.new(-363, 4, -321))
        task.wait(.5)
        repeat
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("StorePurchase"):FireServer("SkiMask")
            task.wait(.5)
        until (Player:WaitForChild("Backpack"):FindFirstChild("SkiMask"))
        repeat task.wait(); Humanoid:UnequipTools() until Player:WaitForChild("Backpack"):FindFirstChild("SkiMask")
    end
    if not Character:FindFirstChild("SkiMask") then
        Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("SkiMask"))
        task.wait(.05)
        local Args = {
            buffer.fromstring("\005"),
            Character:WaitForChild("SkiMask")
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RPC"):FireServer(unpack(Args))
        task.wait(.05)
        Humanoid:UnequipTools()
    end
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    HumanoidRootPart.CFrame = Settings["Old HRP Position"]
    Settings["Status"] = "[ MASK ] : Successfully purchased Ski-Mask."
    Settings["Purchasing Ski-Mask"] = false
    return true
end

local function StartMarshmallowFarm()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    repeat task.wait() until Settings["Sufficient Cash"] == true
    repeat task.wait() until Settings["Purchasing Ski-Mask"] ~= true
    Settings["Status"] = "[ APARTMENTS ] : Attempting to purchase an available apartment."
    Settings["Purchasing Apartment"] = true
    local Apartment, Owned = FindAvailableApartments()
    if #Apartment ~= 0 then
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        Settings["Status"] = "[ APARTMENTS ] : Attempting to purchase an available apartment."
        if Owned == "Owned" then
            Apartment = Apartment[1]
            if (tostring(Apartment):match("Home")) then
                Settings["Apartment"] = workspace.Map.Locations.Apartments:FindFirstChild(tostring(Apartment))
            else
                Settings["Apartment"] = workspace.Map.Houses:FindFirstChild(tostring(Apartment))
            end
        else
            Apartment = Apartment[Random:NextInteger(1, #Apartment)]
            if (tostring(Apartment):match("Home")) then
                Settings["Apartment"] = workspace.Map.Locations.Apartments:FindFirstChild(tostring(Apartment))
            else
                Settings["Apartment"] = workspace.Map.Houses:FindFirstChild(tostring(Apartment))
            end
        end
        if Owned == "Not Owned" then
            if Settings["Autofarm Enabled"] ~= true then return end
            local Board = Apartment:FindFirstChild("Board")
            local Prompt = Board.backboard.ProximityPrompt
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Board.backboard.Position)
			task.wait(2)
            Settings["Status"] = "[ APARTMENTS ] : Attempting to purchase an available apartment."
            repeat
                fireproximityprompt(Prompt)
                task.wait(.25)
            until PlayerGui:WaitForChild("Main").BasicNotification.TextTransparency == 0 or Board.name.SurfaceGui.TextLabel.Text == tostring(Player)
            if PlayerGui:WaitForChild("Main").BasicNotification.Text == "This apartment is already occupied!" then
                task.spawn(StartMarshmallowFarm)
                return false
            end
        end

        local Lock = Apartment.Door.DoorLock
        local Knob = Apartment.Door.Knob
        local KnobPrompt = Knob.Parent.Interact.Attachment.ProximityPrompt

        if math.floor(Lock.Part.Rotation.Y) ~= 0 and math.floor(Lock.Part.Rotation.Y) ~= 90 then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Lock.Part.Position)
            Settings["Status"] = "[ APARTMENTS ] : Closing apartment door."
            task.wait(.5)
            for Index = 1,5 do
                DirtBikeTeleport(Lock.Part.Position)
                fireproximityprompt(KnobPrompt)
                task.wait()
            end
            task.wait(.75)
        end
        if Lock.Part.Rotation.X ~= 90 then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Lock.Part.Position)
            Settings["Status"] = "[ APARTMENTS ] : Locking apartment door."
            task.wait(.25)
            repeat
                DirtBikeTeleport(Lock.Part.Position)
                fireproximityprompt(Lock.Part.ProximityPrompt)
                task.wait(.25)
            until Lock.Part.Rotation.X == 90 or PlayerGui:WaitForChild("Main").BasicNotification.Text == "You do not have permission to interact with this."
            if PlayerGui:WaitForChild("Main").BasicNotification.TextTransparency == 0 then
                task.spawn(StartMarshmallowFarm)
                return
            end
        end
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        Settings["Status"] = "[ APARTMENTS ] : Successfully purchased an apartment."
        HumanoidRootPart.CFrame = Settings["Old HRP Position"]
        Settings["Purchasing Apartment"] = false
        return true
    else
        Settings["Status"] = "[ APARTMENTS ] : No apartment available, yielding."
        return false
    end
end

local function ScavengeInventory()
    Humanoid:UnequipTools()
    task.wait(.05)
    local Potato = 0
    local Flour = 0
    local Water = 0
    local Gelatin = 0
    local SugarBlockBag = 0
    for Index, Object in next, Player:WaitForChild("Backpack"):GetChildren() do
        if (Object.Name == "Potato") then Potato += 1 end
        if (Object.Name == "Flour") then Flour += 1 end
        if (Object.Name == "Water") then Water += 1 end
        if (Object.Name == "Gelatin") then Gelatin += 1 end
        if (Object.Name == "Sugar Block Bag") then SugarBlockBag += 1 end
    end
    return Potato, Flour, Water, Gelatin, SugarBlockBag
end
local Potato, Flour, Water, Gelatin, SugarBlockBag = ScavengeInventory()

local EmulateMovements = function()
    Settings["Status"] = "[ EMULATION 67 ] : Emulating movements."
    VirtualInputManager:SendKeyEvent(true, "W", false, nil)
    task.wait(1.25)
    VirtualInputManager:SendKeyEvent(false, "W", false, nil)
    VirtualInputManager:SendKeyEvent(true, "A", false, nil)
    task.wait(1.25)
    VirtualInputManager:SendKeyEvent(false, "A", false, nil)
    VirtualInputManager:SendKeyEvent(true, "S", false, nil)
    task.wait(1.25)
    VirtualInputManager:SendKeyEvent(false, "S", false, nil)
    VirtualInputManager:SendKeyEvent(true, "D", false, nil)
    task.wait(1.25)
    VirtualInputManager:SendKeyEvent(false, "D", false, nil)
end

local FarmBoxJob = function(Iterations)
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    if Settings["Farming Starter Cash"] == true then return end
    Settings["Farming Starter Cash"] = true

    local StartBoxJob = function()
        local Box = workspace:WaitForChild("PlaceHere")
        local BoxPrompt = Box.Attachment.ProximityPrompt
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(-551, 8, -89))
        Settings["Status"] = "[ BOX JOB ] : Attempting to grab crate."
        repeat
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Vector3.new(-551, 8, -89))
            Settings["Status"] = "[ BOX JOB ] : Attempting to grab crate."
            fireproximityprompt(BoxPrompt)
            task.wait()
        until Player:WaitForChild("Backpack"):FindFirstChild("Crate") or PlayerGui:WaitForChild("Main").BasicNotification.Text == "You do not have an active job session!"
        if PlayerGui:WaitForChild("Main").BasicNotification.Text == "You do not have an active job session!" then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Vector3.new(-580, 8, -74))
            Settings["Status"] = "[ BOX JOB ] Status: Claiming job."
            task.wait(.75)
            local Remote = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RPC")
            local Arg1 = buffer.fromstring("\015")
            local Arg2 = "Crates"
            Remote:FireServer(Arg1, Arg2)
            repeat task.wait() until PlayerGui:WaitForChild("Main").BasicNotification.TextTransparency == 1
            return false
        else
            return true
        end
    end
    local Start = StartBoxJob()
    if (Start == false) then
        repeat
            Start = StartBoxJob()
            task.wait()
        until Start == true
    end
    for Index = 1, Iterations do
        StartBoxJob()
        EmulateMovements()
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(-401, 8, -72))
        Settings["Status"] = "[ BOX JOB ] : Delivering crate."
        repeat
            local Truck = workspace:WaitForChild("cratetruck2")
            local TruckPrompt = Truck:FindFirstChild("Model").ClickBox.Attachment.ProximityPrompt
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Vector3.new(-401, 8, -72))
            Settings["Status"] = "[ BOX JOB ] : Delivering crate."
            Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Crate"))
            task.wait(.75)
            fireproximityprompt(TruckPrompt)
            task.wait(.2)
            Humanoid:UnequipTools()
            task.wait(.05)
        until not Player:WaitForChild("Backpack"):FindFirstChild("Crate")
        EmulateMovements()
    end

    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    DirtBikeTeleport(Vector3.new(-580, 8, -74))
    Settings["Status"] = "[ BOX JOB ] Status: Claiming job reward."
    task.wait(.75)
    local Remote = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RPC")
    local Arg1 = buffer.fromstring("\015")
    local Arg2 = "Crates"
    Remote:FireServer(Arg1, Arg2)
end

local PurchaseMarshmallowIngredients = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Potato, Flour, Water, Gelatin, SugarBlockBag = ScavengeInventory()
    if (Water < 1 or Gelatin < 1 or SugarBlockBag < 1) then
        local Remote = ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("StorePurchase")
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(510, 4, 595))
        Settings["Status"] = "[ MARSHMALLOW ] : Purchasing Marshmallow ingredients."
        task.wait(.5)
        if (Water < 1) then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            Settings["Status"] = "[ MARSHMALLOW ] : Purchasing Marshmallow ingredients."
            local Argument = "Water"
            Remote:FireServer(Argument)
            task.wait(.5)
        end
        if (Gelatin < 1) then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            Settings["Status"] = "[ MARSHMALLOW ] : Purchasing Marshmallow ingredients."
            local Argument = "Gelatin"
            Remote:FireServer(Argument)
            task.wait(.5)
        end
        if (SugarBlockBag < 1) then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            Settings["Status"] = "[ MARSHMALLOW ] : Purchasing Marshmallow ingredients."
            local Argument = "Sugar Block Bag"
            Remote:FireServer(Argument)
            task.wait(.5)
        end
        return false
    else
        Settings["Status"] = "[ MARSHMALLOW ] : Successfully purchased Marshmallow ingredients."
        return true
    end
end

local Stove
local CookPrompt
local StoveTimer

local Labatory = workspace.Map.Locations["The Laboratory"]

local AvailablePot
local PotPrompt
local PotTimer

local PourWater = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    if tostring(Settings["Apartment"]):match("Home") then
        Stove = Settings["Apartment"]:FindFirstChild("Cooking Pot")
        CookPrompt = Stove:FindFirstChild("Attachment").ProximityPrompt
        StoveTimer = Stove:FindFirstChild("Timer").TextLabel
    else
        Stove = Settings["Apartment"]:WaitForChild("Interior"):FindFirstChild("Cooking Pot")
        CookPrompt = Stove:FindFirstChild("Attachment").ProximityPrompt
        StoveTimer = Stove:FindFirstChild("Timer").TextLabel
    end
    DirtBikeTeleport(Stove.Position)
    Settings["Status"] = "[ MARSHMALLOW ] : Pouring water into the pot."
    task.wait(.5)
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Water"))
        DirtBikeTeleport(Stove.Position)
        task.wait(.2)
        fireproximityprompt(CookPrompt)
        task.wait(1.25)
        Humanoid:UnequipTools()
        task.wait(.1)
        Settings["Safety Counter"] += 1
    until not Player:WaitForChild("Backpack"):FindFirstChild("Water") or PlayerGui:WaitForChild("Main").BasicNotification.TextTransparency == 0 or Settings["Safety Counter"] >= 10
    Settings["Safety Counter"] = 0
    if PlayerGui:WaitForChild("Main").BasicNotification.Text == "You do not have permission to cook in this apartment." then
        return false
    end
    return true
end

local AddSugarAndGelatin = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    DirtBikeTeleport(Stove.Position)
    Settings["Status"] = "[ MARSHMALLOW ] : Pouring Sugar into the pot."
    task.wait(.5)
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Sugar Block Bag"))
        DirtBikeTeleport(Stove.Position)
        task.wait(.2)
        fireproximityprompt(CookPrompt)
        task.wait(1.25)
        Humanoid:UnequipTools()
        task.wait(.1)
        Settings["Safety Counter"] += 1
    until not Player:WaitForChild("Backpack"):FindFirstChild("Sugar Block Bag") or Player:WaitForChild("Backpack"):FindFirstChild("Empty Bag") or Settings["Safety Counter"] >= 5
    Settings["Safety Counter"] = 0

    Settings["Status"] = "[ MARSHMALLOW ] : Pouring Gelatin into the pot."
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Gelatin"))
        DirtBikeTeleport(Stove.Position)
        task.wait(.2)
        fireproximityprompt(CookPrompt)
        task.wait(1.25)
        Humanoid:UnequipTools()
        task.wait(.1)
        Settings["Safety Counter"] += 1
    until not Player:WaitForChild("Backpack"):FindFirstChild("Gelatin") or PlayerGui:WaitForChild("Main").TaskUpdate.TextLabel.Text:match("Let") or Settings["Safety Counter"] >= 5
    Settings["Safety Counter"] = 0
end

local BagMarshmallowAndSell = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    DirtBikeTeleport(Stove.Position)
    Settings["Status"] = "[ MARSHMALLOW ] : Bagging cooked Marshmallow."
    repeat
        Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Empty Bag"))
        task.wait(.5)
        fireproximityprompt(CookPrompt)
        task.wait(.25)
        Humanoid:UnequipTools()
        task.wait(.25)
    until Player:WaitForChild("Backpack"):FindFirstChild("Small Marshmallow Bag") or Player:WaitForChild("Backpack"):FindFirstChild("Medium Marshmallow Bag") or Player:WaitForChild("Backpack"):FindFirstChild("Large Marshmallow Bag")
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(510, 4, 595))
        task.wait()
    until workspace:WaitForChild("Folders").NPCs:FindFirstChild("Lamont Bell")
    Settings["Status"] = "[ MARSHMALLOW ] : Selling cooked Marshmallow."
    local LamontBell = workspace:WaitForChild("Folders").NPCs:FindFirstChild("Lamont Bell")
    local LamontPrompt = LamontBell.UpperTorso.ProximityPrompt
    Humanoid:UnequipTools()
    task.wait(.1)
    for Index, Object in next, Player:WaitForChild("Backpack"):GetChildren() do
        if tostring(Object):find("Marshmallow") then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Vector3.new(510, 4, 595))
            Settings["Status"] = "[ MARSHMALLOW ] : Selling cooked Marshmallow."
            Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild(tostring(Object)))
            task.wait(.35)
            fireproximityprompt(LamontPrompt)
            task.wait(.25)
        end
    end
    Settings["Marshmallow Counter"] += 1
end

local PurchasePotatoIngredients = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Potato, Flour, Water, Gelatin, SugarBlockBag = ScavengeInventory()
    if (Potato < 1 or Flour < 1) then
        local Remote = ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("StorePurchase")
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(-766, 4, -197))
        Settings["Status"] = "[ POTATO CHIP ] : Purchasing Potato Chips ingredients."
        task.wait(.5)
        if (Flour < 1) then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Vector3.new(-766, 4, -197))
            Settings["Status"] = "[ POTATO CHIP ] : Purchasing Potato Chips ingredients."
            local Argument = "Flour"
            Remote:FireServer(Argument)
            task.wait(.5)
        end
        if (Potato < 1) then
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            DirtBikeTeleport(Vector3.new(-766, 4, -197))
            Settings["Status"] = "[ POTATO CHIPS ] : Purchasing Potato Chips ingredients."
            local Argument = "Potato"
            Remote:FireServer(Argument)
            task.wait(.5)
        end
        return false
    else
        Settings["Status"] = "[ POTATO CHIP ] : Successfully purchased Potato Chips ingredients."
        return true
    end
end

local StartPotatoJob = function()
    local Clipboard = Labatory.Prompts.Clipboard
    local ClipboardPrompt = Labatory.Prompts.Clipboard.ProximityPrompt
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    DirtBikeTeleport(Clipboard.Position)
    Settings["Status"] = "[ POTATO CHIPS ] : Claiming task."
    task.wait(.5)
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Clipboard.Position)
        fireproximityprompt(ClipboardPrompt)
        task.wait()
    until PlayerGui:WaitForChild("Main").TaskUpdate.TextLabel.Text:match("Task:") or PlayerGui:WaitForChild("Main").BasicNotification.Text == "You have already began your task."
end

local CutPotato = function()
    local PotatoCutter = Labatory["Cutting Boards"]:FindFirstChild("Potato Cutter").Model.Union
    local CutterPrompt = PotatoCutter.Attachment.ProximityPrompt
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ POTATO CHIPS ] : Cutting Potato Chips."
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(PotatoCutter.Position)
        Settings["Status"] = "[ POTATO CHIPS ] : Cutting Potato Chips."
        Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Potato"))
        task.wait(.25)
        fireproximityprompt(CutterPrompt)
        task.wait(.5)
        Humanoid:UnequipTools()
        task.wait(.25)
        Settings["Safety Counter"] += 1
    until not Player:WaitForChild("Backpack"):FindFirstChild("Potato") or PlayerGui:WaitForChild("Main").BasicNotification.Text == "You are at the wrong step." or Settings["Safety Counter"] >= 20
    Settings["Safety Counter"] = 0
    if PlayerGui:WaitForChild("Main").BasicNotification.Text == "You are at the wrong step." then
        Humanoid.Health = 0
        return false
    end
end

local BagPotato = function()
    local PlasticBag = Labatory.Prompts["Plastic Bag"]
    local BagPrompt = PlasticBag.Attachment.ProximityPrompt
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ POTATO CHIPS ] : Bagging Potato Chips."
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(PlasticBag.Position)
        Settings["Status"] = "[ POTATO CHIPS ] : Bagging Potato Chips."
        fireproximityprompt(BagPrompt)
        task.wait()
    until PlayerGui:WaitForChild("Main").TaskUpdate.TextLabel.Text:match("Head")
end

local MixFlourAndPotato = function()
    local Bowl = Labatory.Bowls:FindFirstChildOfClass("UnionOperation")
    local BowlPrompt = Bowl.ProximityPrompt
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ POTATO CHIPS ] : Mixing Flour and Potato Chips."
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Bowl.Position)
        Settings["Status"] = "[ POTATO CHIPS ] : Mixing Flour and Potato Chips."
        Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Flour"))
        task.wait(.25)
        fireproximityprompt(BowlPrompt)
        task.wait(.5)
        Humanoid:UnequipTools()
        task.wait(.05)
        Settings["Safety Counter"] += 1
    until not Player:WaitForChild("Backpack"):FindFirstChild("Flour") or Settings["Safety Counter"] >= 20
    Settings["Safety Counter"] = 0
    task.wait(3.5)
end

local CookPotatoChips = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ POTATO CHIPS ] : Attempting to cook Potato Chips."
    for Index, Object in next, Labatory.Pots:GetChildren() do
        if (Object:IsA("UnionOperation")) then
            repeat
                if Settings["Autofarm Enabled"] ~= true then
                    repeat task.wait() until Settings["Autofarm Enabled"] == true
                end
                if Settings["IsHealing"] == true then
                    repeat task.wait() until Settings["IsHealing"] ~= true
                end
                DirtBikeTeleport(Object.Position)
                fireproximityprompt(Object.ProximityPrompt)
                task.wait(.05)
                Settings["Safety Counter"] += 1
            until PlayerGui:WaitForChild("Main").BasicNotification.TextTransparency == 0 or Settings["Safety Counter"] >= 120
            Settings["Safety Counter"] = 0
            if PlayerGui:WaitForChild("Main").BasicNotification.Text == "This pot is in use." then
                repeat task.wait() until PlayerGui:WaitForChild("Main").BasicNotification.TextTransparency == 1
            elseif PlayerGui:WaitForChild("Main").BasicNotification.Text == "You have 120 seconds to retrieve your product out of the pot when its done." then
                AvailablePot = Object
                PotTimer = Object.Timer.TextLabel
                PotPrompt = Object.ProximityPrompt
                break
            end
        end
    end
    if not AvailablePot then return false else return true end
end

local ClaimPotatoChipsAndSell = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ POTATO CHIPS ] : Grabbing cooked Potato Chips."
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(AvailablePot.Position)
        fireproximityprompt(PotPrompt)
        task.wait(.1)
    until Player:WaitForChild("Backpack"):FindFirstChild("Potato Chips")
    Settings["Status"] = "[ POTATO CHIPS ] : Turning Potato Chips into Hot Chips."
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(-36, 4, -24))
        task.wait()
    until workspace:WaitForChild("Folders").NPCs:FindFirstChild("Poor Guy")
    local PoorGuy = workspace:WaitForChild("Folders").NPCs:FindFirstChild("Poor Guy")
    local PoorGuyPrompt = PoorGuy.UpperTorso.ProximityPrompt
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(-36, 4, -24))
        Settings["Status"] = "[ POTATO CHIPS ] : Turning Potato Chips into Hot Chips."
        fireproximityprompt(PoorGuyPrompt)
        Humanoid:UnequipTools()
        task.wait()
    until Player:WaitForChild("Backpack"):FindFirstChild("Hot Chips")
    Settings["Status"] = "[ POTATO CHIPS ] : Avoiding server kick, yielding."
    task.wait(3)
    Settings["Status"] = "[ POTATO CHIPS ] : Giving Hot Chips to homeless people."
    local AvailableHomeless = FindAvailableHomeless()
    if #AvailableHomeless ~= 0 then
        repeat
            if Settings["Autofarm Enabled"] ~= true then
                repeat task.wait() until Settings["Autofarm Enabled"] == true
            end
            if Settings["IsHealing"] == true then
                repeat task.wait() until Settings["IsHealing"] ~= true
            end
            Settings["Status"] = "[ POTATO CHIPS ] : Giving Hot Chips to homeless people."
            AvailableHomeless = AvailableHomeless[Random:NextInteger(1, #AvailableHomeless)]
            local UpperTorsoPos = AvailableHomeless:FindFirstChild("UpperTorso").Position
            repeat
                DirtBikeTeleport(UpperTorsoPos)
                task.wait()
            until workspace:WaitForChild("Folders").HomelessPeople:FindFirstChild(tostring(AvailableHomeless))
            AvailableHomeless = workspace:WaitForChild("Folders").HomelessPeople:FindFirstChild(tostring(AvailableHomeless))
            local UpperTorso = AvailableHomeless:FindFirstChild("UpperTorso")
            local HomelessPrompt = UpperTorso.ProximityPrompt
            for Index = 1,5 do
                Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Hot Chips"))
                DirtBikeTeleport(UpperTorso.Position)
                fireproximityprompt(HomelessPrompt)
                task.wait(.1)
            end
            Humanoid:UnequipTools()
            task.wait(.05)
            if Player:WaitForChild("Backpack"):FindFirstChild("Hot Chips") then
                AvailableHomeless = FindAvailableHomeless()
            else
                AvailableHomeless = {}
            end
            task.wait()
            Settings["Safety Counter"] += 1
        until #AvailableHomeless == 0 or not Player:WaitForChild("Backpack"):FindFirstChild("Hot Chips") or Settings["Safety Counter"] >= 8
        Settings["Potato Counter"] += 1
        Settings["Safety Counter"] = 0
        Settings["Farming Starter Cash"] = false
        return true
    else
        return false
    end
end

local PurchaseFakeID = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ CARDS ] : Attempting to purchase a Fake ID."
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(215, 6, -332))
        task.wait()
    until workspace:WaitForChild("Folders").NPCs:FindFirstChild("FakeIDSeller")
    local FakeIDSeller = workspace:WaitForChild("Folders").NPCs:FindFirstChild("FakeIDSeller")
    local BuyIDPrompt = FakeIDSeller.UpperTorso.Attachment.ProximityPrompt
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        repeat
            DirtBikeTeleport(Vector3.new(215, 6, -332))
            task.wait()
        until workspace:WaitForChild("Folders").NPCs:FindFirstChild("FakeIDSeller")
        FakeIDSeller = workspace:WaitForChild("Folders").NPCs:FindFirstChild("FakeIDSeller")
        BuyIDPrompt = FakeIDSeller.UpperTorso.Attachment.ProximityPrompt
        DirtBikeTeleport(Vector3.new(215, 6, -332))
        fireproximityprompt(BuyIDPrompt)
        task.wait()
        Humanoid:UnequipTools()
    until Player:WaitForChild("Backpack"):FindFirstChild("Fake ID")
    task.wait(4.25)
end

local ApplyForCard = function()
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ CARDS ] : Attempting to apply for a credit card."
    repeat
        DirtBikeTeleport(Vector3.new(-48, 4, -315))
        task.wait()
    until workspace:WaitForChild("Folders").NPCs:FindFirstChild("Bank Teller")
    local BankTeller = workspace:WaitForChild("Folders").NPCs:FindFirstChild("Bank Teller")
    local BankPrompt = BankTeller.UpperTorso.Attachment.ProximityPrompt
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Vector3.new(-48, 4, -315))
        Settings["Status"] = "[ CARDS ] : Attempting to apply for a credit card."
        Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Fake ID"))
        task.wait(.75)
        fireproximityprompt(BankPrompt)
        task.wait(.5)
        local oldhealth = Humanoid.Health
        Humanoid.Health = 70
        Humanoid:UnequipTools()
        task.wait(.25)
        Humanoid.Health = oldhealth
        Settings["Safety Counter"] += 1
    until not Player:WaitForChild("Backpack"):FindFirstChild("Fake ID") or Settings["Safety Counter"] >= 15
    if Settings["Safety Counter"] >= 15 then
        local Card = workspace:WaitForChild("CardPickup")
        local CardPrompt = Card.Attachment.ProximityPrompt
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        Settings["Status"] = "[ CARDS ] : Attempting to claim credit card."
        for Index = 1, 10 do
            DirtBikeTeleport(Card.Position)
            fireproximityprompt(CardPrompt)
            task.wait(.05)
            Humanoid:UnequipTools()
        end
        if Player:WaitForChild("Backpack"):FindFirstChild("Card") then
            Settings["Safety Counter"] = 0
            return true
        end
    end
    Settings["Safety Counter"] = 0
end

local ClaimAndUseCard = function()
    local Card = workspace:WaitForChild("CardPickup")
    local CardPrompt = Card.Attachment.ProximityPrompt
    if Settings["Autofarm Enabled"] ~= true then
        repeat task.wait() until Settings["Autofarm Enabled"] == true
    end
    if Settings["IsHealing"] == true then
        repeat task.wait() until Settings["IsHealing"] ~= true
    end
    Settings["Status"] = "[ CARDS ] : Attempting to claim credit card."
    repeat
        if Settings["Autofarm Enabled"] ~= true then
            repeat task.wait() until Settings["Autofarm Enabled"] == true
        end
        if Settings["IsHealing"] == true then
            repeat task.wait() until Settings["IsHealing"] ~= true
        end
        DirtBikeTeleport(Card.Position)
        CardPrompt = Card.Attachment.ProximityPrompt
        fireproximityprompt(CardPrompt)
        task.wait(.05)
        Settings["Safety Counter"] += 1
    until Player:WaitForChild("Backpack"):FindFirstChild("Card") or PlayerGui:WaitForChild("Main").BasicNotification.Text == "You are not on the wait list for a card." or Settings["Safety Counter"] >= 200
    Settings["Safety Counter"] = 0
    if PlayerGui:WaitForChild("Main").BasicNotification.Text == "You are not on the wait list for a card." and not Player:WaitForChild("Backpack"):FindFirstChild("Card") then
        return false
    else
        repeat
            local AvailableATM = FindAvailableATMs()
            if (AvailableATM) then
                local ATMPrompt = AvailableATM.Attachment.ProximityPrompt
                if Settings["Autofarm Enabled"] ~= true then
                    repeat task.wait() until Settings["Autofarm Enabled"] == true
                end
                if Settings["IsHealing"] == true then
                    repeat task.wait() until Settings["IsHealing"] ~= true
                end
                task.wait(1.5)
                Settings["Status"] = "[ CARDS ] : Attempting to use credit card on ATM."
                if (PlayerGui:FindFirstChild("ATM")) then
                    PlayerGui:FindFirstChild("ATM"):Destroy()
                end
                repeat
                    if Settings["Autofarm Enabled"] ~= true then
                        repeat task.wait() until Settings["Autofarm Enabled"] == true
                    end
                    if Settings["IsHealing"] == true then
                        repeat task.wait() until Settings["IsHealing"] ~= true
                    end
                    DirtBikeTeleport(AvailableATM.Position)
                    Settings["Status"] = "[ CARDS ] : Attempting to use credit card on ATM."
                    fireproximityprompt(ATMPrompt)
                    task.wait()
                until PlayerGui:FindFirstChild("ATM")
                Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("Card"))
                task.wait(.25)
                replicatesignal(PlayerGui:WaitForChild("ATM").Frame.Swipe.MouseButton1Click, Player)
                Settings["Status"] = "[ CARDS ] : Swiping credit card."
                task.wait(.15)
                Humanoid:UnequipTools()
                task.wait(.1)
            else
                return false
            end
            task.wait()
        until not Player:WaitForChild("Backpack"):FindFirstChild("Card")
        Settings["Cards Counter"] += 1
    end
end

local function MainAutofarmController()
    repeat task.wait() until Settings["Ready"] == true
    task.wait(.1)
    local CardWaitTime = 1
    if Settings["Sufficient Cash"] ~= true then
        FarmBoxJob(4)
        PurchasePotatoIngredients()
        StartPotatoJob()
        CutPotato()
        BagPotato()
        MixFlourAndPotato()
        CookPotatoChips()
        repeat task.wait() until PotTimer.Text == "0"
        Settings["Cash Check"] = true
        local PotatoSellAttempt = ClaimPotatoChipsAndSell()
    end

    repeat task.wait() until Settings["Sufficient Cash"] == true
    repeat task.wait() until Settings["Purchasing Ski-Mask"] == false
    task.wait(.1)
    repeat task.wait() until Settings["Purchasing Apartment"] == false

    PurchaseSkiMask()
    StartMarshmallowFarm()

    local MarshIngredients = PurchaseMarshmallowIngredients()
    if (MarshIngredients == false) then
        MarshIngredients = PurchaseMarshmallowIngredients()
        if (MarshIngredients == false) then
            repeat
                task.wait(15)
                MarshIngredients = PurchaseMarshmallowIngredients()
            until MarshIngredients == true
        end
    end

    local WaterStep = PourWater()
    if (WaterStep == false) then
        repeat
            StartMarshmallowFarm()
            WaterStep = PourWater()
        until WaterStep == true
    end

    local PotatoIngredients = PurchasePotatoIngredients()
    if (PotatoIngredients == false) then
        PotatoIngredients = PurchasePotatoIngredients()
        if (MarshIngredients == false) then
            repeat
                task.wait(15)
                PotatoIngredients = PurchasePotatoIngredients()
            until PotatoIngredients == true
        end
    end

    StartPotatoJob()
    PurchaseFakeID()
    CutPotato()
    BagPotato()
    MixFlourAndPotato()
    local PotSuccessful = CookPotatoChips()
    local CardSuccessful = ApplyForCard()
    AddSugarAndGelatin()

    Settings["Status"] = "[ CARDS ] : Waiting for application status."
    repeat task.wait() until PlayerGui:WaitForChild("Main").BasicNotification.TextTransparency == 0 or PlayerGui:WaitForChild("Main").BasicNotification.Text == "Your application was successful. Please allow 30 seconds for the bank to prepare your card." or PlayerGui:WaitForChild("Main").BasicNotification.Text == "Your application was unsuccessful." or PlayerGui:WaitForChild("Main").TaskUpdate.TextLabel.Text:match("Bag")
    if PlayerGui:WaitForChild("Main").BasicNotification.Text == "Your application was unsuccessful." then
        PurchaseFakeID()
        ApplyForCard()
        Settings["Status"] = "[ CARDS ] : Waiting for application status."
        repeat task.wait() until PlayerGui:WaitForChild("Main").BasicNotification.TextTransparency == 0 or PlayerGui:WaitForChild("Main").BasicNotification.Text == "Your application was successful. Please allow 30 seconds for the bank to prepare your card." or PlayerGui:WaitForChild("Main").BasicNotification.Text == "Your application was unsuccessful." or PlayerGui:WaitForChild("Main").TaskUpdate.TextLabel.Text:match("Bag")
        if PlayerGui:WaitForChild("Main").BasicNotification.Text == "Your application was unsuccessful." then
        elseif PlayerGui:WaitForChild("Main").BasicNotification.Text == "Your application was successful. Please allow 30 seconds for the bank to prepare your card." then
            Settings["Status"] = "[ CARDS ] : Application was successful, waiting for Marshmallow to finish cooking."
            CardWaitTime = 2
        end
    elseif PlayerGui:WaitForChild("Main").BasicNotification.Text == "Your application was successful. Please allow 30 seconds for the bank to prepare your card." then
        CardWaitTime = 0
    end

    if (CardWaitTime == 0) then
        Settings["Status"] = "[ CARDS ] : Application was successful, waiting for card to be ready."
        task.wait(28)
        local DoCardJob = ClaimAndUseCard()
        if DoCardJob == false then
            Settings["Status"] = "[ CARDS ] : ATM not available, skipping cards."
        end
        Settings["Status"] = "[ MARSHMALLOW ] : Waiting for Marshmallow to finish cooking."
        repeat task.wait() until StoveTimer.Text == "0"
        BagMarshmallowAndSell()
        Settings["Status"] = "[ POTATO CHIPS ] : Waiting for Potato Chips to finish cooking."
        repeat task.wait() until PotTimer.Text == "0"
        local PotatoSellAttempt = ClaimPotatoChipsAndSell()
        if (PotatoSellAttempt == false) then
            Settings["Status"] = "[ POTATO CHIPS ] : POTATO ERROR, skipping Potato Chips."
        end
    elseif (CardWaitTime == 2) then
        Settings["Status"] = "[ MARSHMALLOW ] : Waiting for Marshmallow to finish cooking."
        repeat task.wait() until StoveTimer.Text == "0"
        BagMarshmallowAndSell()
        Settings["Status"] = "[ POTATO CHIPS ] : Waiting for Potato Chips to finish cooking."
        repeat task.wait() until PotTimer.Text == "0"
        local PotatoSellAttempt = ClaimPotatoChipsAndSell()
        if (PotatoSellAttempt == false) then
            Settings["Status"] = "[ POTATO CHIPS ] : POTATO ERROR, skipping Potato Chips."
        end
        ClaimAndUseCard()
    elseif CardSuccessful == true then
        ClaimAndUseCard()
        Settings["Status"] = "[ MARSHMALLOW ] : Waiting for Marshmallow to finish cooking."
        repeat task.wait() until StoveTimer.Text == "0"
        BagMarshmallowAndSell()
        Settings["Status"] = "[ POTATO CHIPS ] : Waiting for Potato Chips to finish cooking."
        repeat task.wait() until PotTimer.Text == "0"
        local PotatoSellAttempt = ClaimPotatoChipsAndSell()
        if (PotatoSellAttempt == false) then
            Settings["Status"] = "[ POTATO CHIPS ] : POTATO ERROR, skipping Potato Chips."
        end
    else
        Settings["Status"] = "[ MARSHMALLOW ] : Waiting for Marshmallow to finish cooking."
        repeat task.wait() until StoveTimer.Text == "0"
        BagMarshmallowAndSell()
        Settings["Status"] = "[ POTATO CHIPS ] : Waiting for Potato Chips to finish cooking."
        repeat task.wait() until PotTimer.Text == "0"
        local PotatoSellAttempt = ClaimPotatoChipsAndSell()
        if (PotatoSellAttempt == false) then
            Settings["Status"] = "[ POTATO CHIPS ] : POTATO ERROR, skipping Potato Chips."
        end
    end
    Data["Cycles"] += 1
    MainAutofarmController()
end

local Library = loadstring(game:HttpGet("https://pastefy.app/L6nj4CsI/raw"))()
Library.MenuKeybind = tostring(Enum.KeyCode.RightControl)

local Window = Library:Window({
    Name = "Kagi Multi-Farm"
})

local MainPage = Window:Page({
    Name = "Main",
    Icon = "rbxassetid://4483362458",
    Columns = 2,
    SubPages = true
})

local FarmTab = MainPage:SubPage({
    Name = "Farm",
    Columns = 2
})

local StatusTab = MainPage:SubPage({
    Name = "Status",
    Columns = 2
})

local StatsTab = MainPage:SubPage({
    Name = "Stats",
    Columns = 2
})

local FarmSection = FarmTab:Section({
    Name = "farm",
    Side = 1
})

local UtilitySection = FarmTab:Section({
    Name = "utils",
    Side = 2
})

local Toggle = FarmSection:Toggle({
    Name = "enabled",
    Default = false,
    Flag = "Toggle1",
    Callback = function(Value)
        Settings["Autofarm Enabled"] = Value
        if Value then
            SpawnAndSitOnBike()
            task.spawn(function()
                MainAutofarmController()
            end)
        end
    end,
})

UtilitySection:Toggle({
    Name = "auto rejoin",
    Default = true,
    Flag = "AutoRejoin",
    Callback = function(Value)
        Settings["Auto Rejoin"] = Value
    end,
})

local BatterySaver = false
UtilitySection:Toggle({
    Name = "battery saver",
    Default = false,
    Flag = "BatterySaver",
    Callback = function(Value)
        BatterySaver = Value
        if setfpscap then
            setfpscap(Value and 15 or 1000)
        end
        RunService:Set3dRenderingEnabled(not Value)
    end,
})

local GoalPage = Window:Page({
    Name = "Goal",
    Icon = "rbxassetid://4483362458",
    Columns = 2,
    SubPages = true
})

local GoalTab = GoalPage:SubPage({
    Name = "Settings",
    Columns = 2
})

local GoalStatsTab = GoalPage:SubPage({
    Name = "Progress",
    Columns = 2
})

local GoalSection = GoalTab:Section({
    Name = "goal",
    Side = 1
})

local GoalToolsSection = GoalTab:Section({
    Name = "tools",
    Side = 2
})

local Toggle3 = GoalSection:Toggle({
    Name = "use goal",
    Default = true,
    Flag = "Toggle3",
    Callback = function(Value)
        GoalCashSettings["Goal Cash"] = Value
    end,
})

local Toggle4 = GoalSection:Toggle({
    Name = "remember",
    Default = false,
    Flag = "Toggle4",
    Callback = function(Value)
        GoalCashSettings["Memorize Goal"] = Value
    end,
})

local Slider2 = GoalSection:Slider({
    Name = "target",
    Min = 0,
    Max = 1750000,
    Decimals = 5000,
    Suffix = "",
    Default = DEFAULT_GOAL_AMOUNT,
    Flag = "Slider1",
    Callback = function(Value)
        GoalCashSettings["Goal Amount"] = Value
    end,
})

local StateSection = StatusTab:Section({
    Name = "state",
    Side = 1
})

local RuntimeSection = StatusTab:Section({
    Name = "run",
    Side = 2
})

local SalesSection = StatsTab:Section({
    Name = "sales",
    Side = 1
})

local RateSection = StatsTab:Section({
    Name = "money",
    Side = 2
})

local GoalInfoSection = GoalStatsTab:Section({
    Name = "progress",
    Side = 1
})

local GoalRateSection = GoalStatsTab:Section({
    Name = "estimate",
    Side = 2
})

local function NewLine(SectionObject, Text)
    local Label = SectionObject:Label(Text)

    function Label:Set(TextValue)
        self:SetText(tostring(TextValue))
    end

    return Label
end

local StateLine = NewLine(StateSection, "waiting")
local BikeLine = NewLine(StateSection, "bike idle")
local RuntimeLine = NewLine(RuntimeSection, "run 00:00:00")
local CyclesLine = NewLine(RuntimeSection, "cycles 0")
local CashLine = NewLine(RateSection, "cash $0")
local RateLine = NewLine(RateSection, "rate $0/h")
local PotatoLine = NewLine(SalesSection, "chips 0")
local MarshLine = NewLine(SalesSection, "marsh 0")
local CardsLine = NewLine(SalesSection, "cards 0")
local GoalLine = NewLine(GoalInfoSection, "target $1,750,000")
local LeftLine = NewLine(GoalInfoSection, "left $1,750,000")
local EtaLine = NewLine(GoalRateSection, "eta pending")

repeat task.wait() until Settings["Ready"] == true
Slider2:Set(GoalCashSettings["Goal Amount"])

task.spawn(function()
    while task.wait() do
        Data["Run Time"] = os.clock() - Start
        local RunTime = math.max(math.floor(Data["Run Time"]), 1)
        local EarnedCash = Data["Cash Change"] - GoalCashSettings["Extra Cash"]
        local HourlyRateNumber = math.max(math.floor(3600 / RunTime * EarnedCash), 0)
        local CashLeft = math.max(GoalCashSettings["Goal Amount"] - EarnedCash, 0)
        local EstimatedTime = HourlyRateNumber > 0 and FormatTime((CashLeft / HourlyRateNumber) * 3600) or "pending"
        local BikeState = Settings["BikeSitting"] and "bike seated" or "bike idle"

        local HourlyRate = "$" .. tostring(GetCommaValue(HourlyRateNumber)) .. "/h"
        Data["Hourly Rate"] = HourlyRate
        StateLine:Set(Settings["Status"])
        BikeLine:Set(BikeState)
        RuntimeLine:Set("run " .. tostring(FormatTime(Data["Run Time"])))
        CyclesLine:Set("cycles " .. tostring(Data["Cycles"]))
        CashLine:Set("cash $" .. tostring(GetCommaValue(Data["Cash Change"])))
        RateLine:Set("rate " .. HourlyRate)
        PotatoLine:Set("chips " .. tostring(Settings["Potato Counter"]))
        MarshLine:Set("marsh " .. tostring(Settings["Marshmallow Counter"]))
        CardsLine:Set("cards " .. tostring(Settings["Cards Counter"]))
        GoalLine:Set("target $" .. tostring(GetCommaValue(GoalCashSettings["Goal Amount"])))
        LeftLine:Set("left $" .. tostring(GetCommaValue(CashLeft)))
        EtaLine:Set("eta " .. EstimatedTime)
    end
end)

task.spawn(function()
    LogService.MessageOut:Connect(function(Message, MessageType)
        if (MessageType == Enum.MessageType.MessageError) then
            if (tostring(Message):match("Server Kick Message:")) then
                CreateGoalFiles()
                task.wait()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/EzkieMalia/Autofarm/refs/heads/main/Teleporter.lua"))()
            end
        end
    end)
end)

game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
	print("this dumb nigga died")
	Rejoin()
end)
