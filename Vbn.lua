
-- VBN HUB 🥚 CARTOON EDITION

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "VBN_HUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(300, 300)
main.Position = UDim2.new(0.5, -150, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(170, 225, 255)
main.Parent = gui

Instance.new("UICorner", main).CornerRadius =
    UDim.new(0, 22)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 60)
title.BackgroundColor3 = Color3.fromRGB(255, 235, 140)
title.Text = "🥚 VBN HUB"
title.TextColor3 = Color3.fromRGB(60, 110, 190)
title.Font = Enum.Font.GothamBlack
title.TextSize = 25
title.Parent = main

Instance.new("UICorner", title).CornerRadius =
    UDim.new(0, 20)

local function addButton(name, y, color, callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0.85, 0, 0, 45)
    b.Position = UDim2.new(0.075, 0, 0, y)
    b.BackgroundColor3 = color
    b.Text = name
    b.TextSize = 16
    b.Font = Enum.Font.GothamBold
    b.TextColor3 = Color3.fromRGB(50, 70, 100)
    b.Parent = main

    Instance.new("UICorner", b).CornerRadius =
        UDim.new(0, 13)

    b.MouseButton1Click:Connect(callback)
end

addButton("🏃 SPEED", 80,
    Color3.fromRGB(150, 255, 180), function()
        print("VBN Speed clicked")
    end)

addButton("🥚 EGG", 135,
    Color3.fromRGB(255, 190, 210), function()
        print("VBN Egg clicked")
    end)

addButton("⚙️ SETTINGS", 190,
    Color3.fromRGB(255, 220, 140), function()
        print("VBN Settings clicked")
    end)

addButton("❌ CLOSE", 245,
    Color3.fromRGB(255, 150, 150), function()
        gui:Destroy()
    end)

print("VBN HUB Loaded!")

