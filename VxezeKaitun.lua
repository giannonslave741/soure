if getgenv().VxezeKaitunRunning then
    return
end
getgenv().VxezeKaitunRunning = true

local function loadConfigFile()
    if getgenv().VxezeKaitun then return end
    if not (isfile and readfile and loadstring) then return end

    local configNames = {
        "VxezeKaitunConfig.txt",
        "VxezeKaitunConfig.lua",
    }

    for _, fileName in ipairs(configNames) do
        local ok, exists = pcall(isfile, fileName)
        if ok and exists then
            local readOk, source = pcall(readfile, fileName)
            if readOk and type(source) == "string" then
                local chunk = loadstring(source)
                if chunk then
                    pcall(chunk)
                    return
                end
            end
        end
    end
end

loadConfigFile()

local DefaultConfig = {
    Enabled = true,

    AutoBuySeeds = true,
    AutoBuyGears = false,
    AutoPlant = true,
    AutoCollectFruit = true,
    AutoSellFruit = true,
    AutoCollectSeedPack = true,

    FpsBoost = true,

    CollectGoldSeed = true,
    CollectRainbowSeed = true,
    PlantGoldSeed = false,
    PlantRainbowSeed = false,

    GearPriority = "AfterPlant",
    StockpileSeeds = true,
    SellWhenInventoryFull = true,
    InventorySellBuffer = 1,
    SellThreshold = 5,
    MinShecklesToSpend = 0,

    BuyDelay = 0.1,
    PlantDelay = 0.3,
    CollectDelay = 0.08,
    SellDelay = 0.1,
    IdleDelay = 0.35,
    LoopDelay = 0.08,

    MaxSeedBuysPerCycle = 5,
    MaxGearBuysPerCycle = 3,
    MaxPlantPerCycle = 30,
    MaxCollectPerCycle = 40,
    MaxSellPerCycle = 30,

    PlantYOffset = 3.5,
    PlantTweenSpeed = 50,
    PlantOccupiedSpacing = 2.0,

    SeedEnabled = {
        All = false,
        Carrot = true,
        Strawberry = true,
        Blueberry = true,
        Tulip = true,
        Tomato = true,
        Apple = true,
        Bamboo = true,
        Corn = true,
        Cactus = true,
        Pineapple = true,
        Mushroom = true,
        ["Green Bean"] = true,
        Banana = true,
        Grape = true,
        Coconut = true,
        Mango = true,
        ["Dragon Fruit"] = true,
        Acorn = true,
        Cherry = true,
        Sunflower = true,
        ["Venus Fly Trap"] = true,
        Pomegranate = true,
        ["Poison Apple"] = true,
        ["Moon Bloom"] = true,
        ["Dragon's Breath"] = true,
        ["Ghost Pepper"] = true,
        ["Poison Ivy"] = true,
        ["Baby Cactus"] = true,
        ["Glow Mushroom"] = true,
        Romanesco = true,
        ["Horned Melon"] = true,
    },

    GearEnabled = {
        All = false,
        ["Common Watering Can"] = false,
        ["Common Sprinkler"] = false,
        Sign = false,
        Lantern = false,
        Trowel = false,
        ["Speed Mushroom"] = false,
        ["Jump Mushroom"] = false,
        Gnome = false,
        ["Shrink Mushroom"] = false,
        ["Supersize Mushroom"] = false,
        ["Invisibility Mushroom"] = false,
        Wheelbarrow = false,
        Teleporter = false,
        ["Super Watering Can"] = false,
        ["Basic Pot"] = false,
        Flashbang = false,
    },

    FruitEnabled = {
        All = true,
    },
}

local function mergeDefaults(defaults, user)
    local output = {}
    user = type(user) == "table" and user or {}

    for key, value in pairs(defaults) do
        if type(value) == "table" then
            output[key] = mergeDefaults(value, user[key])
        elseif user[key] ~= nil then
            output[key] = user[key]
        else
            output[key] = value
        end
    end

    for key, value in pairs(user) do
        if output[key] == nil then
            output[key] = value
        end
    end

    return output
end

local Config = mergeDefaults(DefaultConfig, getgenv().VxezeKaitun)
getgenv().VxezeKaitun = Config

local State = {
    Networking = nil,
    SharedModules = nil,
    SeedItems = {},
    GearItems = {},
    SeedShopFlags = nil,
    GearShopFlags = nil,
    LastRun = {},
    MovementLocked = false,
    SellLocked = false,
    WorkersStarted = false,
    ActiveWorkers = 0,
    LastStatus = "",
    StartedAt = os.clock(),
    StartSheckles = nil,
    LastSheckles = nil,
    TotalEarned = 0,
    AntiAfkConnection = nil,
    FpsBoostStarted = false,
    LastTemporaryClear = 0,
}

