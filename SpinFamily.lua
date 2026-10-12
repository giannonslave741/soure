repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Studio = {
    ["Select Slots"] = 'A', -- B, C
    ["Family"] = {
        ["Roll"] = true,
        ["Select"] = { "Fritz", 'Helos' }, -- Wiki Aotr ( Family )
        ["Buy Spin"] = true, -- Buy Spins until you run out of Gems
        ["Teleport"] = false -- Stogare FULL Slots
    },
    ["Webhook"] = {
        ["Url"] = "", -- Url
        ["Ping Notify"] = "<@>",
    },
    ["Lock Fps"] = 240
}

-- BUG FOUND live on the new test account's executor: `LPH_NO_VIRTUALIZE` doesn't exist on this
-- executor at all (type(LPH_NO_VIRTUALIZE) == "nil"), so `LPH_NO_VIRTUALIZE(function(t) ... end)`
-- threw "attempt to call a nil value" the moment the script ran, breaking v1/v2/v3 (string-join/
-- table-insert helpers used everywhere below, including inside the Roll loop's webhook/storage
-- logic) and killing the whole script. Fallback to a plain identity wrapper when it's missing so this
-- still works on executors without Luraph's anti-devirtualization marker, while executors that DO
-- have it keep using the real one unchanged.
LPH_NO_VIRTUALIZE = LPH_NO_VIRTUALIZE or function(f) return f end

local v1 = LPH_NO_VIRTUALIZE(function(t)
    local n = #t
    if n == 0 then return "" end
    while n > 1 do
        local m = 0
        for i = 1, n - 1, 2 do
            m = m + 1
            t[m] = t[i] .. t[i + 1]
        end
        if n % 2 == 1 then
            m = m + 1
            t[m] = t[n]
        end
        for i = m + 1, n do t[i] = nil end
        n = m
    end
    return t[1]
end)

