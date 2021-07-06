#show title on screen
title @a times 0 20 10 
execute if score #countdown bs.start matches 1..10 run title @a subtitle [{"score":{"name":"#countdown","objective":"bs.start"},"color":"gold"},{"text":"..","color":"#ffa33f"}]
execute if score #countdown bs.start matches 0 run title @a subtitle {"text":"GO!","color":"#b7ee56"}
title @a title {"text":" "}

#scoreboard settings
scoreboard players remove #countdown bs.start 1
scoreboard objectives setdisplay sidebar

#Rerun this function
execute if score #countdown bs.start matches 0.. run schedule function sqweedy:bs/game/start-countdown 1s

#Start the game
execute if score #countdown bs.start matches -1 run function sqweedy:bs/game/round-start

#re-show menu
execute if score #countdown bs.start matches 0 as @a run trigger bs.menu

#Reset the countdown score
execute if score #countdown bs.start matches -1 run scoreboard players reset #countdown bs.start