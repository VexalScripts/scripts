local scripts = {
    ["Chicken Farm Script"] = {
        Endpoint = "ChickenFarm.lua",
        GameId = 10209534490
    },
    ["Murder vs Sheriff Duels Script"] = {
        Endpoint = "MurderVsSheriffDuels.lua",
        GameId = 4348829796
    },
    ["Duels Murder vs Sheriff Script"] = {
        Endpoint = "DuelsMurderVsSheriff.lua",
        GameId = 7219654364
    }
}

local baseUrl = "https://raw.githubusercontent.com/VexalScripts/scripts/refs/heads/main/"
local function script()
    for scriptName, data in pairs(scripts) do
        if data.GameId == game.GameId then
            return (baseUrl .. data.Endpoint)
        end
    end
    return nil
end
local scriptUrl = script()

local StarterGui = game:GetService("StarterGui")
local MarketplaceService = game:GetService("MarketplaceService")

local function notify(title, text, duration)
    task.spawn(function()
        local success = false
        while not success do
            success = pcall(function()
                StarterGui:SetCore("SendNotification", {
                    Title = title,
                    Text = text,
                    Duration = duration or 5
                })
            end)
            if not success then task.wait(0.2) end
        end
    end)
end

if scriptUrl then
    local success, placeInfo = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId)
    end)
    local gameName = (success and placeInfo and placeInfo.Name) or "Game"

    notify(gameName, "Welcome to Vexal Scripts! Please wait, your script is loading..", 5)
    loadstring(game:HttpGet(scriptUrl))()
else
    notify("Unsupported Game!", "GameId: " .. tostring(game.GameId) .. " is not supported by Vexal Scripts!", 50)
end
