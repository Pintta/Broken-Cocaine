fx_version 'cerulean'
game 'gta5'
lua54 'yes'
client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client.lua'
}
server_script 'server.lua'
exports {
    'PolyZone',
    'qb-core'
}
