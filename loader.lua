local Players = game:GetService("Players")

local AllowedPlaceIds = {
    Dandys_World = 16116270224,
}

local function isAllowedPlace()
    for _, id in ipairs(AllowedPlaceIds) do
        if game.PlaceId == id then
            return true
        end
    end
    return false
end

if not isAllowedPlace() then
    LocalPlayer:Kick("Wrong game. Prompixy Aura only works in the correct place.")
    return
end

if isAllowedPlace() then
  if AllowedPlaceIds.Dandys_World then
    
  ned
end
