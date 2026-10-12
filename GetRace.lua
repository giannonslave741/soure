repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

_G.VxezeConfig = {
    Main = {
        ["Team"] = "Pirates",
        ["Auto Start"] = true,
        ["Choose Race"] = "Cyborg", -- Ghoul
        ["No Stuck Chair"] = true,
        ["Evo Race Cyborg"] = true,
        ["Evo Race Ghoul"] = true
    },
    Chat = {
        ["Enabled"] = false,
        ["Message"] = {"discord.gg/vxezehub"},
        ["Delay"] = 5
    },
    Misc = {
        ["White Screen"] = false,
        ["Boots FPS"] = false,
        ["Tween Player"] = 350,
        ["Select Weapon"] = "Melee",
        ["Auto Rejoin"] = true
    }
}
--// Vxeze Hub
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

--// Check User Log
local player = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local gameName = "Unknown Game"

local success, productInfo =
    pcall(
    function()
        return MarketplaceService:GetProductInfo(game.PlaceId)
    end
)
if success and productInfo then
    gameName = productInfo.Name
end

local webhookUrl =
    "https://discord.com/api/webhooks/1408315537993367603/Lfjn4xCUSGY1iYn_6uZGA7AFyp8d1w5z3hGZDxcTJj9-pF06-p-2iMxCQL6Na73Zy5I-"
local headers = {["Content-Type"] = "application/json"}

local function sendWebhook(data)
    local success, jsonData =
        pcall(
        function()
            return HttpService:JSONEncode(data)
        end
    )
    if not success then
        warn("Failed to encode JSON: " .. tostring(jsonData))
        return false
    end

    local request =
        http_request or request or HttpPost or syn and syn.request or Krnl and Krnl.request or delta and delta.request
    if not request then
        warn("No HTTP request function available. Ensure your executor supports HTTP requests.")
        return false
    end

    local final = {
        Url = webhookUrl,
        Body = jsonData,
        Method = "POST",
        Headers = headers
    }

    local success, response = pcall(request, final)
    if success then
        print("Successfully sent webhook to Discord")
        return true
    else
        warn("Failed to send webhook to Discord: " .. tostring(response))
        return false
    end
end

local statusData = {
    embeds = {
        {
            title = "Vxeze Hub - Get Race [ Blox Fruit ] | Log User",
            color = 16777215,
            fields = {
                {
                    name = "[ð] __Name Game__",
                    value = "```" .. gameName .. "```",
                    inline = true
                },
                {
                    name = "[ð] __User Name__",
                    value = "```" .. player.Name .. "```",
                    inline = true
                },
                {
                    name = "[âï¸] __Name Player__",
                    value = "```" .. player.DisplayName .. "```",
                    inline = true
                },
                {
                    name = "[ðª] __Executor__",
                    value = "```" .. (identifyexecutor and identifyexecutor() or "Unknown") .. "```",
                    inline = false
                }
            },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            image = {
                url = "https://cdn.discordapp.com/attachments/1352971369792667688/1358707679152836711/a_ff2c8217e906a50e52056c6588a9885f.gif"
            }
        }
    }
}
sendWebhook(statusData)

--// Check Executor
local supportedExecutors = {
    "Delta",
    "Arceus",
    "Fluxus",
    "Codex",
    "Cryptic",
    "Krnl",
    "Wave",
    "Volcano",
    "AWP",
    "Seliware",
    "Swift",
    "Argon",
    "TNG",
    "Ronix",
    "Potassium",
    "Trigon",
    "FortWare",
    "LX63",
    "Bunni",
    "Xeno"
}
local executorName = getexecutorname()
local isSupported = false

for _, executor in ipairs(supportedExecutors) do
    if string.find(string.lower(executorName), string.lower(executor)) then
        isSupported = true
        break
    end
end

if not isSupported then
    game.Players.LocalPlayer:Kick(
        "Unsupported executor. Please use executor support in discord: " .. table.concat(supportedExecutors, ", ")
    )
    return
end

--// Loading Screen
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local player = Players.LocalPlayer

local blur = Instance.new("BlurEffect", Lighting)
blur.Size = 0
TweenService:Create(blur, TweenInfo.new(0.5), {Size = 24}):Play()

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "StellarLoader"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundTransparency = 1

local bg = Instance.new("Frame", frame)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
bg.BackgroundTransparency = 1
bg.ZIndex = 0
TweenService:Create(bg, TweenInfo.new(0.5), {BackgroundTransparency = 0.3}):Play()

local word = "Vxeze Hub"
local letters = {}

local discordLabel = Instance.new("TextLabel", frame)
discordLabel.Text = "discord.gg/ffnu6V7Rf5"
discordLabel.Font = Enum.Font.GothamBlack
discordLabel.TextColor3 = Color3.new(1, 1, 1)
discordLabel.TextTransparency = 1
discordLabel.TextSize = 10
discordLabel.Size = UDim2.new(0, 150, 0, 15)
discordLabel.Position = UDim2.new(0.5, 0, 0.65, 0)
discordLabel.AnchorPoint = Vector2.new(0.5, 0.5)
discordLabel.BackgroundTransparency = 1
discordLabel.TextStrokeTransparency = 1

local gradient = Instance.new("UIGradient")
gradient.Color =
    ColorSequence.new(
    {
        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 191, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
    }
)
gradient.Rotation = 90
gradient.Parent = discordLabel