local v2 = LPH_NO_VIRTUALIZE(function(t, sep)
    local n = #t
    if n == 0 then return "" end
    local o = {}
    for i = 1, n do
        o[#o + 1] = t[i]
        if i < n then o[#o + 1] = sep end
    end
    return v1(o)
end)

local v3 = LPH_NO_VIRTUALIZE(function(t, x) t[#t + 1] = x end)

local v4 = game.Players.LocalPlayer
local v5 = cloneref(game:GetService('TeleportService'))
local v6 = cloneref(game:GetService('HttpService'))
local v91 = request or http_request or (type(http) == "table" and http.request) or (type(syn) == "table" and syn.request)

if setfpscap then
    task.spawn(function()
        while true do
            if getfpscap() > getgenv().Studio["Lock Fps"] then
                setfpscap(getgenv().Studio["Lock Fps"] or 60)
            end
            task.wait(1)
        end
    end)
end

-- ANTI-AFK (user: "làm thêm cho nó Anti AFK đi"): the standard VirtualUser trick - Roblox fires
-- LocalPlayer.Idled after ~20min with no real input; CaptureController + a harmless no-op click
-- resets that timer without moving the camera/character or touching anything else on screen.
pcall(function()
    local VirtualUser = cloneref(game:GetService("VirtualUser"))
    v4.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)

SetStatus = function()
    print("_nguoitinhcuae")
end
UpdateFamilyStats = function() end

if not getgenv().Hide_UI then
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local Lighting = game:GetService("Lighting")
    local player = Players.LocalPlayer
    local blur = Instance.new("BlurEffect", Lighting)
    blur.Size = 0
    TweenService:Create(blur, TweenInfo.new(0.5), { Size = 40 }):Play()
    task.delay(2, function()
        if blur then blur:Destroy() end
    end)

    local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    screenGui.Name = "VxezeLoader"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 2147483647
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local frame = Instance.new("Frame", screenGui)
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1

    local bg = Instance.new("Frame", frame)
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bg.BackgroundTransparency = 1
    TweenService:Create(bg, TweenInfo.new(0.5), { BackgroundTransparency = 0 }):Play()

    local getTitleScale = function()
        local s = workspace.CurrentCamera.ViewportSize
        return math.clamp(math.min(s.X, s.Y) / 600, 0.3, 0.5)
    end

    local gradColor = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 191, 255)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 200, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200)),
    })

    local statusGradColor = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 180, 220)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(190, 200, 230)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(210, 210, 220)),
    })

    local makeLabel = function(parent, pos, size)
        local t = Instance.new("TextLabel", parent)
        t.Font = Enum.Font.FredokaOne
        t.TextColor3 = Color3.fromRGB(255, 255, 255)
        t.TextStrokeColor3 = Color3.fromRGB(0, 100, 150)
        t.TextStrokeTransparency = 0.3
        t.TextTransparency = 1
        t.BackgroundTransparency = 1
        t.Position = pos
        t.Size = size
        t.TextScaled = true
        local g = Instance.new("UIGradient", t)
        g.Color = gradColor
        g.Rotation = 90
        return t
    end

    local makeStatusLabel = function(parent, pos, size)
        local t = Instance.new("TextLabel", parent)
        t.Font = Enum.Font.FredokaOne
        t.TextColor3 = Color3.fromRGB(230, 230, 250)
        t.TextTransparency = 1
        t.BackgroundTransparency = 1
        t.Position = pos
        t.Size = size
        t.TextScaled = true
        t.TextXAlignment = Enum.TextXAlignment.Center
        t.TextYAlignment = Enum.TextYAlignment.Center
        local g = Instance.new("UIGradient", t)
        g.Color = statusGradColor
        g.Rotation = 90
        return t
    end

    local formatNumber = function(num)
        if num == nil then return "0" end
        if type(num) ~= "number" then num = tonumber(num) or 0 end
        if num >= 1e9 then
            local bil = num / 1e9
            return string.format(bil == math.floor(bil) and "%.0fB" or "%.1fB", bil)
        elseif num >= 1e6 then
            local mil = num / 1e6
            return string.format(mil == math.floor(mil) and "%.0fM" or "%.1fM", mil)
        elseif num >= 1e3 then
            local thou = num / 1e3
            return string.format(thou == math.floor(thou) and "%.0fK" or "%.1fK", thou)
        else
            return tostring(num)
        end
    end

    local logo = Instance.new("ImageLabel", frame)
    logo.Image = "rbxassetid://104363488394469"
    logo.BackgroundTransparency = 1
    logo.AnchorPoint = Vector2.new(0.5, 0.5)
    logo.Position = UDim2.new(0.5, 0, 0.3, 0)
    logo.Size = UDim2.new(getTitleScale(), 0, getTitleScale(), 0)
    logo.ImageTransparency = 1
    Instance.new("UIAspectRatioConstraint", logo).AspectRatio = 1
    TweenService:Create(logo, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        { ImageTransparency = 0 }):Play()

    local titleText = makeLabel(frame, UDim2.new(0.5, 0, 0.52, 0), UDim2.new(0.5, 0, 0.09, 0))
    titleText.Text = "Vxeze Hub"
    titleText.AnchorPoint = Vector2.new(0.5, 0.5)
    TweenService:Create(titleText, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        { TextTransparency = 0 }):Play()

    local statusText = makeStatusLabel(frame, UDim2.new(0.5, 0, 0.66, 0), UDim2.new(0.55, 0, 0.05, 0))
    statusText.Text = "Loading..."
    statusText.AnchorPoint = Vector2.new(0.5, 0.5)
    statusText.TextTransparency = 1

    SetStatus = function(newStatus)
        if not newStatus or newStatus == "" then
            statusText.Text = ""
            return
        end
        if statusText.Text == newStatus then return end
        statusText.Text = newStatus
        if statusText.TextTransparency == 0 then
            local fadeOut = TweenService:Create(statusText, TweenInfo.new(0.15), { TextTransparency = 1 })
            fadeOut:Play()
            fadeOut.Completed:Wait()
        end
        TweenService:Create(statusText, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            { TextTransparency = 0 }):Play()
    end

    task.wait(0.2)
    TweenService:Create(statusText, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        { TextTransparency = 0 }):Play()

    local statsContainer = Instance.new("Frame", frame)
    statsContainer.Size = UDim2.new(0.7, 0, 0.05, 0)
    statsContainer.Position = UDim2.new(0.5, 0, 0.82, 0)
    statsContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    statsContainer.BackgroundTransparency = 1

    local v104 = makeLabel(statsContainer, UDim2.new(0, 0, 0, 0), UDim2.new(0.33, 0, 1, 0))
    local v105 = makeLabel(statsContainer, UDim2.new(0.335, 0, 0, 0), UDim2.new(0.33, 0, 1, 0))
    local v106 = makeLabel(statsContainer, UDim2.new(0.67, 0, 0, 0), UDim2.new(0.33, 0, 1, 0))

    local v107, v108, v109

    local v110 = function()
        local v111 = _nguoitinhcuaeZ
        if not v111 then return end

        local v112 = v111.CURRENT_FAMILY
        if v112 ~= v107 then
            v104.Text = "Family: " .. tostring(v112 or "Unknown")
            v107 = v112
        end

        local v113 = v111.DATA and v111.DATA.Slots and v111.DATA.Slots[v111.CURRENT_SLOT]
        local v114 = v113 and v113.Currency and v113.Currency.Gems or 0
        if v114 ~= v108 then
            v105.Text = "Gems: " .. formatNumber(v114)
            v108 = v114
        end

        local v115 = (v111.CURRENT_SPINS or 0) + (v111.CURRENT_EXTRA or 0)
        if v115 ~= v109 then
            v106.Text = "Spin Left: " .. formatNumber(v115)
            v109 = v115
        end
    end
    UpdateFamilyStats = v110

    local updateLoop = task.spawn(function()
        while true do
            task.wait(1)
            pcall(v110)
        end
    end)

    task.wait(0.2)
    TweenService:Create(v104, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        { TextTransparency = 0 }):Play()
    task.wait(0.1)
    TweenService:Create(v105, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        { TextTransparency = 0 }):Play()
    task.wait(0.1)
    TweenService:Create(v106, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        { TextTransparency = 0 }):Play()

    local discordText = Instance.new("TextLabel", frame)
    discordText.Text = "dsc.gg/vxezehub"
    discordText.Font = Enum.Font.GothamMedium
    discordText.TextColor3 = Color3.fromRGB(150, 150, 170)
    discordText.TextSize = 14
    discordText.TextTransparency = 0.3
    discordText.BackgroundTransparency = 1
    discordText.AnchorPoint = Vector2.new(0, 1)
    discordText.Position = UDim2.new(0.02, 0, 0.98, 0)
    discordText.Size = UDim2.new(0.3, 0, 0.05, 0)
    discordText.TextXAlignment = Enum.TextXAlignment.Left
    discordText.TextScaled = true

    task.wait(0.8)
    TweenService:Create(discordText, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        { TextTransparency = 0 }):Play()

    if setclipboard then
        setclipboard("dsc.gg/vxezehub")
    elseif toclipboard then
        toclipboard("dsc.gg/vxezehub")
    end

    screenGui.Destroying:Connect(function()
        if updateLoop then task.cancel(updateLoop) end
    end)
