ESX.RegisterServerCallback("p1n-info:getData", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    cb({
        name = xPlayer.getName(),
        cash = xPlayer.getAccount("money").money,
        bank = xPlayer.getAccount("bank").money,
    })
end)