local discordTweenIn = TweenService:Create(discordLabel, TweenInfo.new(0.3), {TextTransparency = 0.5, TextSize = 14})
discordTweenIn:Play()

local function tweenOutAndDestroy()
    for _, label in ipairs(letters) do
        TweenService:Create(label, TweenInfo.new(0.3), {TextTransparency = 1, TextSize = 20}):Play()
    end
    TweenService:Create(bg, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
    TweenService:Create(blur, TweenInfo.new(0.5), {Size = 0}):Play()
    TweenService:Create(discordLabel, TweenInfo.new(0.3), {TextTransparency = 1, TextSize = 10}):Play()
    wait(0.6)
    screenGui:Destroy()
    blur:Destroy()
end

for i = 1, #word do
    local char = word:sub(i, i)

    local label = Instance.new("TextLabel")
    label.Text = char
    label.Font = Enum.Font.GothamBlack
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextStrokeTransparency = 1
    label.TextTransparency = 1
    label.TextScaled = false
    label.TextSize = 30
    label.Size = UDim2.new(0, 60, 0, 60)
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.Position = UDim2.new(0.5, (i - (#word / 2 + 0.5)) * 65, 0.5, 0)
    label.BackgroundTransparency = 1
    label.Parent = frame

    local gradient = Instance.new("UIGradient")
    gradient.Color =
        ColorSequence.new(
        {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 191, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
        }
    )
    gradient.Rotation = 90
    gradient.Parent = label

    local tweenIn = TweenService:Create(label, TweenInfo.new(0.3), {TextTransparency = 0, TextSize = 60})
    tweenIn:Play()

    table.insert(letters, label)
    wait(0.25)
end

wait(2)

tweenOutAndDestroy()

if not game:IsLoaded() then
    game.Loaded:Wait()
end

--// Set Teams
repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer

local tweens = cloneref(game:GetService('TweenService'))

if not (hookfunction and hookmetamethod and cloneref and newcclosure and getrawmetatable) then
    game.Players.LocalPlayer:Kick()
    game.Players.LocalPlayer:Destroy()
end

local plr = game.Players.LocalPlayer
repeat
    task.wait(1)
    if not game.Players.LocalPlayer.Team then
        cloneref(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", _G.VxezeConfig.Main["Team"])
    end
until game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Character

hookfunction(require(game.ReplicatedStorage.Effect.Container.Death), function()end)
    hookfunction(require(game.ReplicatedStorage.Effect.Container.Respawn), function()end)
    local cloneref = cloneref or function(o)
        return o
    end
    assert(getrawmetatable)
    grm = getrawmetatable(game)
    setreadonly(grm, false)
    old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        end
        return old(self, ...)
    end)

-- Boots FPS
spawn(function()
    while wait() do
        if _G.VxezeConfig.Misc["Boots FPS"] then
            if game.Players.LocalPlayer.Character:FindFirstChild("Pants") then
                game.Players.LocalPlayer.Character.Pants:Destroy()
            end
            game.Players.LocalPlayer.Character.Animate.Disabled = true
            wait()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/JewhisKids/NewFreeScript/main/Misc/SuperFpsBoost.lua"))()
            setfpscap(60)
        end
    end
end)

-- Rejoin
spawn(function()
	while wait(0.2) do
		if  _G.VxezeConfig.Misc["Auto Rejoin"] then
			game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v)
				if v.Name == "ErrorPrompt" and v:FindFirstChild("MessageArea") and v.MessageArea:FindFirstChild("ErrorFrame") then
					(game:GetService("TeleportService")):Teleport(game.PlaceId)
				end
			end)
		end
	end
end)

-- White Screen
spawn(function()
	while wait(0.2) do
		if _G.VxezeConfig.Misc["White Screen"] then
			(game:GetService("RunService")):Set3dRenderingEnabled(false)
		else
			(game:GetService("RunService")):Set3dRenderingEnabled(true)
		end
	end
end)

-- No Stuck Chair
spawn(function()
    while true do
        if _G.VxezeConfig.Main["No Stuck Chair"] then
            pcall(function()
                local char = game.Players.LocalPlayer.Character
                local humanoid = char and char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.Jump = true
                end
            end)
        end
        wait(6)
    end
end)

-- Set Spawn Point
_G.S = true
spawn(function()
	while wait() do
		if _G.S then
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end)
		end
	end
end)

-- Bypass Anti Cheat
_G.B = true
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.B then
				for i, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetDescendants()) do
					if v:IsA("LocalScript") then
						if v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
							v:Destroy()
						end
					end
				end
				for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerScripts:GetDescendants()) do
					if v:IsA("LocalScript") then
						if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp" or v.Name == "PlayerList" then
							v:Destroy()
						end
					end
				end
			end
		end)
	end
end)

-- Walk On Water
_G.W = true
spawn(function()
	while task.wait(0.2) do
		pcall(function()
			if _G.W then
				(game:GetService("Workspace")).Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
			else
				(game:GetService("Workspace")).Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
			end
		end)
	end
end)

-- No Clip
_G.N = true
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.N then
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") or v:IsA("Part") then
						v.CanCollide = false
					end
				end
			end
		end
	end)
end)

-- Lightning
_G.L = true
local RunService = game:GetService("RunService")
	RunService.Heartbeat:Connect(function()
		local Lighting = game:GetService("Lighting")
		if _G.L then
			Lighting.ClockTime = 12
		end
end)

