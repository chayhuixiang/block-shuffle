execute unless score #game_started bs.dummy matches 1 run scoreboard players set #difficulty bs.settings 1

#reshow settings menu
execute unless score #game_started bs.dummy matches 1 run function sqweedy:bs/triggers/settings

#debugging
tell Sqweedy difficulty set to easy