local function startAntiAfk()
    if State.AntiAfkConnection then return end

    if getconnections then
        pcall(function()
            for _, connection in pairs(getconnections(LocalPlayer.Idled)) do
                if connection.Disable then
                    connection:Disable()
                elseif connection.Disconnect then
                    connection:Disconnect()
                end
            end
        end)
    end

    State.AntiAfkConnection = LocalPlayer.Idled:Connect(function()
        pcall(function()
            local VirtualUser = game:GetService("VirtualUser")
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
    end)
end

local function createStatusHud()
    local parent = nil
    pcall(function()
        parent = game:GetService("CoreGui")
    end)
    if not parent then
        parent = LocalPlayer:WaitForChild("PlayerGui")
    end

    local old = parent:FindFirstChild("VxezeKaitunStatus")
    if old then
        old:Destroy()
    end

    local gui = Instance.new("ScreenGui")
    gui.Name = "VxezeKaitunStatus"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.DisplayOrder = 999999

    local frame = Instance.new("Frame")
    frame.Name = "Overlay"
    frame.Position = UDim2.fromScale(0, 0)
    frame.Size = UDim2.fromScale(1, 1)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.38
    frame.BorderSizePixel = 0
    frame.Parent = gui

    local holder = Instance.new("Frame")
    holder.Name = "Center"
    holder.AnchorPoint = Vector2.new(0.5, 0.5)
    holder.Position = UDim2.fromScale(0.5, 0.5)
    holder.Size = UDim2.new(0.92, 0, 0, 190)
    holder.BackgroundTransparency = 1
    holder.Parent = frame

    local holderLimit = Instance.new("UISizeConstraint")
    holderLimit.MaxSize = Vector2.new(680, 220)
    holderLimit.MinSize = Vector2.new(300, 160)
    holderLimit.Parent = holder

    local layout = Instance.new("UIListLayout")
    layout.FillDirection = Enum.FillDirection.Vertical
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    layout.VerticalAlignment = Enum.VerticalAlignment.Center
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 7)
    layout.Parent = holder

    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.LayoutOrder = 1
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(1, 0, 0, 48)
    title.Font = Enum.Font.GothamBold
    title.Text = "Vxeze Hub"
    title.TextColor3 = Color3.fromRGB(142, 220, 255)
    title.TextSize = 40
    title.TextScaled = true
    title.TextXAlignment = Enum.TextXAlignment.Center
    title.TextYAlignment = Enum.TextYAlignment.Center
    title.Parent = holder

    local titleLimit = Instance.new("UITextSizeConstraint")
    titleLimit.MinTextSize = 30
    titleLimit.MaxTextSize = 46
    titleLimit.Parent = title

    local subtitle = Instance.new("TextLabel")
    subtitle.Name = "Subtitle"
    subtitle.LayoutOrder = 2
    subtitle.BackgroundTransparency = 1
    subtitle.Size = UDim2.new(1, 0, 0, 28)
    subtitle.Font = Enum.Font.Gotham
    subtitle.Text = "Grow A Garden 2 Kaitun"
    subtitle.TextColor3 = Color3.fromRGB(190, 205, 225)
    subtitle.TextSize = 21
    subtitle.TextScaled = true
    subtitle.TextXAlignment = Enum.TextXAlignment.Center
    subtitle.TextYAlignment = Enum.TextYAlignment.Center
    subtitle.Parent = holder

    local subtitleLimit = Instance.new("UITextSizeConstraint")
    subtitleLimit.MinTextSize = 16
    subtitleLimit.MaxTextSize = 22
    subtitleLimit.Parent = subtitle

    local status = Instance.new("TextLabel")
    status.Name = "Status"
    status.LayoutOrder = 3
    status.BackgroundTransparency = 1
    status.Size = UDim2.new(1, 0, 0, 30)
    status.Font = Enum.Font.GothamMedium
    status.Text = "Status: Init"
    status.TextColor3 = Color3.fromRGB(118, 255, 174)
    status.TextSize = 19
    status.TextScaled = true
    status.TextWrapped = true
    status.TextXAlignment = Enum.TextXAlignment.Center
    status.TextYAlignment = Enum.TextYAlignment.Center
    status.Parent = holder

    local statusLimit = Instance.new("UITextSizeConstraint")
    statusLimit.MinTextSize = 14
    statusLimit.MaxTextSize = 20
    statusLimit.Parent = status

    local time = Instance.new("TextLabel")
    time.Name = "Time"
    time.LayoutOrder = 4
    time.BackgroundTransparency = 1
    time.Size = UDim2.new(1, 0, 0, 26)
    time.Font = Enum.Font.Gotham
    time.Text = "Time: 00:00:00"
    time.TextColor3 = Color3.fromRGB(205, 230, 245)
    time.TextSize = 17
    time.TextScaled = true
    time.TextWrapped = true
    time.TextXAlignment = Enum.TextXAlignment.Center
    time.TextYAlignment = Enum.TextYAlignment.Center
    time.Parent = holder

    local timeLimit = Instance.new("UITextSizeConstraint")
    timeLimit.MinTextSize = 13
    timeLimit.MaxTextSize = 18
    timeLimit.Parent = time

    local earned = Instance.new("TextLabel")
    earned.Name = "MoneyEarned"
    earned.LayoutOrder = 5
    earned.BackgroundTransparency = 1
    earned.Size = UDim2.new(1, 0, 0, 26)
    earned.Font = Enum.Font.GothamMedium
    earned.Text = "Earned: 0 Sheckles"
    earned.TextColor3 = Color3.fromRGB(142, 220, 255)
    earned.TextSize = 17
    earned.TextScaled = true
    earned.TextWrapped = true
    earned.TextXAlignment = Enum.TextXAlignment.Center
    earned.TextYAlignment = Enum.TextYAlignment.Center
    earned.Parent = holder

    local earnedLimit = Instance.new("UITextSizeConstraint")
    earnedLimit.MinTextSize = 13
    earnedLimit.MaxTextSize = 18
    earnedLimit.Parent = earned

    local parented = pcall(function()
        gui.Parent = parent
    end)
    if not parented then
        gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    end
    return {
        Status = status,
        Time = time,
        MoneyEarned = earned,
    }
end

local Hud = createStatusHud()
local StatusLabel = Hud and Hud.Status

local function setStatus(text)
    text = tostring(text or "Idle")
    State.LastStatus = text
    if Hud and Hud.Status then
        Hud.Status.Text = "Status: " .. text
    end
end

local function isDescendantOfAny(instance, containers)
    for _, container in ipairs(containers) do
        if container and instance:IsDescendantOf(container) then
            return true
        end
    end
    return false
end

local function optimizeVisualInstance(instance)
    if not Config.FpsBoost or not instance then return end

    local localCharacter = LocalPlayer.Character
    local keepContainers = {
        localCharacter,
        StatusLabel and StatusLabel:FindFirstAncestorOfClass("ScreenGui"),
    }

    if isDescendantOfAny(instance, keepContainers) then
        return
    end

    pcall(function()
        if instance:IsA("ParticleEmitter")
            or instance:IsA("Trail")
            or instance:IsA("Beam")
            or instance:IsA("Smoke")
            or instance:IsA("Fire")
            or instance:IsA("Sparkles")
            or instance:IsA("Highlight")
        then
            instance.Enabled = false
            return
        end

        if instance:IsA("PointLight") or instance:IsA("SpotLight") or instance:IsA("SurfaceLight") then
            instance.Enabled = false
            return
        end

        if instance:IsA("BasePart") then
            instance.CastShadow = false
            return
        end

        if (instance:IsA("BillboardGui") or instance:IsA("SurfaceGui")) and instance:IsDescendantOf(workspace) then
            instance.Enabled = false
            return
        end
    end)
