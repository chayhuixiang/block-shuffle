#Re-run this function
execute if score #countdown bs.end matches 20 run title @a title {"text":" "}
execute if score #countdown bs.end matches 20 run title @a subtitle {"text": "Game has ended!","color": "#b7ee56"}

execute if score #countdown bs.end matches 10 run title @a title {"selector":"@a[tag=winner]","color": "#ffa33f"}
execute if score #countdown bs.end matches 10 run title @a subtitle {"text":"is the winner!","color": "#b7ee56"}
execute if score #countdown bs.end matches 10 as @a at @s run playsound entity.wither.death hostile @s ~ ~ ~ 10 0

execute if score #countdown bs.end matches 0 run scoreboard objectives setdisplay sidebar bs.blocks_found
execute if score #countdown bs.end matches 0 run team join bs.spectators @a
execute if score #countdown bs.end matches 0 run scoreboard players set #game_started bs.dummy 0
execute if score #countdown bs.end matches 0 as @a run trigger bs.menu

execute if score #countdown bs.end matches -1 run function sqweedy:bs/game/math/player-count
#Reset the countdown score
execute if score #countdown bs.end matches -1 run scoreboard players reset #countdown bs.start

execute if score #countdown bs.end matches 0.. run schedule function sqweedy:bs/game/end-countdown 1s

scoreboard players remove #countdown bs.end 1

