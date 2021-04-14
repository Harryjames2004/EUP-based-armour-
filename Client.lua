local ArmorSet = false
local debug = true

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local BodyArmor = GetPedDrawableVariation(PlayerPedId(), 9)
               if BodyArmor == 1 or BodyArmor == 2 or BodyArmor == 5 or BodyArmor == 6 or BodyArmor == 7 or BodyArmor == 9 or BodyArmor == 11 or BodyArmor == 12 or BodyArmor == 15 or BodyArmor == 16 or BodyArmor == 17 or BodyArmor == 18 or BodyArmor == 20 or BodyArmor == 26 or BodyArmor == 27 or BodyArmor == 30 or BodyArmor == 34 or BodyArmor == 36 then
                ArmorSet = true
            else
                ArmorSet = false
            end

        if debug then
            print(ArmorSet)
        end
        if ArmorSet == true then
            Citizen.Wait(30000)
            SetPedArmour(PlayerPedId(-1), 100)
        else 
            Citizen.Wait(1000)
            SetPedArmour(PlayerPedId(-1), 0)
        end
    end
end)