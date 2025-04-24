local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

local localPlayer = Players.LocalPlayer

-- Zkontroluj jméno
if localPlayer.Name ~= "chleba719" then return end

-- Vytvoření GUI
local screenGui = Instance.new("ScreenGui", localPlayer:WaitForChild("PlayerGui"))
screenGui.Name = "AdminGui"

local function createButton(text, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.Text = text
    button.Parent = screenGui
    button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.MouseButton1Click:Connect(callback)
end

-- Teleport tlačítko
createButton("Teleportuj všechny", UDim2.new(0, 100, 0, 100), function()
    for _, player in pairs(Players:GetPlayers()) do
        TeleportService:Teleport(140233560440008, player)
    end
end)

-- Zabij tlačítko
createButton("Zabij všechny", UDim2.new(0, 100, 0, 170), function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Health = 0
        end
    end
end)

-- Kick tlačítko
createButton("Kickni všechny", UDim2.new(0, 100, 0, 240), function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= localPlayer then
            player:Kick("Byl jsi vyhozen adminem chleba719")
        end
    end
end)