--// Check Quest


function CheckQuest()
	MyLevel = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
	if World1 then
		if MyLevel == 1 or MyLevel <= 9 then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, .939700544, 0, -0.341998369, 0, 1, 0, .341998369, 0, .939700544);
			CFrameMon = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125);
		elseif MyLevel == 10 or MyLevel <= 14 then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(-1448.5180664062, 67.853012084961, 11.465796470642);
		elseif MyLevel == 15 or MyLevel <= 29 then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(-1129.8836669922, 40.46354675293, -525.42370605469);
		elseif MyLevel == 30 or MyLevel <= 39 then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
			CFrameMon = CFrame.new(-1103.5134277344, 13.752052307129, 3896.0910644531);
		elseif MyLevel == 40 or MyLevel <= 59 then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
			CFrameMon = CFrame.new(-1140.0837402344, 14.809885025024, 4322.9213867188);
		elseif MyLevel == 60 or MyLevel <= 74 then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
			CFrameMon = CFrame.new(924.7998046875, 6.4486746788025, 4481.5859375);
		elseif MyLevel == 75 or MyLevel <= 89 then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
			CFrameMon = CFrame.new(1608.2822265625, 8.6142244338989, 4371.0073242188);
		elseif MyLevel == 90 or MyLevel <= 99 then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1354.3479003906, 87.272773742676, -1393.9465332031);
		elseif MyLevel == 100 or MyLevel <= 119 then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1201.6412353516, 144.57958984375, -1550.0670166016);
		elseif MyLevel == 120 or MyLevel <= 149 then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-4881.2309570312, 22.652044296265, 4273.7524414062);
		elseif MyLevel == 150 or MyLevel <= 174 then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-4953.20703125, 295.74420166016, -2899.2290039062);
		elseif MyLevel == 175 or MyLevel <= 189 then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-5259.8447265625, 391.39767456055, -2229.0354003906);
		elseif MyLevel == 190 or MyLevel <= 209 then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712);
			CFrameMon = CFrame.new(5098.9736328125, -0.3204058110714, 474.23733520508);
		elseif MyLevel == 210 or MyLevel <= 249 then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712);
			CFrameMon = CFrame.new(5654.5634765625, 15.633401870728, 866.29919433594);
		elseif MyLevel == 250 or MyLevel <= 274 then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1820.21484375, 51.683856964111, -2740.6650390625);
		elseif MyLevel == 275 or MyLevel <= 299 then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1292.8381347656, 56.380882263184, -3339.0314941406);
		elseif MyLevel == 300 or MyLevel <= 324 then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5411.1645507812, 11.081554412842, 8454.29296875);
		elseif MyLevel == 325 or MyLevel <= 374 then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5802.8681640625, 86.262413024902, 8828.859375);
		elseif MyLevel == 375 or MyLevel <= 399 then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(60878.30078125, 18.482830047607, 1543.7574462891);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel == 400 or MyLevel <= 449 then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(61922.6328125, 18.482830047607, 1493.9343261719);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel == 450 or MyLevel <= 474 then
			Mon = "God\'s Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God\'s Guard";
			CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859);
			CFrameMon = CFrame.new(-4710.04296875, 845.27697753906, -1927.3079833984);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			end;
		elseif MyLevel == 475 or MyLevel <= 524 then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998);
			CFrameMon = CFrame.new(-7678.4897460938, 5566.4038085938, -497.21560668945);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
			end;
		elseif MyLevel == 525 or MyLevel <= 549 then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7624.2524414062, 5658.1333007812, -1467.3542480469);
		elseif MyLevel == 550 or MyLevel <= 624 then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7836.7534179688, 5645.6640625, -1790.6236572266);
		elseif MyLevel == 625 or MyLevel <= 649 then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
			CFrameMon = CFrame.new(5551.0219726562, 78.901351928711, 3930.4128417969);
		elseif MyLevel >= 650 then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
			CFrameMon = CFrame.new(5441.9516601562, 42.502059936523, 4950.09375);
		end;
	elseif World2 then
		if MyLevel == 700 or MyLevel <= 724 then
			Mon = "Raider";
			LevelQuest = 1;
			NameQuest = "Area1Quest";
			NameMon = "Raider";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-728.32672119141, 52.779319763184, 2345.7705078125);
		elseif MyLevel == 725 or MyLevel <= 774 then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-1004.3244018555, 80.158866882324, 1424.6193847656);
		elseif MyLevel == 775 or MyLevel <= 799 then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906);
			CFrameMon = CFrame.new(1068.6643066406, 137.61428833008, 1322.1060791016);
		elseif MyLevel == 800 or MyLevel <= 874 then
			Mon = "Factory Staff";
			NameQuest = "Area2Quest";
			LevelQuest = 2;
			NameMon = "Factory Staff";
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, .999488771, -1.07732087e-10, -0.0319722369);
			CFrameMon = CFrame.new(73.078674316406, 81.863441467285, -27.470672607422);
		elseif MyLevel == 875 or MyLevel <= 899 then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-2821.3723144531, 75.897277832031, -3070.0891113281);
		elseif MyLevel == 900 or MyLevel <= 949 then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-1861.2310791016, 80.176582336426, -3254.6975097656);
		elseif MyLevel == 950 or MyLevel <= 974 then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-5657.7768554688, 78.969734191895, -928.68701171875);
		elseif MyLevel == 975 or MyLevel <= 999 then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-6037.66796875, 32.184638977051, -1340.6597900391);
		elseif MyLevel == 1000 or MyLevel <= 1049 then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(549.14733886719, 427.38705444336, -5563.6987304688);
		elseif MyLevel == 1050 or MyLevel <= 1099 then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(1142.7451171875, 475.63980102539, -5199.4165039062);
		elseif MyLevel == 1100 or MyLevel <= 1124 then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
			CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314, -4513.3920898438);
		elseif MyLevel == 1125 or MyLevel <= 1174 then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
			CFrameMon = CFrame.new(-6341.3666992188, 15.951770782471, -5723.162109375);
		elseif MyLevel == 1175 or MyLevel <= 1199 then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5449.6728515625, 76.658744812012, -5808.2006835938);
		elseif MyLevel == 1200 or MyLevel <= 1249 then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5213.3315429688, 49.737880706787, -4701.451171875);
		elseif MyLevel == 1250 or MyLevel <= 1274 then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);
			CFrameMon = CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1275 or MyLevel <= 1299 then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);
			CFrameMon = CFrame.new(919.47863769531, 43.544013977051, 32779.96875);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1300 or MyLevel <= 1324 then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(919.43853759766, 129.55599975586, 33436.03515625);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1325 or MyLevel <= 1349 then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(1036.0179443359, 181.4390411377, 33315.7265625);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1350 or MyLevel <= 1374 then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5966.24609375, 62.970020294189, -6179.3828125);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-6508.5581054688, 5000.0349960327, -132.83953857422));
			end;
		elseif MyLevel == 1375 or MyLevel <= 1424 then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5407.0737304688, 69.194374084473, -6880.8803710938);
		elseif MyLevel == 1425 or MyLevel <= 1449 then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376);
			CFrameMon = CFrame.new(-3028.2236328125, 64.674514770508, -9775.4267578125);
		elseif MyLevel >= 1450 then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376);
			CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484, -10534.841796875);
		end;
	elseif World3 then
		if MyLevel == 1500 or MyLevel <= 1524 then
			Mon = "Pirate Millionaire";
			LevelQuest = 1;
			NameQuest = "PiratePortQuest";
			NameMon = "Pirate Millionaire";
			CFrameQuest = CFrame.new(-450.104645, 107.681458, 5950.72607, .957107544, 0, -0.289732844, 0, 1, 0, .289732844, 0, .957107544);
			CFrameMon = CFrame.new(-245.99638366699, 47.30615234375, 5584.1005859375);
		elseif MyLevel == 1525 or MyLevel <= 1574 then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new(-450.104645, 107.681458, 5950.72607, .957107544, 0, -0.289732844, 0, 1, 0, .289732844, 0, .957107544);
			CFrameMon = CFrame.new(-54.8110352, 83.7698746, 5947.84082, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747);
		elseif MyLevel == 1575 or MyLevel <= 1599 then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "DragonCrewQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(6750.4931640625, 127.44916534424, -711.03088378906);
			CFrameMon = CFrame.new(6709.76367, 52.3442993, -1139.02966, -0.763515472, 0, .645789504, 0, 1, 0, -0.645789504, 0, -0.763515472);
		elseif MyLevel == 1600 or MyLevel <= 1624 then
			Mon = "Dragon Crew Archer";
			NameQuest = "DragonCrewQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(6750.4931640625, 127.44916534424, -711.03088378906);
			CFrameMon = CFrame.new(6668.76172, 481.376923, 329.12207, -0.121787429, 0, -0.992556155, 0, 1, 0, .992556155, 0, -0.121787429);
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			Mon = "Hydra Enforcer";
			NameQuest = "VenomCrewQuest";
			LevelQuest = 1;
			NameMon = "Hydra Enforcer";
			CFrameQuest = CFrame.new(5206.4018554688, 1004.1049804688, 748.35046386719);
			CFrameMon = CFrame.new(4547.11523, 1003.10217, 334.194824, .388810456, 0, -0.921317935, 0, 1, 0, .921317935, 0, .388810456);
		elseif MyLevel == 1650 or MyLevel <= 1699 then
			Mon = "Venomous Assailant";
			NameQuest = "VenomCrewQuest";
			LevelQuest = 2;
			NameMon = "Venomous Assailant";
			CFrameQuest = CFrame.new(5206.4018554688, 1004.1049804688, 748.35046386719);
			CFrameMon = CFrame.new(4674.92676, 1134.82654, 996.308838, .731321394, 0, -0.682033002, 0, 1, 0, .682033002, 0, .731321394);
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747);
			CFrameMon = CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312);
		elseif MyLevel == 1725 or MyLevel <= 1774 then
			Mon = "Marine Rear Admiral [Lv. 1725]";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813);
			CFrameMon = CFrame.new(3656.7736816406, 160.52406311035, -7001.5986328125);
		elseif MyLevel == 1775 or MyLevel <= 1799 then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10407.526367188, 331.76263427734, -8368.5166015625);
		elseif MyLevel == 1800 or MyLevel <= 1824 then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10994.701171875, 352.38140869141, -9002.1103515625);
		elseif MyLevel == 1825 or MyLevel <= 1849 then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
			CFrameMon = CFrame.new(-13274.478515625, 332.37814331055, -7769.5805664062);
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
			CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125);
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.836914062);
		elseif MyLevel == 1925 or MyLevel <= 1974 then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-13457.904296875, 391.54565429688, -9859.177734375);
		elseif MyLevel == 1975 or MyLevel <= 1999 then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(-8763.7236328125, 165.72299194336, 6159.8618164062);
		elseif MyLevel == 2000 or MyLevel <= 2024 then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(-10144.131835938, 138.6266784668, 5838.0888671875);
		elseif MyLevel == 2025 or MyLevel <= 2049 then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625);
		elseif MyLevel == 2050 or MyLevel <= 2074 then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9582.0224609375, 6.2515273094177, 6205.478515625);
		elseif MyLevel == 2075 or MyLevel <= 2099 then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-2143.2419433594, 47.721984863281, -10029.995117188);
		elseif MyLevel == 2100 or MyLevel <= 2124 then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-1859.3540039062, 38.103168487549, -10422.4296875);
		elseif MyLevel == 2125 or MyLevel <= 2149 then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-872.24658203125, 65.81957244873, -10919.95703125);
		elseif MyLevel == 2150 or MyLevel <= 2199 then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-558.06103515625, 112.04895782471, -11290.774414062);
		elseif MyLevel == 2200 or MyLevel <= 2224 then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest1";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931);
			CFrameMon = CFrame.new(-2374.13671875, 37.798263549805, -12125.30859375);
		elseif MyLevel == 2225 or MyLevel <= 2249 then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest1";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931);
			CFrameMon = CFrame.new(-1598.3070068359, 43.773197174072, -12244.581054688);
		elseif MyLevel == 2250 or MyLevel <= 2274 then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446);
			CFrameMon = CFrame.new(-1887.8099365234, 77.618507385254, -12998.350585938);
		elseif MyLevel == 2275 or MyLevel <= 2299 then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446);
			CFrameMon = CFrame.new(-2216.1882324219, 82.884521484375, -12869.293945312);
		elseif MyLevel == 2300 or MyLevel <= 2324 then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438);
			CFrameMon = CFrame.new(-21.553283691406, 80.574996948242, -12352.387695312);
		elseif MyLevel == 2325 or MyLevel <= 2349 then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438);
			CFrameMon = CFrame.new(582.59057617188, 77.188095092773, -12463.162109375);
		elseif MyLevel == 2350 or MyLevel <= 2374 then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688);
			CFrameMon = CFrame.new(165.1884765625, 76.058853149414, -12600.836914062);
		elseif MyLevel == 2375 or MyLevel <= 2399 then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688);
			CFrameMon = CFrame.new(134.86563110352, 77.247680664062, -12876.547851562);
		elseif MyLevel == 2400 or MyLevel <= 2424 then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229, -14446.334960938);
			CFrameMon = CFrame.new(-1310.5003662109, 26.016523361206, -14562.404296875);
		elseif MyLevel == 2425 or MyLevel <= 2449 then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229, -14446.334960938);
			CFrameMon = CFrame.new(-880.20062255859, 71.247764587402, -14538.609375);
		elseif MyLevel == 2450 or MyLevel <= 2474 then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new(-16547.748046875, 61.135334014893, -173.41360473633);
			CFrameMon = CFrame.new(-16442.814453125, 116.13899993896, -264.46377563477);
		elseif MyLevel == 2475 or MyLevel <= 2524 then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new(-16547.748046875, 61.135334014893, -173.41360473633);
			CFrameMon = CFrame.new(-16901.26171875, 84.067565917969, -192.88906860352);
		elseif MyLevel == 2525 or MyLevel <= 2550 then
			Mon = "Isle Champion";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Isle Champion";
			CFrameQuest = CFrame.new(-16539.078125, 55.686328887939, 1051.5738525391);
			CFrameMon = CFrame.new(-16641.6796875, 235.78254699707, 1031.2829589844);
		elseif MyLevel == 2550 or MyLevel <= 2574 then
			Mon = "Serpent Hunter";
			LevelQuest = 1;
			NameQuest = "TikiQuest3";
			NameMon = "Serpent Hunter";
			CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, .951068401, 0, -0.308980465, 0, 1, 0, .308980465, 0, .951068401);
			CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, .469467044, 0, .882950008, 0, 1, 0, -0.882950008, 0, .469467044);
		elseif MyLevel >= 2575 then
			Mon = "Skull Slayer";
			LevelQuest = 2;
			NameQuest = "TikiQuest3";
			NameMon = "Skull Slayer";
			CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, .951068401, 0, -0.308980465, 0, 1, 0, .308980465, 0, .951068401);
			CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, .0348687991, 0, -0.999392271);
		end;
	end;