end
-- === end GUI.lua ===

SetStatus("Waiting for Loading Screen...")
local v7 = tick()
repeat
    wait()
until (v4.PlayerGui:FindFirstChild("Fullscreen") and v4.PlayerGui.Fullscreen:FindFirstChild("Loading_Screen") and v4.PlayerGui.Fullscreen.Loading_Screen.Visible == false) or (function()
        if (tick() - v7) >= 15 then
            return true
        end
    end)()

SetStatus("Waiting for game data...")
repeat wait() until game.ReplicatedStorage:FindFirstChild("Assets") and game.ReplicatedStorage.Assets:FindFirstChild("Remotes")

_nguoitinhcuaeZ = {}

_nguoitinhcuaeZ.GET = function(...)
    return game.ReplicatedStorage.Assets.Remotes.GET:InvokeServer(...)
end
_nguoitinhcuaeZ.POST = function(...)
    return game.ReplicatedStorage.Assets.Remotes.POST:FireServer(...)
end

local v8 = function(v9)
    if not v9 then return end
    _nguoitinhcuaeZ.DATA = v9
    _nguoitinhcuaeZ.CURRENT_SLOT = v9.Current_Slot
    _nguoitinhcuaeZ.CURRENT_SPINS = v9.Spins or 0
    _nguoitinhcuaeZ.CURRENT_EXTRA = v9.Extra or 0
    local v10 = v9.Current_Slot and v9.Slots and v9.Slots[v9.Current_Slot]
    _nguoitinhcuaeZ.CURRENT_FAMILY = v10 and v10.Avatar and v10.Avatar.Family or "Unknown"
    UpdateFamilyStats()
