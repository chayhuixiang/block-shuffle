execute unless score #game_started bs.dummy matches 1 run scoreboard players set #keepinventory bs.settings 0

#reshow settings menu
execute unless score #game_started bs.dummy matches 1 run function sqweedy:bs/triggers/settings

#set keepinvent to true
execute unless score #game_started bs.dummy matches 1 run gamerule keepInventory false

#debugging
tell Sqweedy keepinventory set to false