end

local function optimizeLighting()
    if not Config.FpsBoost then return end

    pcall(function()
        local lighting = game:GetService("Lighting")
        lighting.GlobalShadows = false
        lighting.EnvironmentDiffuseScale = 0
        lighting.EnvironmentSpecularScale = 0

        for _, effect in ipairs(lighting:GetDescendants()) do
            if effect:IsA("BloomEffect")
                or effect:IsA("BlurEffect")
                or effect:IsA("DepthOfFieldEffect")
                or effect:IsA("SunRaysEffect")
                or effect:IsA("ColorCorrectionEffect")
            then
                effect.Enabled = false
            end
        end
    end)

    pcall(function()
        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    end)
end

local function hideOtherCharacter(character)
    if not Config.FpsBoost or not character then return end
    if character == LocalPlayer.Character then return end

    local function hideInstance(instance)
        pcall(function()
            if instance:IsA("BasePart") then
                instance.LocalTransparencyModifier = 1
                instance.CastShadow = false
            elseif instance:IsA("Decal") or instance:IsA("Texture") then
                instance.Transparency = 1
            elseif instance:IsA("BillboardGui") or instance:IsA("SurfaceGui") then
                instance.Enabled = false
            elseif instance:IsA("ParticleEmitter") or instance:IsA("Trail") or instance:IsA("Beam") or instance:IsA("Highlight") then
                instance.Enabled = false
            end
        end)
    end

    for _, descendant in ipairs(character:GetDescendants()) do
        hideInstance(descendant)
    end
    character.DescendantAdded:Connect(hideInstance)
end

local function clearTemporaryVfx()
    if not Config.FpsBoost then return end

    local interval = 5
    if os.clock() - State.LastTemporaryClear < interval then return end
    State.LastTemporaryClear = os.clock()

    local temporary = workspace:FindFirstChild("Temporary")
    if temporary then
        pcall(function()
            temporary:ClearAllChildren()
        end)
    end
end

local function startFpsBoost()
    if State.FpsBoostStarted or not Config.FpsBoost then return end
    State.FpsBoostStarted = true

    optimizeLighting()

    task.spawn(function()
        local protectedNames = {
            Gardens = true,
            Map = true,
            NPCS = true,
        }

        for _, instance in ipairs(workspace:GetDescendants()) do
            optimizeVisualInstance(instance)
        end

        workspace.DescendantAdded:Connect(function(instance)
            if protectedNames[instance.Name] then return end
            task.defer(optimizeVisualInstance, instance)
        end)

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                hideOtherCharacter(player.Character)
                player.CharacterAdded:Connect(hideOtherCharacter)
            end
        end

        Players.PlayerAdded:Connect(function(player)
            if player ~= LocalPlayer then
                player.CharacterAdded:Connect(hideOtherCharacter)
            end
        end)
    end)
end

local function safeRequire(module)
    if not module then return nil end
    local ok, result = pcall(require, module)
    return ok and result or nil
end

local function getFlagValue(flagObject)
    if not flagObject then return nil end
    if type(flagObject) == "table" and type(flagObject.Get) == "function" then
        local ok, result = pcall(function()
            return flagObject:Get()
        end)
        if ok then return result end
    end
    if type(flagObject) == "table" then
        return flagObject
    end
    return nil
end

local function resolveShopPrice(shopName, itemName, basePrice)
    basePrice = tonumber(basePrice) or 0
    local flags = shopName == "SeedShop" and State.SeedShopFlags or State.GearShopFlags
    local overrides = flags and getFlagValue(flags.PriceOverrides)
    local overridePrice = type(overrides) == "table" and overrides[itemName] or nil

    if type(overridePrice) == "number" and overridePrice >= 0 then
        return overridePrice
    end

    return basePrice
end

local function initNetworking()
    if State.Networking then return true end

    State.SharedModules = ReplicatedStorage:FindFirstChild("SharedModules") or ReplicatedStorage:WaitForChild("SharedModules", 5)
    if not State.SharedModules then
        return false, "Waiting SharedModules"
    end

    State.Networking = safeRequire(State.SharedModules:FindFirstChild("Networking") or State.SharedModules:WaitForChild("Networking", 5))
    if not State.Networking then
        return false, "Waiting Networking"
    end

    local flagsFolder = State.SharedModules:FindFirstChild("Flags")
    if flagsFolder then
        State.SeedShopFlags = safeRequire(flagsFolder:FindFirstChild("SeedShopFlags"))
        State.GearShopFlags = safeRequire(flagsFolder:FindFirstChild("GearShopFlags"))
    end

    return true
end

local function getSheckles()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local sheckles = leaderstats and leaderstats:FindFirstChild("Sheckles")
    return sheckles and tonumber(sheckles.Value) or 0
end

local function canSpend(price)
    price = tonumber(price) or 0
    return getSheckles() - (tonumber(Config.MinShecklesToSpend) or 0) >= price
end

local function formatNumber(value)
    value = math.floor(tonumber(value) or 0)
    local text = tostring(value)
    while true do
        local nextText, replaced = text:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
        text = nextText
        if replaced == 0 then break end
    end
    return text
end

local function formatDuration(seconds)
    seconds = math.max(math.floor(tonumber(seconds) or 0), 0)
    local hours = math.floor(seconds / 3600)
    local minutes = math.floor((seconds % 3600) / 60)
    local secs = seconds % 60
    return string.format("%02d:%02d:%02d", hours, minutes, secs)
end

