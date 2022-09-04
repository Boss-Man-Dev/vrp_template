fx_version 'cerulean'
games { 'gta5' }

description "vRP Template"        		-- Optional
version '1.0.0'                         -- Optional


shared_script {
  "@vrp/lib/utils.lua"
}

server_script {
	"vrp.lua"
}

client_scripts {
	'client.lua'
}

files{
	"cfg/cfg.lua"                        -- Optional
}
