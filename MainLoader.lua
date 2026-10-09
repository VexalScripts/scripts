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
    },
    ["Deagle Arena Script"] = {
        Endpoint = "DeagleArena.lua",
        GameId = 10057403337
    }
}

local function script()
    for scriptName, data in pairs(scripts) do
        if data.GameId == game.GameId then
            -- skip mvsd
            if game.GameId == 4348829796 then
                getgenv().dontRunLoader = true
            end
            return ("https://raw.githubusercontent.com/VexalScripts/scripts/refs/heads/main/" .. data.Endpoint)
        end
    end
    return nil
end

if not getgenv().dontRunLoader then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VexalScripts/scripts/refs/heads/main/GuiLoader.lua", true))()
end

local function notify(title, text, duration)
    task.spawn(function()
        local success = false
        while not success do
            success = pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = title,
                    Text = text,
                    Duration = duration or 5
                })
            end)
            if not success then task.wait(0.2) end
        end
    end)
end

local scriptUrl = script()
if scriptUrl then
    local success, placeInfo = pcall(function()
        return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
    end)
    local gameName = (success and placeInfo and placeInfo.Name) or "Game"
    notify(gameName, "Welcome to Vexal Scripts! Please wait, your script is loading..", 10)
    loadstring(game:HttpGet(scriptUrl, true))()
else
    notify("Unsupported Game!", "GameId: " .. tostring(game.GameId) .. " is not supported by Vexal Scripts!", 60)
end