local function updateHudMetrics()
    if not Hud then return end

    local currentSheckles = getSheckles()
    if State.StartSheckles == nil then
        State.StartSheckles = currentSheckles
        State.LastSheckles = currentSheckles
    elseif State.LastSheckles ~= nil then
        local gained = currentSheckles - State.LastSheckles
        if gained > 0 then
            State.TotalEarned = State.TotalEarned + gained
        end
        State.LastSheckles = currentSheckles
    end

    if Hud.Time then
        Hud.Time.Text = "Time: " .. formatDuration(os.clock() - State.StartedAt)
    end

    if Hud.MoneyEarned then
        Hud.MoneyEarned.Text = "Earned: " .. formatNumber(State.TotalEarned) .. " Sheckles"
    end
end

local function isEnabled(enabledTable, itemName)
    enabledTable = type(enabledTable) == "table" and enabledTable or {}
    if enabledTable.All == true then return true end
    return enabledTable[itemName] == true
end

local function sortByPriceAndName(items)
    table.sort(items, function(a, b)
        local priceA = tonumber(a.Price) or 0
        local priceB = tonumber(b.Price) or 0
        if priceA ~= priceB then
            return priceA < priceB
        end
        return tostring(a.Name):lower() < tostring(b.Name):lower()
    end)
end

local function loadShopData()
    if #State.SeedItems > 0 and #State.GearItems > 0 then return end
    if not State.SharedModules then return end

    local seedData = safeRequire(State.SharedModules:FindFirstChild("SeedData"))
    local gearData = safeRequire(State.SharedModules:FindFirstChild("GearShopData"))

    local seeds = {}
    if type(seedData) == "table" then
        for _, item in ipairs(seedData) do
            if item.SeedName and item.RestockShop then
                table.insert(seeds, {
                    Name = item.SeedName,
                    Price = item.PurchasePrice or 0,
                    Order = item.SeedShopDisplayOrder or 0,
                })
            end
        end
    end

    if #seeds == 0 then
        local fallbackSeeds = {
            {"Carrot", 1}, {"Strawberry", 10}, {"Blueberry", 25}, {"Tulip", 40}, {"Tomato", 200},
            {"Apple", 400}, {"Bamboo", 700}, {"Corn", 2500}, {"Cactus", 5000}, {"Pineapple", 10000},
            {"Mushroom", 15000}, {"Green Bean", 20000}, {"Banana", 30000}, {"Grape", 50000},
            {"Coconut", 70000}, {"Mango", 85000}, {"Dragon Fruit", 120000}, {"Acorn", 200000},
            {"Cherry", 250000}, {"Sunflower", 300000}, {"Venus Fly Trap", 400000},
            {"Pomegranate", 2000000}, {"Poison Apple", 400000}, {"Moon Bloom", 7000000},
            {"Dragon's Breath", 9000000},
        }
        for _, item in ipairs(fallbackSeeds) do
            table.insert(seeds, {Name = item[1], Price = item[2]})
        end
    end

    local gears = {}
    if type(gearData) == "table" and type(gearData.Data) == "table" then
        for _, item in ipairs(gearData.Data) do
            if item.ItemName and not item.RobuxOnly and (item.RestockChance or item.EquippableGear) then
                table.insert(gears, {
                    Name = item.ItemName,
                    Price = item.Cost or 0,
                })
            end
        end
    end

    if #gears == 0 then
        local fallbackGears = {
            {"Trowel", 1000}, {"Speed Mushroom", 1500}, {"Jump Mushroom", 1800},
            {"Common Watering Can", 2000}, {"Common Sprinkler", 3000}, {"Sign", 4000},
            {"Shrink Mushroom", 4500}, {"Supersize Mushroom", 4500}, {"Flashbang", 8000},
            {"Lantern", 12000}, {"Invisibility Mushroom", 18000}, {"Teleporter", 18000},
            {"Gnome", 50000}, {"Basic Pot", 60000}, {"Super Watering Can", 250000},
            {"Wheelbarrow", 500000},
        }
        for _, item in ipairs(fallbackGears) do
            table.insert(gears, {Name = item[1], Price = item[2]})
        end
    end

    sortByPriceAndName(seeds)
    sortByPriceAndName(gears)

    State.SeedItems = seeds
    State.GearItems = gears
end

local function getStockFolder(shopName)
    local stockValues = ReplicatedStorage:FindFirstChild("StockValues") or ReplicatedStorage:WaitForChild("StockValues", 3)
    local shopFolder = stockValues and stockValues:FindFirstChild(shopName)
    return shopFolder and shopFolder:FindFirstChild("Items")
end

local function getStock(shopName, itemName)
    local folder = getStockFolder(shopName)
    local valueObject = folder and folder:FindFirstChild(itemName)
    local ok, value = pcall(function()
        return valueObject and tonumber(valueObject.Value) or 0
    end)
    return ok and value or 0
end

local function throttle(actionName, delayTime)
    delayTime = tonumber(delayTime) or 0
    local now = os.clock()
    local last = State.LastRun[actionName] or 0
    local remaining = delayTime - (now - last)
    if remaining > 0 then
        task.wait(remaining)
    end
    State.LastRun[actionName] = os.clock()
end

local function getCharacterRoot()
    local character = LocalPlayer.Character
    local root = character and character:FindFirstChild("HumanoidRootPart")
    return character, root
end

local function getLocalPlot()
    local plotId = LocalPlayer:GetAttribute("PlotId")
    local gardens = workspace:FindFirstChild("Gardens")
    return gardens and gardens:FindFirstChild("Plot" .. tostring(plotId))
end

local function ensureReady()
    startFpsBoost()

    local ok, reason = initNetworking()
    if not ok then return false, reason end

    loadShopData()

    local _, root = getCharacterRoot()
    if not root then return false, "Waiting Character" end
    if not getLocalPlot() then return false, "Waiting Plot" end
    if not ReplicatedStorage:FindFirstChild("StockValues") then return false, "Waiting Stock" end

    return true
end

local function getToolContainers()
    local containers = {}
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then table.insert(containers, backpack) end
    if LocalPlayer.Character then table.insert(containers, LocalPlayer.Character) end
    return containers
end

local function getFruitInventoryCount()
    local fruitCount = tonumber(LocalPlayer:GetAttribute("FruitCount"))
    if fruitCount then
        return fruitCount
    end

    local count = 0
    for _, container in ipairs(getToolContainers()) do
        for _, tool in ipairs(container:GetChildren()) do
            if tool:IsA("Tool") and tool:GetAttribute("FruitName") and tool:GetAttribute("Id") then
                count = count + 1
            end
        end
    end

    return count
