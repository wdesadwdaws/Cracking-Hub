local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local AllowedPlaceIds = {
    Dandys_World = 16116270224,
}

local function isAllowedPlace()
    for name, id in pairs(AllowedPlaceIds) do
        if game.PlaceId == id then
            return true, name
        end
    end
    return false, nil
end

local allowed, placeName = isAllowedPlace()

if not allowed then
    LocalPlayer:Kick("Wrong game. Prompixy Aura only works in the correct place.")
    return
end

if placeName == "Dandys_World" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wdesadwdaws/Cracking-Hub/refs/heads/main/Dandys_World.lua"))()
end
