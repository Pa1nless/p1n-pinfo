fx_version 'cerulean'
game 'gta5'

lua54 'yes'
use_fxv2_oal 'yes'

shared_script {
    '@es_extended/imports.lua',
    'config.lua'
}

client_script 'client/cl.lua'

server_script 'server/sv.lua'

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/script.js',
    'ui/style.css',
    'ui/*.ttf'
}