end

local function getMaxFruitCapacity()
    return tonumber(LocalPlayer:GetAttribute("MaxFruitCapacity")) or 100
end

local function isFruitInventoryFull()
    if not Config.SellWhenInventoryFull then return false end

    local maxCapacity = getMaxFruitCapacity()
    if maxCapacity <= 0 then return false end

    local buffer = math.max(tonumber(Config.InventorySellBuffer) or 0, 0)
    return getFruitInventoryCount() >= math.max(maxCapacity - buffer, 1)
end

local function normalizeSeedName(value)
    value = tostring(value or ""):lower()
    value = value:gsub("%s*%b[]", "")
    value = value:gsub("%s*%b()", "")
    value = value:gsub("%s+x%d+$", "")
    value = value:gsub("%s+seed$", "")
    value = value:gsub("%s+", " ")
    value = value:gsub("^%s+", ""):gsub("%s+$", "")
    return value
end

local function getProtectedSeedType(value)
    value = normalizeSeedName(value)
    if value == "gold" or value:find("gold", 1, true) ~= nil then
        return "Gold"
    end
    if value == "rainbow"
        or value == "rainbown"
        or value:find("rainbow", 1, true) ~= nil
        or value:find("rainbown", 1, true) ~= nil
    then
        return "Rainbow"
    end
    return nil
end

local function canPlantProtectedSeed(value)
    local protectedType = getProtectedSeedType(value)
    if protectedType == "Gold" then
        return Config.PlantGoldSeed == true
    end
    if protectedType == "Rainbow" then
        return Config.PlantRainbowSeed == true
    end
    return true
end

local function toolMatchesSeed(tool, seedName)
    if not (tool and tool:IsA("Tool")) then return false end
    if tool:GetAttribute("FruitName") or tool:GetAttribute("Id") or tool:GetAttribute("FruitId") then
        return false
    end

    local wanted = normalizeSeedName(seedName)
    if not canPlantProtectedSeed(wanted) or not canPlantProtectedSeed(tool.Name) then
        return false
    end

    local seedTool = tool:GetAttribute("SeedTool")
    if seedTool ~= nil then
        if not canPlantProtectedSeed(seedTool) then
            return false
        end
        return normalizeSeedName(seedTool) == wanted
    end

    if not tostring(tool.Name or ""):lower():find("seed", 1, true) then
        return false
    end

    local toolName = normalizeSeedName(tool.Name)
    return toolName == wanted
end

local function findSeedTool()
    for _, seed in ipairs(State.SeedItems) do
        if isEnabled(Config.SeedEnabled, seed.Name) then
            for _, container in ipairs(getToolContainers()) do
                for _, tool in ipairs(container:GetChildren()) do
                    if toolMatchesSeed(tool, seed.Name) then
                        return seed.Name, tool
                    end
                end
            end
        end
    end
    return nil, nil
end

local function hasEnabledSeedTool()
    local seedName = findSeedTool()
    return seedName ~= nil
end

local function getPlantMounds(plot)
    local mounds = {}
    for _, inst in ipairs(CollectionService:GetTagged("PlantArea")) do
        if inst:IsA("BasePart") and inst:IsDescendantOf(plot) then
            table.insert(mounds, inst)
        end
    end

    if #mounds == 0 then
        local plantableArea = plot:FindFirstChild("PlantableArea")
        if plantableArea then
            for _, inst in ipairs(plantableArea:GetChildren()) do
                if inst:IsA("BasePart") then
                    table.insert(mounds, inst)
                end
            end
        end
    end

    return mounds
end

local function getRootPlantModel(innerModel)
    if not (innerModel and innerModel:IsA("Model")) then return nil end
    local current = innerModel
    local depth = 0
    while current and current ~= workspace and depth < 16 do
        if current:IsA("Model") and current:GetAttribute("OwnerUserId") ~= nil then
            return current
        end
        current = current.Parent
        depth = depth + 1
    end
    return nil
end

local function getExistingPlantPositions()
    local positions = {}
    local seen = {}

    local function addPlantPosition(model)
        if not (model and model:IsA("Model")) then return end
        if seen[model] then return end

        local part = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart", true)
        if part then
            seen[model] = true
            table.insert(positions, part.Position)
        end
    end

    for _, prompt in ipairs(CollectionService:GetTagged("HarvestPrompt")) do
        if prompt:IsA("ProximityPrompt") then
            local anchorPart = prompt.Parent
            local innerModel = anchorPart and anchorPart.Parent
            local rootPlant = innerModel and getRootPlantModel(innerModel)
            if rootPlant and rootPlant:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
                addPlantPosition(rootPlant)
            end
        end
    end

    for _, plant in ipairs(CollectionService:GetTagged("Plant")) do
        if plant:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            addPlantPosition(plant)
        end
    end

    local plot = getLocalPlot()
    if plot then
        for _, descendant in ipairs(plot:GetDescendants()) do
            if descendant:IsA("Model") then
                local hasPlantId = descendant:GetAttribute("PlantId") ~= nil
                local hasFruitId = descendant:GetAttribute("FruitId") ~= nil
                local hasSeedName = descendant:GetAttribute("SeedName") ~= nil
                local ownerId = tonumber(descendant:GetAttribute("OwnerUserId") or descendant:GetAttribute("UserId"))

                if (hasPlantId or hasSeedName)
                    and not hasFruitId
                    and (not ownerId or ownerId == LocalPlayer.UserId)
                then
                    addPlantPosition(descendant)
                end
            end
        end
    end

    return positions
end

