local Players = game:GetService("Players")

repeat task.wait() until Players.LocalPlayer
local LocalPlayer = Players.LocalPlayer

local AllowedPlaceIds = {
    Dandys_World = {
        id = 16116270224,
        url = "https://raw.githubusercontent.com/wdesadwdaws/Cracking-Hub/refs/heads/main/Dandys_World.lua"
    },
    Bulid_Ur_Base = {
        id = 75366259315586,
        url = "https://raw.githubusercontent.com/wdesadwdaws/Cracking-Hub/refs/heads/main/Bulid_Ur_Base.lua"
    }
}

local function isAllowedPlace()
    for name, data in pairs(AllowedPlaceIds) do
        if data.id and game.PlaceId == data.id then
            return true, name, data.url, data.id
        end
    end
    return false, nil, nil, nil
end

local allowed, placeName, url, placeId = isAllowedPlace()

if not allowed then
    warn("Wrong game. This script does not support this game")
    return
end

print("Loaded for:", placeName, "| PlaceId:", placeId)
loadstring(game:HttpGet(url))()
