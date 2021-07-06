#Reset trigger scoreboard
scoreboard players set @s bs.end 0
scoreboard players set #game_running bs.dummy 0

#clear recurring round functions
schedule clear sqweedy:bs/game/check-block
schedule clear sqweedy:bs/game/start-countdown
schedule clear sqweedy:bs/game/round-end

#clear bossbar
bossbar set bs:timer visible false

#calculate winner
execute if score #game_started bs.dummy matches 1 run function sqweedy:bs/game/math/winner

#start end countdown
execute if score #game_started bs.dummy matches 1 run scoreboard players set #countdown bs.end 20
execute if score #game_started bs.dummy matches 1 run function sqweedy:bs/game/end-countdown

#change title duration
title @a times 10 100 10