end

_nguoitinhcuaeZ.DATA = nil
task.spawn(function()
    while true do
        local v11, v12 = pcall(_nguoitinhcuaeZ.GET, "Functions", "Layout", {})
        if v11 then
            v8(v12)
        end
        task.wait(10)
    end
end)
SetStatus("Loading Layout data...")
while _nguoitinhcuaeZ.DATA == nil do
    local v13, v14 = pcall(_nguoitinhcuaeZ.GET, "Functions", "Layout", {})
    if v13 then
        v8(v14)
    end
    task.wait(0.5)
end
SetStatus("Ready!")

_nguoitinhcuaeZ.LOGO =
'https://cdn.discordapp.com/attachments/1452263532489080924/1475940850105319495/EAAB692B-49F8-4132-972F-9BF3C1195E1C.png?ex=69f10d88&is=69efbc08&hm=a64ca084d9f7eecfabdea324f89419d3f1b0a3411a55f621f55e12c2a13f7e85&'

_nguoitinhcuaeZ.SEND_WEBHOOK = function(v15, v16, v17)
    local v18 = getgenv().Studio["Webhook"]["Url"]
    if not v18 or v18 == "" then
        return
    end
    local v19 = { {
        name = "Family Data",
        value = '```c\nFound : ' ..
        tostring(v15) .. (v16 and v16 ~= "" and (' (' .. tostring(v16) .. ')') or '') .. '```',
        inline = false
    } }
    if v17 ~= nil and v17 ~= "" then
        v3(v19, {
            name = "Storage",
            value = '```c\n' .. tostring(v17) .. '```',
            inline = false
        })
    end
    local v20 = {
        content = getgenv().Studio["Webhook"]["Ping Notify"],
        username = "W SCRIPT HUB",
        avatar_url = _nguoitinhcuaeZ.LOGO,
        embeds = { {
            title = "AOTR - Family Rolled!",
            description = "**Character:** ||" .. v4.Name .. "||",
            color = 11400703,
            fields = v19,
            thumbnail = { url = _nguoitinhcuaeZ.LOGO },
            footer = {
                text = "- Vxeze Hub : AOTR Kaitun | " .. os.date("%H:%M:%S"),
                icon_url = _nguoitinhcuaeZ.LOGO
            }
        } }
    }
    local v90a, v90b = pcall(v91, {
        Url = v18,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json" },
        Body = v6:JSONEncode(v20)
    })
    if not v90a then
        warn("[Vxeze] SEND_WEBHOOK failed: " .. tostring(v90b))
    end
end

_nguoitinhcuaeZ.WH_CIPHER_KEY = "Cr4ckthibucakt"
_nguoitinhcuaeZ.WH_SECRET_KEY = "_nguoitinhcuaeZ"
_nguoitinhcuaeZ.WH_TOKEN = "_nguoitinhcuaeX" .. string.sub("crackcailozm", 1, 12)

