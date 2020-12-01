local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_give_weapons")

RegisterCommand("giveweapon", function(player, args)
    local user_id = vRP.getUserId(player)
    if vRP.hasPermission(user_id, 'admin.giveweapons') then
        TriggerClientEvent('give:weapon', player, args[1], args[2])
    end
end)

