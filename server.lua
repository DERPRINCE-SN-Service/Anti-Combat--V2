SX = exports["es_extended"]:getSharedObject()

RegisterCommand("testing", function(source, args, rawcmd)
    local coords = GetEntityCoords(GetPlayerPed(source))
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent("sn_senden", -1, source, coords, xPlayer.getIdentifier(), "script-test")
    discordlogs(coords,"SCRIPT-TEST", xPlayer)
end)

AddEventHandler("playerDropped", function(reason)
    local _reason = reason
    local coords = GetEntityCoords(GetPlayerPed(source))
    local xPlayer = ESX.GetPlayerFromId(source)
    discordlogs(coords,_reason, source)
end)

function discordlogs(coords, text, source)
    local discord = "UNBEKANNT"
    for m, n in ipairs(GetPlayerIdentifiers(source)) do
        if n:match("discord") then
            discord = n:gsub("discord:", "")
        end
    end
    local _text = text
    local embeds = {
        {
            ["title"] = Config.Discord.title,
            ["description"] = "**".._text.."**",
            ['thumbnail'] = {
                ["url"] = Config.Discord.thumb_url
            },
            ["type"] = "rich",
            ["color"] = Config.Discord.color,
            ["fields"] = {
                {
                    ["name"] = "``Identifier``",
                    ["value"] = json.encode(GetPlayerIdentifiers(source)).."\nDiscord: <@"..discord..">",
                },{
                    ["name"] = "``Name``",
                    ["value"] = GetPlayerName(source),
                },{
                    ["name"] = "``Spieler ID``",
                    ["value"] = source,
                },{
                    ["name"] = "``Koordianten``",
                    ["value"] = "X: "..coords.x..", Y: "..coords.y..", Z: "..coords.z,
                },{
                    ["name"] = "``Grund``",
                    ["value"] = _text,
                },
            },
            ["footer"] =  {
                ["text"] = Config.Discord.text,
                ["icon_url"] = Config.Discord.icon_url
            },
        },
    }
    if Config.Discord.enable then
        PerformHttpRequest(Config.Discord.webhook, function(err, text, headers) end, 'POST', json.encode({username = Config.Discord.username, embeds = embeds}), { ['Content-Type'] = 'application/json' })
    end
end
