AntiCombat = {}
AntiCombat.Functions = {}

CreateThread(function()
    while show do
        Wait(5)
        local dsafasfdf = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, dsafasfdf.x, dsafasfdf.y, dsafasfdf.z, true) < 15.0 then
            AntiCombat.Functions.ShowFloatingHelpNotification(GetPlayerName(GetPlayerFromServerId(id)).. " hat den Server Verlassen \nID: "..id.." ("..identifier..")\nGrund: "..reason, vector3(coords.x, coords.y, coords.z+0.90))
        else
            Wait(2000)
        end
    end
end)


function AntiCombat.Functions.SpawnPed(coords,id)
    EvilPed = ClonePed(PlayerPedId(id), GetEntityHeading(PlayerPedId(id)), false, false, false)
    Wait(10)
    SetEntityCoordsNoOffset(EvilPed, coords.x,coords.y,coords.z)
    SetEntityInvincible(EvilPed,true)
    FreezeEntityPosition(EvilPed, true)
    SetBlockingOfNonTemporaryEvents(EvilPed,true)
    Wait(30 * 1000)
    DeleteEntity(EvilPed)
end

function AntiCombat.Functions.ShowFloatingHelpNotification(msg, coords)
    AddTextEntry('esxFloatingHelpNotification', msg)
    SetFloatingHelpTextWorldPosition(1, coords)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp('esxFloatingHelpNotification')
    EndTextCommandDisplayHelp(2, false, false, -1)
end