local function buildPlantSpots(mounds, plot)
    local spots = {}
    local spacing = 2.0
    local margin = 1.0
    local plotCFrame = plot:GetPivot()

    table.sort(mounds, function(a, b)
        local localA = plotCFrame:PointToObjectSpace(a.Position)
        local localB = plotCFrame:PointToObjectSpace(b.Position)
        if math.abs(localA.X - localB.X) > 0.5 then
            return localA.X < localB.X
        end
        return localA.Z < localB.Z
    end)

    for _, mound in ipairs(mounds) do
        local cf = mound.CFrame
        local size = mound.Size
        local dimensions = {size.X, size.Y, size.Z}
        table.sort(dimensions, function(a, b)
            return a > b
        end)

        local length = dimensions[1]
        local width = dimensions[2]
        local usableX = width - margin * 2
        local usableZ = length - margin * 2

        if usableX > 0 and usableZ > 0 then
            for x = -usableX / 2, usableX / 2, spacing do
                for z = -usableZ / 2, usableZ / 2, spacing do
                    local worldPos
                    if size.X < 1 then
                        worldPos = cf:PointToWorldSpace(Vector3.new(size.X / 2, x, z))
                    elseif size.Y < 1 then
                        worldPos = cf:PointToWorldSpace(Vector3.new(x, size.Y / 2, z))
                    else
                        worldPos = cf:PointToWorldSpace(Vector3.new(x, z, size.Z / 2))
                    end
                    table.insert(spots, worldPos)
                end
            end
        end
    end

    table.sort(spots, function(a, b)
        local localA = plotCFrame:PointToObjectSpace(a)
        local localB = plotCFrame:PointToObjectSpace(b)
        if math.abs(localA.X - localB.X) > 1 then
            return localA.X < localB.X
        end
        return localA.Z < localB.Z
    end)

    return spots
end

local function isSpotOccupied(pos, occupied, spacing)
    spacing = tonumber(spacing) or 1.6
    local threshold = spacing * spacing
    for _, other in ipairs(occupied) do
        local dx = pos.X - other.X
        local dz = pos.Z - other.Z
        if (dx * dx + dz * dz) < threshold then
            return true
        end
    end
    return false
end

local function getEmptyPlantSlotInfos()
    local plot = getLocalPlot()
    if not plot then return nil, "No Plot" end

    local mounds = getPlantMounds(plot)
    if #mounds == 0 then return nil, "No Plant Area" end

    local occupied = getExistingPlantPositions()
    local occupiedSpacing = tonumber(Config.PlantOccupiedSpacing) or 2.0
    local emptySlots = {}
    for _, spot in ipairs(buildPlantSpots(mounds, plot)) do
        if not isSpotOccupied(spot, occupied, occupiedSpacing) then
            table.insert(emptySlots, spot)
        end
    end

    if #emptySlots == 0 then return nil, "Garden Full" end

    local plotCFrame = plot:GetPivot()
    local slotInfos = {}
    for _, pos in ipairs(emptySlots) do
        local localPos = plotCFrame:PointToObjectSpace(pos)
        table.insert(slotInfos, {
            pos = pos,
            localX = localPos.X,
            localZ = localPos.Z,
        })
    end

    local colRadius = 1.0
    local uniqueXs = {}
    for _, info in ipairs(slotInfos) do
        table.insert(uniqueXs, info.localX)
    end
    table.sort(uniqueXs)

    local columns = {}
    for _, x in ipairs(uniqueXs) do
        local found = false
        for _, colX in ipairs(columns) do
            if math.abs(x - colX) <= colRadius then
                found = true
                break
            end
        end
        if not found then
            table.insert(columns, x)
        end
    end
    table.sort(columns)

    for _, info in ipairs(slotInfos) do
        local bestColIdx = 1
        local minDistance = math.huge
        for idx, colX in ipairs(columns) do
            local distance = math.abs(info.localX - colX)
            if distance < minDistance then
                minDistance = distance
                bestColIdx = idx
            end
        end
        info.colIdx = bestColIdx
    end

    table.sort(slotInfos, function(a, b)
        if a.colIdx ~= b.colIdx then
            return a.colIdx < b.colIdx
        end
        return a.localZ < b.localZ
    end)

    return slotInfos
end

local function tweenTo(position, yOffset)
    local _, root = getCharacterRoot()
    if not root then return false end

    local targetCF = CFrame.new(position) * CFrame.new(0, tonumber(yOffset) or 0, 0)
    local distance = (root.Position - targetCF.Position).Magnitude
    if distance <= 3 then
        root.CFrame = targetCF
        return true
    end

    local speed = tonumber(Config.PlantTweenSpeed) or 50
    local duration = math.clamp(distance / speed, 0.2, 2.5)
    local tween = TweenService:Create(root, TweenInfo.new(duration, Enum.EasingStyle.Linear), {
        CFrame = targetCF,
    })
    tween:Play()
    tween.Completed:Wait()
    return true
end

local function plantSeedsCycle()
    if State.MovementLocked then return false end

    if not hasEnabledSeedTool() then
        setStatus("No Seed In Backpack")
        return false
    end

    local slotInfos, reason = getEmptyPlantSlotInfos()
    if not slotInfos then
        setStatus(reason or "No Plant Spot")
        return false
    end

    State.MovementLocked = true
    local planted = 0
    local maxPlant = tonumber(Config.MaxPlantPerCycle) or 30

    for _, info in ipairs(slotInfos) do
        if planted >= maxPlant then break end

        local seedName, seedTool = findSeedTool()
        if not seedName then
            if planted == 0 then
                setStatus("No Seed In Backpack")
            end
            break
        end

        local ok = pcall(function()
            setStatus("Planting " .. seedName)
            tweenTo(info.pos, tonumber(Config.PlantYOffset) or 3.5)

            local character = LocalPlayer.Character
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
            if humanoid and seedTool.Parent ~= character then
                humanoid:EquipTool(seedTool)
                task.wait(0.15)
            end

            throttle("PlantSeed", Config.PlantDelay)
            local seedKey = seedTool:GetAttribute("SeedTool") or seedName:gsub(" Seed$", "") or seedName
            State.Networking.Plant.PlantSeed:Fire(info.pos, seedKey, seedTool)
        end)

        if ok then
            planted = planted + 1
        end

        task.wait(0.05)
    end

    State.MovementLocked = false
    return planted > 0
end

