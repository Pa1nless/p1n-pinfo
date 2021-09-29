local CreateThread = CreateThread
local Wait = Wait
local IsControlPressed = IsControlPressed

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
            ESX.TriggerServerCallback('p1n-info:getData', function(data)
                for _, v in pairs(data) do
                    SendNUIMessage({show = true, data = v})
                end
            end)

            while IsControlPressed(0, 19) do
                Wait(100)
            end
            SendNUIMessage({show = false})
        end
    end
end)

