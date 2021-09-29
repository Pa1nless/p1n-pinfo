if Config.UseOldESX then
    ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end

ESX.RegisterServerCallback('p1n-info:getData', function(source, cb)
    local playerId <const> = source
    local xPlayer = ESX.GetPlayerFromId(playerId)

    -- You can add whatever you want here
    local data = {
        name = xPlayer.getName(),
        cash = '$ '..xPlayer.getAccount('money').money,
        bank = '$ '..xPlayer.getAccount('bank').money
    }
    cb(data)
end)