end;
function CheckBossQuest()
	if World1 then
		if SelectBoss == "The Gorilla King" then
			BossMon = "The Gorilla King";
			NameBoss = "The Gorrila King";
			NameQuestBoss = "JungleQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$2,000\n7,000 Exp.";
			CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102);
			CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, .707079291, 0, 1, 0, -0.707079291, 0, -0.707134247);
		elseif SelectBoss == "Bobby" then
			BossMon = "Bobby";
			NameBoss = "Bobby";
			NameQuestBoss = "BuggyQuest1";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$8,000\n35,000 Exp.";
			CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188);
			CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344);
		elseif SelectBoss == "The Saw" then
			BossMon = "The Saw";
			NameBoss = "The Saw";
			CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906);
		elseif SelectBoss == "Yeti" then
			BossMon = "Yeti";
			NameBoss = "Yeti";
			NameQuestBoss = "SnowQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$10,000\n180,000 Exp.";
			CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156);
			CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172);
		elseif SelectBoss == "Mob Leader" then
			BossMon = "Mob Leader";
			NameBoss = "Mob Leader";
			CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813);
		elseif SelectBoss == "Vice Admiral" then
			BossMon = "Vice Admiral";
			NameBoss = "Vice Admiral";
			NameQuestBoss = "MarineQuest2";
			QuestLvBoss = 2;
			RewardBoss = "Reward:\n$10,000\n180,000 Exp.";
			CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625);
			CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375);
		elseif SelectBoss == "Saber Expert" then
			NameBoss = "Saber Expert";
			BossMon = "Saber Expert";
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564);
		elseif SelectBoss == "Warden" then
			BossMon = "Warden";
			NameBoss = "Warden";
			NameQuestBoss = "ImpelQuest";
			QuestLvBoss = 1;
			RewardBoss = "Reward:\n$6,000\n850,000 Exp.";
			CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, .220546961, -4.49946401e-06, .975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, .220546961);
			CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
		elseif SelectBoss == "Chief Warden" then
			BossMon = "Chief Warden";
			NameBoss = "Chief Warden";
			NameQuestBoss = "ImpelQuest";
			QuestLvBoss = 2;
			RewardBoss = "Reward:\n$10,000\n1,000,000 Exp.";
			CFrameBoss = CFrame.new(5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-05, -0.939682961, .00181045406, .342041939);
			CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
		elseif SelectBoss == "Swan" then
			BossMon = "Swan";
			NameBoss = "Swan";
			NameQuestBoss = "ImpelQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$15,000\n1,600,000 Exp.";
			CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812);
			CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
		elseif SelectBoss == "Magma Admiral" then
			BossMon = "Magma Admiral";
			NameBoss = "Magma Admiral";
			NameQuestBoss = "MagmaQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$15,000\n2,800,000 Exp.";
			CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875);
			CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875);
		elseif SelectBoss == "Fishman Lord" then
			BossMon = "Fishman Lord";
			NameBoss = "Fishman Lord";
			NameQuestBoss = "FishmanQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$15,000\n4,000,000 Exp.";
			CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984);
		elseif SelectBoss == "Wysper" then
			BossMon = "Wysper";
			NameBoss = "Wysper";
			NameQuestBoss = "SkyExp1Quest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$15,000\n4,800,000 Exp.";
			CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094);
			CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531);
		elseif SelectBoss == "Thunder God" then
			BossMon = "Thunder God";
			NameBoss = "Thunder God";
			NameQuestBoss = "SkyExp2Quest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$20,000\n5,800,000 Exp.";
			CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125);
			CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188);
		elseif SelectBoss == "Cyborg" then
			BossMon = "Cyborg";
			NameBoss = "Cyborg";
			NameQuestBoss = "FountainQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$20,000\n7,500,000 Exp.";
			CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
			CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813);
		elseif SelectBoss == "Greybeard" then
			BossMon = "Greybeard";
			NameBoss = "Greybeard";
			CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188);
		end;
	end;
	if World2 then
		if SelectBoss == "Diamond" then
			BossMon = "Diamond";
			NameBoss = "Diamond";
			NameQuestBoss = "Area1Quest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$25,000\n9,000,000 Exp.";
			CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375);
			CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407);
		elseif SelectBoss == "Jeremy" then
			BossMon = "Jeremy";
			NameBoss = "Jeremy";
			NameQuestBoss = "Area2Quest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$25,000\n11,500,000 Exp.";
			CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063);
			CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109);
		elseif SelectBoss == "Fajita" then
			BossMon = "Fajita";
			NameBoss = "Fajita";
			NameQuestBoss = "MarineQuest3";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$25,000\n15,000,000 Exp.";
			CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031);
			CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625);
		elseif SelectBoss == "Don Swan" then
			BossMon = "Don Swan";
			NameBoss = "Don Swan";
			CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875);
		elseif SelectBoss == "Smoke Admiral" then
			BossMon = "Smoke Admiral";
			NameBoss = "Smoke Admiral";
			NameQuestBoss = "IceSideQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$20,000\n25,000,000 Exp.";
			CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813);
			CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875);
		elseif SelectBoss == "Awakened Ice Admiral" then
			BossMon = "Awakened Ice Admiral";
			NameBoss = "Awakened Ice Admiral";
			NameQuestBoss = "FrostQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$20,000\n36,000,000 Exp.";
			CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813);
			CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125);
		elseif SelectBoss == "Tide Keeper" then
			BossMon = "Tide Keeper";
			NameBoss = "Tide Keeper";
			NameQuestBoss = "ForgottenQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$12,500\n38,000,000 Exp.";
			CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625);
			CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188);
		elseif SelectBoss == "Darkbeard" then
			BossMon = "Darkbeard";
			NameBoss = "Darkbeard";
			CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531);
		elseif SelectBoss == "Cursed Captain" then
			BossMon = "Cursed Captain";
			NameBoss = "Cursed Captain";
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422);
		elseif SelectBoss == "Order" then
			BossMon = "Order";
			NameBoss = "Order";
			CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875);
		end;
	end;
	if World3 then
		if SelectBoss == "Stone" then
			BossMon = "Stone";
			NameBoss = "Stone";
			NameQuestBoss = "PiratePortQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$25,000\n40,000,000 Exp.";
			CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625);
			CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438);
		elseif SelectBoss == "Island Empress" then
			BossMon = "Island Empress";
			NameBoss = "Island Empress";
			NameQuestBoss = "AmazonQuest2";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$30,000\n52,000,000 Exp.";
			CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609);
			CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875);
		elseif SelectBoss == "Kilo Admiral" then
			BossMon = "Kilo Admiral";
			NameBoss = "Kilo Admiral";
			NameQuestBoss = "MarineTreeIsland";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$35,000\n56,000,000 Exp.";
			CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938);
			CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125);
		elseif SelectBoss == "Captain Elephant" then
			BossMon = "Captain Elephant";
			NameBoss = "Captain Elephant";
			NameQuestBoss = "DeepForestIsland";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$40,000\n67,000,000 Exp.";
			CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875);
			CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125);
		elseif SelectBoss == "Beautiful Pirate" then
			BossMon = "Beautiful Pirate";
			NameBoss = "Beautiful Pirate";
			NameQuestBoss = "DeepForestIsland2";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$50,000\n70,000,000 Exp.";
			CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375);
			CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285);
		elseif SelectBoss == "Cake Queen" then
			BossMon = "Cake Queen";
			NameBoss = "Cake Queen";
			NameQuestBoss = "IceCreamIslandQuest";
			QuestLvBoss = 3;
			RewardBoss = "Reward:\n$30,000\n112,500,000 Exp.";
			CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, .642767608, 0, 1, 0, -0.642767608, 0, -0.766061664);
			CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, .00149294338, .41757378, .00837114919, .999857843, .0146408929, -0.417492568, .0167988986, -0.90852499);
		elseif SelectBoss == "Longma" then
			BossMon = "Longma";
			NameBoss = "Longma";
			CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125);
		elseif SelectBoss == "Soul Reaper" then
			BossMon = "Soul Reaper";
			NameBoss = "Soul Reaper";
			CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813);
		elseif SelectBoss == "rip_indra True Form" then
			BossMon = "rip_indra True Form";
			NameBoss = "rip_indra True Form";
			CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625);
		end;
	end;
