local Config = {
    ["Avoid Traps"] = true, -- Né bẫy khi tween đi lấy trứng và mang về.
    MaxPlotLevel = 5,
    MaxTreadmillLevel = 10,
    PriorityRarities = {"Eternal", "Divine", "Secret"},
    OnlyPriorityEggs = false, -- true: only Steal/Place/Hatch these rarities.
    PreferredStealArena = "Titan Temple",

    -- Monster update and treadmill recovery guard.
    ["Auto Monster Obby"] = true,
    ["Monster Obby Tween Speed"] = 300,
    ["Auto Monster Parasite"] = true,
    ["Prioritize Parasite Eggs"] = true,
    ["Protect Parasite Eggs"] = true,
    ["Treadmill Action Guard"] = true,

    -- Discord status: only notify the selected high rarities.
    WebhookEnabled = true,
    PrivateHatchWebhookUrl = "your-api-webhook",
    PrivateHatchWebhookRarities = {"Eternal", "Divine", "Secret"},
    PrivateStealWebhookRarities = {"Eternal", "Divine", "Secret"},
    ShowPingInGlobalWebhook = false,
    WebhookUsername = "@Angeryy05",

    StealEggs = {
        {Name = "All", Rarity = "All", Mutation = "All", MinKG = 0},
    },
    PlaceEggs = {
        {Name = "All", Rarity = "All", Mutation = "All"},
    },
    HatchEggs = {
        {Name = "All", Rarity = "All", Mutation = "All"},
    },
    SellPets = {
        {Name = "All", Rarity = "All", Mutation = "All"},
    },
    SellEggs = {
        {Name = "All", Rarity = "All", Mutation = "All"},
    },
    -- Optional value-per-second thresholds. Older script builds ignore these
    -- extra fields; newer builds treat a missing field as disabled (0).
    SellPetAmount = "1M", -- Chỉ bán pet có m/s thấp hơn 1M.
    SellEggAmount = "1M", -- Chỉ bán egg có m/s thấp hơn 1M.

    StealEggAmount = 10,
    StealRequestAttempts = 12,
    StealRequestTimeout = 1.5,
    StealCarryConfirmTimeout = 0.65,
    StealPreRequestDelay = 0.02, -- Gửi request gần như ngay sau khi tới egg.
    StealFailureRetryDelay = 0.1,
    PlaceEggSpacing = 4,
    PlaceEggMaxTriesPerEgg = 12,
    ClaimCooldown = 1800,
    UpgradeCooldown = 30,

    ["Auto Steal Egg"] = true, -- Rarity mặc định và fallback khi không có Big Egg hợp lệ.
    ["Auto Steal Big Egg"] = true, -- Trứng khổng lồ được ưu tiên tuyệt đối; còn lại theo rarity/mutation rồi trứng bọ.
    ["Prioritize Money Per Second"] = true, -- Sau rule/rarity ưu tiên trong config, chọn egg có $/s cao nhất ở mọi arena.
    GiantEggScale = 6.0, -- Chỉ AssetScale từ 6.0 trở lên mới được ưu tiên theo kích thước.
    CarryRecoveryWindow = 6, -- Tối đa 6 giây để chờ đúng UID nếu trứng rơi tạm thời biến mất khỏi snapshot.
    ["Select Arena"] = "All Arena",
    ["Auto Place Egg"] = true,
    ["Auto Hatch All Egg"] = true,
    ["Auto Sell Pet and Egg"] = true,
    ["Auto Claim Reward"] = true,
    ["Anti AFK"] = true,
    ["FPS Boost"] = false,
    ["Tween Speed"] = 800,
    ArrivalDistance = 15,
}

repeat task.wait() until game:IsLoaded()
getgenv().Premium = true
getgenv().Key = "your-key"

getgenv().EggStealKaitunConfig = Config
loadstring(game:HttpGet("https://vxezestudio.online/api/scripts/script_FWv0aKlcAt8Ug/stream/init"))()

return Config
