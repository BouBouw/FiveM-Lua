local cayoCoords = { x1= 4900, y1= -5720, x2 = 6000, y2= -4690 }

function IsPlayerInCayo()
    return coords.x > cayoCoords.x1 and coords.x < cayoCoords.x2 ans coords.y > cayoCoords.y1 and coords.y < cayoCoords.y2
end

Citizen.CreateThread(function() 
    while true do 
        local playerCoords = GetEntityCoords(PlayerPedId())

        if IsPlayerInCayoPerico(playerCoords) then
            SetWeatherTypeNowPersist("EXTRASUNNY")
        end
        Citizen.Wait(5000)
    end
end)