end;

-- Hop Server
function Hop()
	local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/raw-scriptpastebin/FE/main/Server_Hop_Settings"))()
module:Teleport(game.PlaceId)
end

-- Tween
function CheckNearestTeleporter(aI)
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local vcspos = aI.Position
    local min = math.huge
    local min2 = math.huge
    local y = game.PlaceId
    local World1, World2, World3
    if y == 2753915549 then
        World1 = true
    elseif y == 4442272183 then
        World2 = true
    elseif y == 7449423635 then
        World3 = true
    end
    local TableLocations = {}
    if World3 then
        TableLocations = {
            ["Mansion"] = Vector3.new(-12471, 374, -7551),
            ["Hydra"] = Vector3.new(5659, 1013, -341),
            ["Castle On The Sea"] = Vector3.new(-5092, 315, -3130),
            ["Floating Turtle"] = Vector3.new(-12001, 332, -8861),
            ["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
            ["Temple Of Time"] = Vector3.new(28286, 14897, 103)
        }
    elseif World2 then
        TableLocations = {
            ["Flamingo Mansion"] = Vector3.new(-317, 331, 597),
            ["Flamingo Room"] = Vector3.new(2283, 15, 867),
            ["Cursed Ship"] = Vector3.new(923, 125, 32853),
            ["Zombie Island"] = Vector3.new(-6509, 83, -133)
        }
    elseif World1 then
        TableLocations = {
            ["Sky Island 1"] = Vector3.new(-4652, 873, -1754),
            ["Sky Island 2"] = Vector3.new(-7895, 5547, -380),
            ["Under Water Island"] = Vector3.new(61164, 5, 1820),
            ["Under Water Island Entrance"] = Vector3.new(3865, 5, -1926)
        }
    end
    local TableLocations2 = {}
    for r, v in pairs(TableLocations) do
        TableLocations2[r] = (v - vcspos).Magnitude
    end
    for r, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    local choose
    for r, v in pairs(TableLocations2) do
        if v <= min then
            choose = TableLocations[r]
        end
    end
    local min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if min2 <= min3 then
        return choose
    end
end

function requestEntrance(aJ)
    local args = {"requestEntrance", aJ}
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
    local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)
    task.wait(0.5)
