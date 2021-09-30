if Config.UseOldESX then
    ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end

ESX.RegisterServerCallback("p1n-info:getData", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    cb({
        job = xPlayer.getJob().label,
        name = xPlayer.getName(),
        cash = xPlayer.getAccount("money").money,
        bank = xPlayer.getAccount("bank").money,
    })
end)
