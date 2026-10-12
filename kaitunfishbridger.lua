local plr = game:GetService("Players").LocalPlayer
local character = plr.Character or plr.CharacterAdded:Wait()
local runs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local https = game:GetService("HttpService")
local tps = game:GetService("TeleportService")

local oldChar = nil
local anchorPart = nil

runs.Stepped:Connect(function()
    pcall(function()
        local char = plr.Character
        if not (char and char:FindFirstChild("Head") and char:FindFirstChild("HumanoidRootPart")) then
            oldChar = nil
            if anchorPart then
                anchorPart:Destroy()
                anchorPart = nil
            end
            return
        end
        if char ~= oldChar then
            oldChar = char
            if anchorPart then
                anchorPart:Destroy()
                anchorPart = nil
            end
            anchorPart = Instance.new("Part")
            anchorPart.Name = "NoFallAnchor"
            anchorPart.Anchored = true
            anchorPart.CanCollide = false
            anchorPart.Transparency = 1
            anchorPart.Size = Vector3.new(0.2, 0.2, 0.2)
            anchorPart.CFrame = char.Head.CFrame
            anchorPart.Parent = workspace
            local weld = Instance.new("WeldConstraint")
            weld.Part0 = anchorPart
            weld.Part1 = char.Head
            weld.Parent = anchorPart
        end
        if anchorPart and char.Head then
            anchorPart.CFrame = char.Head.CFrame
        end
    end)
end)

local function openChests()
    local chests = workspace.Chests:GetChildren()
    for _, chest in ipairs(chests) do
        pcall(function()
            local targetPart = chest:IsA("BasePart") and chest
                or chest:FindFirstChildWhichIsA("BasePart")
            if not targetPart then return end
            local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            hrp.CFrame = targetPart.CFrame * CFrame.new(0, 3, 0)
            task.wait(0.3)
            local prompt = chest:FindFirstChild("ProximityPrompt", true)
            if prompt then
                fireproximityprompt(prompt)
            end
            task.wait(0.5)
        end)
    end
end

openChests()