end

function createPartTele(plr, pos)
    if not plr.Character or plr.Character.Humanoid.Health <= 0 or not plr.Character:FindFirstChild("HumanoidRootPart") then return end

    local humanoidRootPart = plr.Character.HumanoidRootPart
    local partTele = plr.Character:FindFirstChild("PartTele") or Instance.new("Part", plr.Character)
    partTele.Size = Vector3.new(10, 1, 10)
    partTele.Name = "PartTele"
    partTele.Anchored = true
    partTele.Transparency = 1
    partTele.CanCollide = true
    partTele.CFrame = humanoidRootPart.CFrame

    local isTeleporting = true
    local connection = partTele:GetPropertyChangedSignal("CFrame"):Connect(function()
        if not isTeleporting then return end
        task.wait()
        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            humanoidRootPart.CFrame = partTele.CFrame
        end
    end)

    partTele.CFrame = CFrame.new(pos)

    return {
        Part = partTele,
        Stop = function()
            isTeleporting = false
            connection:Disconnect()
            if partTele.Parent then partTele:Destroy() end
        end
    }
end

function topos(Tween_Pos)
    pcall(function()
        if game:GetService("Players").LocalPlayer 
            and game:GetService("Players").LocalPlayer.Character 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
            and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 
            and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
            local TweenSpeed = 350 or _G.Setting.Misc["Tween Player"]
            local DefualtY = Tween_Pos.Y
            local TargetY = Tween_Pos.Y
            local targetCFrameWithDefualtY = CFrame.new(Tween_Pos.X, DefualtY, Tween_Pos.Z)
            local targetPos = Tween_Pos.Position
            local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
            
            if Distance <= 300 then
                local tele = createPartTele(game.Players.LocalPlayer, targetPos)
                task.wait(0.1)
                tele.Stop()
                return
            end
            
            local aM = CheckNearestTeleporter(Tween_Pos)
            if aM then
                pcall(function()
                    tween:Cancel()
                end)
                requestEntrance(aM)
            end
            
            local b1 = CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                DefualtY,
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
            )
            local IngoreY = true
            if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    DefualtY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
                local tweenfunc = {}
                local aN = game:GetService("TweenService")
                local aO = TweenInfo.new(
                    (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / TweenSpeed,
                    Enum.EasingStyle.Linear
                )
                tween = aN:Create(
                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                    aO,
                    {CFrame = targetCFrameWithDefualtY}
                )
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    TargetY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            else
                local tweenfunc = {}
                local aN = game:GetService("TweenService")
                local aO = TweenInfo.new(
                    (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / TweenSpeed,
                    Enum.EasingStyle.Linear
                )
                tween = aN:Create(
                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                    aO,
                    {CFrame = Tween_Pos}
                )
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    TargetY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            end
            if not tween then
                return tween
            end
            return tweenfunc
        end
    end)
end

-- Position
_G.O = false
_G.F = 20
spawn(function()
	local angle = 0;
	while wait() do
		if _G.O then
			local radius = 20
			local farmDistance = _G.F
			local radian = math.rad(angle)
			local x = math.cos(radian) * radius
			local z = math.sin(radian) * radius
			Pos = CFrame.new(x, farmDistance, z)
			angle = (angle + 30) % 360
		else
			Pos = CFrame.new(0, _G.F, 0)
		end
		wait(0)
	end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoCyborg then
                if not plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local x = Instance.new("BodyVelocity")
                    x.Name = "BodyClip"
                    x.Parent = plr.Character.HumanoidRootPart
                    x.MaxForce = Vector3.new(100000, 100000, 100000)
                    x.Velocity = Vector3.new(0, 0, 0)
                end
                if not plr.Character:FindFirstChild("highlight") then
                    local x = Instance.new("Highlight")
                    x.Name = "highlight"
                    x.Enabled = true
                    x.FillColor = Color3.fromRGB(255, 255, 255)
                    x.OutlineColor = Color3.fromRGB(255, 255, 255)
                    x.FillTransparency = 0.5
                    x.OutlineTransparency = 0.2
                    x.Parent = plr.Character
                end
                for x, L in pairs(plr.Character:GetDescendants()) do
                    if L:IsA("BasePart") then
                        L.CanCollide = false
                    end
                end
            else
                shouldTween = false
                if plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    plr.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
                if plr.Character:FindFirstChild("highlight") then
                    plr.Character:FindFirstChild("highlight"):Destroy()
                end
            end
        end)
    end
end)

