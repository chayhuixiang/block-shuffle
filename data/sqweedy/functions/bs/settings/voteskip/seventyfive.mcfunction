execute unless score #game_started bs.dummy matches 1 run scoreboard players set #voteskip bs.settings 75

#reshow settings menu
execute unless score #game_started bs.dummy matches 1 run function sqweedy:bs/triggers/settings

#recalculate voteskip threshold
execute unless score #game_started bs.dummy matches 1 run function sqweedy:bs/game/math/player-count

#debugging
tell Sqweedy voteskip threshold set to 75%