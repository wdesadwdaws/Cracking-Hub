local Players = game:GetService("Players")

repeat task.wait() until Players.LocalPlayer
local LocalPlayer = Players.LocalPlayer

local AllowedPlaceIds = {
    Dandys_World = {
        id = 16116270224,
        loadstring = "loadstring(game:HttpGet("https://raw.githubusercontent.com/wdesadwdaws/Cracking-Hub/refs/heads/main/Dandys_World.lua"))()"
    },
    Bulid_Ur_Base = {
        id = 75366259315586
        loadstring = "loadstring(game:HttpGet("https://raw.githubusercontent.com/wdesadwdaws/Cracking-Hub/refs/heads/main/Bulid_Ur_Base.lua"))()
    }
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
    LocalPlayer:Kick("Wrong game. This script dose not support this game")
    return
end

if placeName == "Dandys_World" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wdesadwdaws/Cracking-Hub/refs/heads/main/Dandys_World.lua"))()
end
