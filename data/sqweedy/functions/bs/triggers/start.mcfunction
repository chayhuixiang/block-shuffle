#Reset trigger scoreboard
scoreboard players set @s bs.start 0

execute unless score #game_started bs.dummy matches 1 unless score #playerCount bs.dummy matches 0 run scoreboard players set @a bs.blocks_found 0
execute unless score #game_started bs.dummy matches 1 unless score #playerCount bs.dummy matches 0 run scoreboard players set #countdown bs.start 10
execute unless score #game_started bs.dummy matches 1 unless score #playerCount bs.dummy matches 0 run function sqweedy:bs/game/start-countdown
execute if score #game_started bs.dummy matches 1 run tellraw @s [{"text":"Game already started!","color": "red"}]
execute if score #playerCount bs.dummy matches 0 run tellraw @s [{"text":"No players joined!","color": "red"}]

execute unless score #game_started bs.dummy matches 1 unless score #playerCount bs.dummy matches 0 run scoreboard players set #game_started bs.dummy 1

#Re-display menu
execute unless score #game_started bs.dummy matches 1 unless score #playerCount bs.dummy matches 0 run function sqweedy:bs/triggers/menu

#Calculate Player countdown
function sqweedy:bs/game/math/player-count