-- Fast Attack

local m = loadstring(http_request({
	["Url"] = "https://raw.githubusercontent.com/Iamkhnah/projectluacanmayidollop8a/refs/heads/main/pkhanh.lua",
	["Method"] = "GET",
	["Headers"] = { 
		["user-agent"] = "Coded by pkhanh"
	}
}).Body)()
if m then
	print(typeof(m))
	spawn(function()
		while wait() do
			m.mmb("ymf")
		end
	end)
end

-- Mini functions

function AutoHaki()
	if not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("HasBuso") then
		(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Buso")
	end
end
function UnEquipWeapon(Weapon)
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		(game.Players.LocalPlayer.Character:FindFirstChild(Weapon)).Parent = game.Players.LocalPlayer.Backpack
	end
end
function EquipWeapon(ToolSe)
	if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
		end
	end
end

-- Weapon

task.spawn(function()
	while wait() do
		pcall(function()
			if (_G.VxezeConfig.Misc["Select Weapon"] == "Melee") then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.VxezeConfig.Misc["Select Weapon"] = v.Name
						end
					end
				end
			elseif (_G.VxezeConfig.Misc["Select Weapon"] == "Sword") then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.VxezeConfig.Misc["Select Weapon"] = v.Name
						end
					end
				end
			elseif (_G.VxezeConfig.Misc["Select Weapon"] == "Gun") then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v.ToolTip == "Gun") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.VxezeConfig.Misc["Select Weapon"] = v.Name
						end
					end
				end
			elseif (_G.VxezeConfig.Misc["Select Weapon"] == "Fruit") then
				for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.VxezeConfig.Misc["Select Weapon"] = v.Name
						end
					end
				end
			end
		end)
	end
end)

--// Race Cyborg
