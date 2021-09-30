local CreateThread = CreateThread
local Wait = Wait
local IsControlPressed = IsControlPressed

if Config.UseOldESX then
    ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end

CreateThread(function()
    while true do
        Wait(200)
        if IsControlPressed(0, 19) then --left alt
            ESX.TriggerServerCallback('p1n-info:getData', function(data)
                SendNUIMessage({show = true, data = data})
            end)
        
            while IsControlPressed(0, 19) do
                Wait(100)
            end
            SendNUIMessage({show = false})
        end
    end
end)