local function buyFromShop(shopName, actionName, items, enabledTable, remote, maxPerCycle)
    if not remote then return 0, "Missing Remote" end

    local bought = 0
    local sawStock = false
    local cheapestStocked = nil
    for _, item in ipairs(items) do
        if bought >= maxPerCycle then break end
        if isEnabled(enabledTable, item.Name) then
            local stock = getStock(shopName, item.Name)
            if stock > 0 then
                sawStock = true
                local price = resolveShopPrice(shopName, item.Name, item.Price)
                if not cheapestStocked or price < cheapestStocked.Price then
                    cheapestStocked = {
                        Name = item.Name,
                        Price = price,
                        Stock = stock,
                    }
                end

                if canSpend(price) then
                    setStatus(actionName .. " " .. item.Name .. " | " .. formatNumber(price) .. " Sheckles")
                    throttle(actionName, Config.BuyDelay)
                    pcall(function()
                        remote:Fire(item.Name)
                    end)
                    bought = bought + 1
                    task.wait(0.02)
                end
            end
        end
    end

    if bought == 0 then
        if sawStock and cheapestStocked then
            return 0, "Need " .. formatNumber(cheapestStocked.Price) .. " Sheckles for " .. cheapestStocked.Name
        end
        return 0, "No " .. shopName .. " Stock"
    end

    return bought
end

local function buySeeds()
    if not Config.AutoBuySeeds then return 0 end
    if Config.StockpileSeeds == false and hasEnabledSeedTool() then return 0 end
    local seedShop = State.Networking.SeedShop
    local remote = seedShop and seedShop.PurchaseSeed
    return buyFromShop("SeedShop", "Buying Seed", State.SeedItems, Config.SeedEnabled, remote, tonumber(Config.MaxSeedBuysPerCycle) or 5)
end

local function buyGears()
    if not Config.AutoBuyGears then return 0 end
    local gearShop = State.Networking.GearShop
    local remote = gearShop and gearShop.PurchaseGear
    return buyFromShop("GearShop", "Buying Gear", State.GearItems, Config.GearEnabled, remote, tonumber(Config.MaxGearBuysPerCycle) or 3)
end

local function getHarvestModelFromPrompt(prompt)
    if not (prompt and prompt:IsA("ProximityPrompt")) then return nil end
    local promptParent = prompt.Parent
    if not promptParent then return nil end

    local harvestModel = promptParent:FindFirstAncestorWhichIsA("Model")
    if harvestModel and harvestModel:GetAttribute("PlantId") then
        return harvestModel
    end

    local current = promptParent.Parent
    local depth = 0
    while current and current ~= workspace and depth < 12 do
        if current:IsA("Model") and current:GetAttribute("PlantId") then
            return current
        end
        current = current.Parent
        depth = depth + 1
    end

    return nil
end

local function getFruitName(harvestModel)
    if not harvestModel then return "" end
    return tostring(
        harvestModel:GetAttribute("CorePartName")
        or harvestModel:GetAttribute("SeedName")
        or harvestModel.Name
        or ""
    )
end

local function shouldUseFruit(fruitName)
    local enabled = Config.FruitEnabled or {All = true}
    if enabled.All == true then return true end

    fruitName = tostring(fruitName or ""):lower()
    for selectedName, value in pairs(enabled) do
        if value == true then
            selectedName = tostring(selectedName):lower()
            if fruitName == selectedName or fruitName:find(selectedName, 1, true) or selectedName:find(fruitName, 1, true) then
                return true
            end
        end
    end

    return false
end

local function collectFruit(silentWhenEmpty)
    if not Config.AutoCollectFruit then return 0 end

    local garden = State.Networking.Garden
    local remote = garden and garden.CollectFruit
    if not remote then return 0 end

    local collected = 0
    local maxCollect = tonumber(Config.MaxCollectPerCycle) or 40

    for _, prompt in ipairs(CollectionService:GetTagged("HarvestPrompt")) do
        if collected >= maxCollect then break end
        if prompt:IsA("ProximityPrompt") and prompt:IsDescendantOf(workspace) and prompt.Enabled and not prompt:GetAttribute("VxezeKaitunCollected") then
            local harvestModel = getHarvestModelFromPrompt(prompt)
            local plantId = harvestModel and harvestModel:GetAttribute("PlantId")
            if plantId then
                local ownerId = tonumber(harvestModel:GetAttribute("UserId") or harvestModel:GetAttribute("OwnerUserId"))
                local fruitName = getFruitName(harvestModel)
                if (not ownerId or ownerId == LocalPlayer.UserId) and shouldUseFruit(fruitName) then
                    prompt:SetAttribute("VxezeKaitunCollected", true)
                    task.delay(1.5, function()
                        if prompt and prompt:IsDescendantOf(workspace) then
                            prompt:SetAttribute("VxezeKaitunCollected", nil)
                        end
                    end)

                    setStatus("Collecting Fruit")
                    throttle("CollectFruit", Config.CollectDelay)
                    local fruitId = harvestModel:GetAttribute("FruitId") or ""
                    pcall(function()
                        remote:Fire(tostring(plantId), tostring(fruitId))
                    end)
                    collected = collected + 1
                    task.wait(0.02)
                end
            end
        end
    end

    if collected == 0 and not silentWhenEmpty then
        setStatus("Waiting Fruit")
    end
    return collected
end

local function getFruitTools()
    local tools = {}
    local seen = {}

    local function addTool(tool)
        if tool and tool:IsA("Tool") and tool:GetAttribute("FruitName") and tool:GetAttribute("Id") and not seen[tool] then
            if shouldUseFruit(tool:GetAttribute("FruitName")) then
                seen[tool] = true
                table.insert(tools, tool)
            end
        end
    end

    for _, container in ipairs(getToolContainers()) do
        for _, tool in ipairs(container:GetChildren()) do
            addTool(tool)
        end
    end

    return tools
end

