execute unless score #game_started bs.dummy matches 1 run scoreboard players set #roundtime bs.settings 8

#reshow settings menu
execute unless score #game_started bs.dummy matches 1 run function sqweedy:bs/triggers/settings

#bossbar max time
execute unless score #game_started bs.dummy matches 1 run bossbar set bs:timer max 960

#debugging
tell Sqweedy roundtime set to 8mins