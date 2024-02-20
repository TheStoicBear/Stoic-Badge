fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'TheStoicBear | MI_Agimir'
description 'A Simple Badge System.'
version '1.0.0'
description 'streeeeeeeeaaaaaaaaaaam'
ui_page 'index.html'

shared_scripts {
    '@ox_lib/init.lua',
    '@ND_Core/init.lua',
    'Config.lua'
}

client_scripts {
    'source/client.lua',
    'source/c_badge.lua',

} 

server_scripts {
    'source/s_badge.lua'
}

files {
    'stream/**/*.ytyp',
    'stream/**/*.ymf',
    'stream/**/*.ydr',
}

data_file 'DLC_ITYP_REQUEST' 'stream/**/**/badges.ytyp'
