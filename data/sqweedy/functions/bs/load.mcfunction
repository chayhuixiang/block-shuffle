##
 # load.mcfunction
 # bs
 #
 # Created by Sqweedy.
##

#turn off send command feedback
#gamerule sendCommandFeedback false

#add game teams
team add bs.players
team modify bs.players color green
team add bs.spectators
team modify bs.spectators color red

#add triggers
scoreboard objectives add bs.join trigger
scoreboard objectives add bs.leave trigger
scoreboard objectives add bs.settings trigger
scoreboard objectives add bs.menu trigger
scoreboard objectives add bs.rules trigger
scoreboard objectives add bs.start trigger
scoreboard objectives add bs.end trigger

#add scoreboards
scoreboard objectives add bs.dummy dummy
scoreboard objectives add bs.blocks_found dummy
scoreboard objectives modify bs.blocks_found displayname {"text":"No. of Blocks Found","color":"#f88914"}

#load default settings
function sqweedy:bs/settings/load

say pack reloaded!