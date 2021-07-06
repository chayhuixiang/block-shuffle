execute unless score #game_started bs.dummy matches 1 run scoreboard players set #roundtime bs.settings 5

#reshow settings menu
execute unless score #game_started bs.dummy matches 1 run function sqweedy:bs/triggers/settings

#bossbar max time
execute unless score #game_started bs.dummy matches 1 run bossbar set bs:timer max 600

#debugging
tell Sqweedy roundtime set to 5mins