_nguoitinhcuaeZ.WH_RC4 = function(v21, v22)
    local v23 = {}
    for i = 0, 255 do v23[i] = i end
    local v24 = 0
    for i = 0, 255 do
        v24 = (v24 + v23[i] + string.byte(v22, (i % #v22) + 1)) % 256
        v23[i], v23[v24] = v23[v24], v23[i]
    end
    local v25 = {}
    local v26, v27 = 0, 0
    for n = 1, #v21 do
        v26 = (v26 + 1) % 256
        v27 = (v27 + v23[v26]) % 256
        v23[v26], v23[v27] = v23[v27], v23[v26]
        v25[n] = string.char(bit32.bxor(string.byte(v21, n), v23[(v23[v26] + v23[v27]) % 256]))
    end
    return v1(v25)
end

_nguoitinhcuaeZ.WH_HEX = function(v28)
    local v29 = {}
    local v30 = "0123456789abcdef"
    for i = 1, #v28 do
        local v31 = string.byte(v28, i)
        local v32 = math.floor(v31 / 16) + 1
        local v33 = (v31 % 16) + 1
        v29[i] = string.sub(v30, v32, v32) .. string.sub(v30, v33, v33)
    end
    return v1(v29)
end

_nguoitinhcuaeZ.WH_TIME_BUCKET = function(v34)
    return tostring(math.floor(v34 / 30))
end

_nguoitinhcuaeZ.WH_ENCRYPT = function(v35, v36)
    local v37, v38 = pcall(function() return v6:JSONEncode(v35) end)
    if not v37 then return nil end
    local v39 = _nguoitinhcuaeZ.WH_CIPHER_KEY .. _nguoitinhcuaeZ.WH_SECRET_KEY .. "wh" .. _nguoitinhcuaeZ.WH_TIME_BUCKET(v36)
    return _nguoitinhcuaeZ.WH_HEX(_nguoitinhcuaeZ.WH_RC4(v38, v39))
end

_nguoitinhcuaeZ.SEND_WEBHOOK2 = function(v40, v41, v42)
    local v43 = os.time()
    local v44 = _nguoitinhcuaeZ.WH_ENCRYPT({
        type = "AOTR",
        event = "family_rolled",
        data = {
            family = tostring(v40 or ""),
            status = tostring(v41 or ""),
            storage = tostring(v42 or ""),
            character = v4.Name
        }
    }, v43)
    if not v44 then return end
    if not v91 then
        warn("[Vxeze] SEND_WEBHOOK2 failed: no 'request' function available on this executor")
        return
    end
    local v92a, v92b = pcall(v91, {
        Url = "https://vxezehub.xyz/api/webhook/event",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["X-VX-Token"] = _nguoitinhcuaeZ.WH_TOKEN
        },
        Body = v6:JSONEncode({ d = v44, t = v43 })
    })
    if not v92a then
        warn("[Vxeze] SEND_WEBHOOK2 request error: " .. tostring(v92b))
        return
    end
    if type(v92b) ~= "table" then
        warn("[Vxeze] SEND_WEBHOOK2 unexpected response: " .. tostring(v92b))
        return
    end
    local v92c = v92b.StatusCode or v92b.status_code or v92b.Status or 0
    local v92d = v92b.Body or v92b.body or ""
    if v92c ~= 200 then
        warn("[Vxeze] SEND_WEBHOOK2 HTTP " .. tostring(v92c) .. ": " .. tostring(v92d))
        return
    end
    local v92e, v92f = pcall(function() return v6:JSONDecode(v92d) end)
    if v92e and type(v92f) == "table" and v92f.ok == false then
        warn("[Vxeze] SEND_WEBHOOK2 rejected by server: " .. tostring(v92f.msg or v92d))
    end
end

if game.PlaceId == 13379208636 then
    _nguoitinhcuaeZ.STORAGE = {}
    do
        local v45 = _nguoitinhcuaeZ.DATA and _nguoitinhcuaeZ.DATA.Slots and
        _nguoitinhcuaeZ.DATA.Slots[_nguoitinhcuaeZ.CURRENT_SLOT]
        local v46 = v45 and v45.Inventory and v45.Inventory.Families
        if v46 then for _, v47 in ipairs(v46) do v3(_nguoitinhcuaeZ.STORAGE, v47) end end
    end

    local v48 = function()
        if #_nguoitinhcuaeZ.STORAGE == 0 then return "(empty)" end
        return v2(_nguoitinhcuaeZ.STORAGE, ", ")
    end

    local v49 = function()
        local v50 = _nguoitinhcuaeZ.DATA
        local v51 = v50 and v50.Slots and v50.Slots[v50.Current_Slot]
        local v52 = 1
        if v50 and v50.Gamepasses and table.find(v50.Gamepasses, "Family_Bag") then
            v52 = 11
        end
        local v53 = (v51 and v51.Extra_Slots and v51.Extra_Slots.Family) or 0
        return v52 + v53
    end
    _nguoitinhcuaeZ.STORAGE_CAPACITY = v49

    local v54 = function()
        if #_nguoitinhcuaeZ.STORAGE >= v49() then
            return false, "full"
        end
        local v55, v56, v57, v58 = pcall(_nguoitinhcuaeZ.GET, "Family", "Store")
        if v55 and v56 == true and v57 ~= nil then
            v3(_nguoitinhcuaeZ.STORAGE, v57)
            _nguoitinhcuaeZ.CURRENT_FAMILY = v58
            return true, v57
        end
        return false
    end

    local v59 = function(v60)
        local v61, v62, v63, v64 = pcall(_nguoitinhcuaeZ.GET, "Family", "Swap", v60)
        if v61 and v62 == true then
            if v63 then v3(_nguoitinhcuaeZ.STORAGE, v63) end
            for i, v in ipairs(_nguoitinhcuaeZ.STORAGE) do
                if v == v64 then
                    table.remove(_nguoitinhcuaeZ.STORAGE, i)
                    break
                end
            end
            _nguoitinhcuaeZ.CURRENT_FAMILY = v64
            return true
        end
        return false
    end
    _nguoitinhcuaeZ.SWAP_TO_FAMILY = v59

    local function v93()
        local v94 = getgenv().Studio["Family"]["Select"]
        local v95, v96 = {}, 0
        if table.find(v94, _nguoitinhcuaeZ.CURRENT_FAMILY) then v95[_nguoitinhcuaeZ.CURRENT_FAMILY] = true end
        for _, v97 in ipairs(_nguoitinhcuaeZ.STORAGE) do
            if table.find(v94, v97) and not v95[v97] then v95[v97] = true end
        end
        for _ in pairs(v95) do v96 = v96 + 1 end
        return v96
    end

    -- user: "Bypass Roll để Roll Siêu nhanh" - LIVE-TESTED: Family/Roll is gated by a genuine
    -- SERVER-SIDE cooldown (the remote itself always responds in <0.1s; a rejected call during
    -- cooldown just silently returns nil, no error to catch/bypass - and switching Slots A/B/C does
    -- NOT grant an independent cooldown, confirmed live, so this is per-account not per-slot). There
    -- is no client-side trick to beat a server-enforced rate limit.
    -- IMPORTANT correction: the cooldown is NOT a fixed ~3s - repeated measurement showed it
    -- ESCALATES with recent roll frequency (measured 1.75s -> 1.86s -> 3.15s -> 6.59s across
    -- back-to-back tests, still ~6s after a 30s cool-off) - almost certainly an anti-spam throttle
    -- that grows the more you roll in a short window. An earlier version of this fix added a fixed
    -- ~2.9s pre-wait before even attempting the next roll, which is WRONG given the real cooldown can
    -- be much shorter (as low as ~1.75s) - that pre-wait was itself making rolling slower than
    -- necessary. Per user ("roll càng nhanh càng tốt" - roll as fast as possible): removed the fixed
    -- pre-wait entirely and go back to attempting every tick, so the bot always grabs the earliest
    -- legitimate opening the server allows, whatever that dynamically turns out to be, instead of
    -- guessing a number that's sometimes too conservative.
    task.spawn(function()
        while task.wait(0.1) do
            if not getgenv().Studio["Family"]["Roll"] then
                v5:Teleport(14916516914)
            else
                local v70 = getgenv().Studio["Family"]["Select"]
                local v98 = v49()
                local v99 = #_nguoitinhcuaeZ.STORAGE >= v98
                local v100 = getgenv().Studio["Family"]["Teleport"] and v93() >= #v70
                if v99 or v100 then
                    if v99 then
                        print("Storage full (" .. #_nguoitinhcuaeZ.STORAGE .. "/" .. v98 .. "). Storage: " .. v48())
                        SetStatus("Storage full - Teleporting to Lobby...")
                    else
                        print("Target family goal reached (" .. v2(v70, "/") .. "). Storage: " .. v48())
                        SetStatus("Target families reached - Teleporting to Lobby...")
                    end
                    v5:Teleport(14916516914)
                else
                    SetStatus("Rolling...")
                    local v75 = (_nguoitinhcuaeZ.CURRENT_SPINS or 0) + (_nguoitinhcuaeZ.CURRENT_EXTRA or 0)
                    if v75 < 1 then
                        print("No spins left (Spins=" .. tostring(_nguoitinhcuaeZ.CURRENT_SPINS)
                            .. ", Extra=" .. tostring(_nguoitinhcuaeZ.CURRENT_EXTRA) .. ")")
                        SetStatus("No spins left - waiting to buy more...")
                    else
                        local v76, v77, v78, v79, v80 = pcall(_nguoitinhcuaeZ.GET, "Family", "Roll")
                        if v76 and v77 ~= nil and v79 ~= nil then
                            _nguoitinhcuaeZ.CURRENT_SPINS = v77
                            _nguoitinhcuaeZ.CURRENT_EXTRA = v78
                            _nguoitinhcuaeZ.CURRENT_FAMILY = v79
                            _nguoitinhcuaeZ.CURRENT_PITY = v80
                            UpdateFamilyStats()
                            local v101 = _nguoitinhcuaeZ.DATA and _nguoitinhcuaeZ.DATA.Slots
                                and _nguoitinhcuaeZ.DATA.Slots[_nguoitinhcuaeZ.CURRENT_SLOT]
                            local v102 = v101 and v101.Progression and v101.Progression.Level
                            local v103 = "Rolled: " .. tostring(v79)
                                .. " | Level: " .. tostring(v102 or "?")
                                .. " | Pity: " .. tostring(v80)
                                .. " | Storage: " .. #_nguoitinhcuaeZ.STORAGE .. "/" .. v98
                            print(v103)
                            SetStatus(v103)

                            if table.find(v70, v79) then
                                local v82, v83 = v54()
                                if v82 then
                                    print("Deposited '" ..
                                    v83 ..
                                    "' into Storage [" .. #_nguoitinhcuaeZ.STORAGE .. "/" .. v98 .. "]")
                                    _nguoitinhcuaeZ.SEND_WEBHOOK(v83,
                                        "Stored (" .. #_nguoitinhcuaeZ.STORAGE .. "/" .. v98 .. ")", v48())
                                    _nguoitinhcuaeZ.SEND_WEBHOOK2(v83,
                                        "Stored (" .. #_nguoitinhcuaeZ.STORAGE .. "/" .. v98 .. ")", v48())
                                elseif v83 == "full" then
                                    print("Storage full (" ..
                                    #_nguoitinhcuaeZ.STORAGE ..
                                    "/" ..
                                    v98 .. ") - cannot bank '" .. v79 .. "', free up space in-game")
                                end
                            end
                        end
                    end
                end
            end
        end
    end)

    local v84 = {
        { Index = 5, Cost = 45000, Amount = 500 },
        { Index = 4, Cost = 23000, Amount = 250 },
        { Index = 3, Cost = 10000, Amount = 100 },
        { Index = 2, Cost = 2500,  Amount = 25 },
        { Index = 1, Cost = 500,   Amount = 5 },
    }

    local v85 = function()
        local v86 = _nguoitinhcuaeZ.DATA and _nguoitinhcuaeZ.DATA.Slots and
        _nguoitinhcuaeZ.DATA.Slots[_nguoitinhcuaeZ.CURRENT_SLOT]
        return v86 and v86.Currency and v86.Currency.Gems or 0
    end

    local v87 = function()
        for _, v88 in ipairs(v84) do
            while v85() >= v88.Cost do
                local v89, v90 = pcall(_nguoitinhcuaeZ.GET, "S_Market", "Buy", "Spins", v88.Index, 1)
                if not (v89 and type(v90) == "table") then break end
                v8(v90)
                print("Bought " ..
                v88.Amount .. " Spins for " .. v88.Cost .. " Gems (Gems left: " .. v85() .. ")")
            end
        end
    end

    task.spawn(function()
        while task.wait(5) do
            if getgenv().Studio["Family"]["Buy Spin"] then
                pcall(v87)
            end
        end
    end)
end