@echo off
::Name of the server shown in the title of the cmd window. This will NOT bet shown ingame.
set name=HMW Dedicated Server
::Name of the config file the server should use. (default: server.cfg)
set cfg=server_default.cfg
::Port used by the server (default: 27016)
set port=27016
::Only change this when you don't want to keep the bat files in the game folder. MOST WON'T NEED TO EDIT THIS!
set gamepath=%cd%


title HMW - %name% - Server restarter
echo Server "%name%" will load %cfg% and listen on port %port% UDP!
echo To shut down the server close this window first!
echo (%date%)  -  (%time%) %name% server start.

:server
start /wait /abovenormal hmw-mod.exe "%gamepath%" -dedicated -memoryfix +exec "%cfg%" +set net_port %port% +map_rotate
echo (%date%)  -  (%time%) WARNING: %name% server closed or dropped... server restarts.
goto server
