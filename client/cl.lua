if Config.UseOldESX then 
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

CreateThread(function()
    while true do
        Wait(200)
        if IsControlPressed(0, 19) then --left alt
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

