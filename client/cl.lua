CreateThread(function()
    while true do
        Wait(200)
        if IsControlPressed(0, 19) then
            ESX.TriggerServerCallback("p1n-info:getData", function(data)
            SendNUIMessage({
                show = true,
                name = data.name,
                job =   ESX.PlayerData.job.label,
                cash = "$ "..data.cash,
                bank = "$ "..data.bank,
            })
        end)

            while IsControlPressed(0, 19) do
                Wait(100)
            end
            SendNUIMessage({
                show = false
            })
        end
    end
end)

