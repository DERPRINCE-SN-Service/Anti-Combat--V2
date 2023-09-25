--https://discord.gg/WrQmADK3
--   _____  _   __        ___            __   _  ______                   __            __   __                    
--  / ___/ / | / /       /   |   ____   / /_ (_)/ ____/____   ____ ___   / /_   ____ _ / /_ / /   ____   ____ _    
--  \__ \ /  |/ /______ / /| |  / __ \ / __// // /    / __ \ / __ `__ \ / __ \ / __ `// __// /   / __ \ / __ `/    
-- ___/ // /|  //_____// ___ | / / / // /_ / // /___ / /_/ // / / / / // /_/ // /_/ // /_ / /___/ /_/ // /_/ /     
--/____//_/ |_/       /_/  |_|/_/ /_/ \__//_/ \____/ \____//_/ /_/ /_//_.___/ \__,_/ \__//_____/\____/ \__, /      
--                                                                                                    /____/

fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'SN-Service'
description "Anti-Combat by DER PRINCE"
version '2.0.0'

escrow_ignore {
    'config.lua',
}

client_scripts {
    'client.lua',
}
server_scripts {
    'server.lua',
    "config.lua"
}
