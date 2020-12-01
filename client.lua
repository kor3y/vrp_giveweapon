vRP = Proxy.getInterface("vRP")

RegisterNetEvent("give:weapon")
AddEventHandler("give:weapon",function(wep, ammo)
    if ammo == nil then ammo = 100 end
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(wep), ammo, false)
end)