local function sellFruit(forceSell)
    if not Config.AutoSellFruit then return 0 end
    if State.SellLocked then return 0 end
    State.SellLocked = true

    local tools = getFruitTools()
    if not forceSell and #tools < (tonumber(Config.SellThreshold) or 5) then
        State.SellLocked = false
        return 0
    end

    local npcs = State.Networking.NPCS
    if not npcs then
        State.SellLocked = false
        return 0
    end

    if Config.FruitEnabled and Config.FruitEnabled.All == true and npcs.SellAll then
        if forceSell then
            setStatus("Inventory Near Full - Selling")
        else
            setStatus("Selling Fruit")
        end
        throttle("SellAll", math.max(tonumber(Config.SellDelay) or 0.1, 0.35))
        pcall(function()
            npcs.SellAll:Fire()
        end)
        State.SellLocked = false
        return #tools
    end

    local sold = 0
    local maxSell = tonumber(Config.MaxSellPerCycle) or 30
    for _, tool in ipairs(tools) do
        if sold >= maxSell then break end
        local fruitId = tool:GetAttribute("Id")
        if fruitId and npcs.SellFruit then
            setStatus("Selling " .. tostring(tool:GetAttribute("FruitName")))
            throttle("SellFruit", Config.SellDelay)
            local ok, result = pcall(function()
                return npcs.SellFruit:Fire(tostring(fruitId))
            end)
            if ok and result and result.Success and tool.Parent then
                pcall(function()
                    tool:Destroy()
                end)
            end
            sold = sold + 1
            task.wait(0.02)
        end
    end

    State.SellLocked = false
    return sold
end

local function getSeedPackFolder()
    local map = workspace:FindFirstChild("Map")
    return map and map:FindFirstChild("SeedPackSpawnServerLocations")
end

local function shouldCollectSeedPack(part)
    if not (part and part:IsA("BasePart")) then return false end
    local isGold = part:GetAttribute("GoldSeed") == true
    local isRainbow = part:GetAttribute("RainbowSeed") == true
    return (isGold and Config.CollectGoldSeed) or (isRainbow and Config.CollectRainbowSeed)
end

local function collectSeedPacks()
    if not Config.AutoCollectSeedPack then return 0 end
    if State.MovementLocked then return 0 end

    local folder = getSeedPackFolder()
    if not folder then return 0 end

    local collected = 0
    for _, part in ipairs(folder:GetChildren()) do
        if shouldCollectSeedPack(part) and not part:GetAttribute("VxezeKaitunCollecting") then
            local _, root = getCharacterRoot()
            if not root then return collected end

            State.MovementLocked = true
            part:SetAttribute("VxezeKaitunCollecting", true)
            setStatus("Collecting SeedPack")

            pcall(function()
                local oldCF = root.CFrame
                root.CFrame = part.CFrame * CFrame.new(0, 2.5, 0)
                task.wait(0.1)

                local prompt = part:FindFirstChildWhichIsA("ProximityPrompt", true)
                if prompt and fireproximityprompt then
                    fireproximityprompt(prompt)
                    task.wait(0.1)
                end

                root.CFrame = oldCF
            end)

            part:SetAttribute("VxezeKaitunCollecting", nil)
            State.MovementLocked = false
            collected = collected + 1
        end
    end

    return collected
end

local function workerWait(value, fallback)
    value = tonumber(value)
    if not value then value = fallback end
    return math.max(value or 0.1, 0.03)
end

local function startWorker(name, workerFn)
    State.ActiveWorkers = State.ActiveWorkers + 1
    task.spawn(function()
        while Config.Enabled do
            local ready, reason = ensureReady()
            if not ready then
                setStatus(reason or "Init")
                task.wait(1)
            else
                local ok, delayTime = pcall(workerFn)
                if not ok then
                    if name == "Plant" or name == "SeedPack" then
                        State.MovementLocked = false
                    end
                    if name == "Sell" then
                        State.SellLocked = false
                    end
                    setStatus(name .. " Error")
                    delayTime = 1
                end

                task.wait(workerWait(delayTime, tonumber(Config.IdleDelay) or 0.35))
            end
        end
        State.ActiveWorkers = math.max(State.ActiveWorkers - 1, 0)
    end)
end

local function startKaitunWorkers()
    if State.WorkersStarted then return end
    State.WorkersStarted = true
    setStatus("Running Parallel")

    startWorker("Hud", function()
        updateHudMetrics()
        return 1
    end)

    startWorker("SeedPack", function()
        local collected = collectSeedPacks()
        return collected > 0 and Config.LoopDelay or 0.5
    end)

    startWorker("Sell", function()
        if isFruitInventoryFull() then
            local sold = sellFruit(true)
            return sold > 0 and Config.LoopDelay or 0.08
        end

        local sold = sellFruit(false)
        return sold > 0 and Config.LoopDelay or 0.25
    end)

    startWorker("Collect", function()
        local collected = collectFruit(true)
        if collected > 0 then
            if isFruitInventoryFull() then
                sellFruit(true)
            end
            return Config.LoopDelay
        end
        return 0.18
    end)

    startWorker("BuySeed", function()
        local bought, reason = buySeeds()
        if bought and bought > 0 then
            return Config.LoopDelay
        end
        if reason and reason ~= "No SeedShop Stock" then
            setStatus(reason)
        end
        return 0.25
    end)

    startWorker("Plant", function()
        if State.MovementLocked then
            return 0.1
        end
        if plantSeedsCycle() then
            return Config.LoopDelay
        end
        return hasEnabledSeedTool() and 0.2 or 0.35
    end)

    startWorker("BuyGear", function()
        if not Config.AutoBuyGears then
            return 1
        end

        if tostring(Config.GearPriority) ~= "BeforePlant" and Config.AutoBuySeeds and not hasEnabledSeedTool() then
            return 0.5
        end

        local bought = buyGears()
        return bought and bought > 0 and Config.LoopDelay or 0.5
    end)
end

local function runKaitun()
    setStatus("Init")
    startAntiAfk()

    while Config.Enabled do
        local ready, reason = ensureReady()
        if not ready then
            setStatus(reason or "Init")
            task.wait(1)
        else
            startKaitunWorkers()
            clearTemporaryVfx()
            task.wait(1)
        end
    end

    setStatus("Disabled")
    getgenv().VxezeKaitunRunning = false
end

task.spawn(runKaitun)
