fx_version 'cerulean'
game 'gta5'

shared_script '@es_extended/imports.lua'

client_scripts {
    'client/*.lua'
}

server_script {
    'server/*.lua'
}

ui_page 'ui/index.html'

files {
    'ui/*.html',
    'ui/*.js',
    'ui/*.css',
}