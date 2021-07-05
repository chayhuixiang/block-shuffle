#check block functions
execute as @a[tag=!wonRound,team=bs.players] if score #block bs.dummy matches 1..100 run function sqweedy:bs/game/check-block/0
execute as @a[tag=!wonRound,team=bs.players] if score #block bs.dummy matches 101..200 run function sqweedy:bs/game/check-block/1
execute as @a[tag=!wonRound,team=bs.players] if score #block bs.dummy matches 201..300 run function sqweedy:bs/game/check-block/2
execute as @a[tag=!wonRound,team=bs.players] if score #block bs.dummy matches 301..400 run function sqweedy:bs/game/check-block/3
execute as @a[tag=!wonRound,team=bs.players] if score #block bs.dummy matches 401..500 run function sqweedy:bs/game/check-block/4
execute as @a[tag=!wonRound,team=bs.players] if score #block bs.dummy matches 501..600 run function sqweedy:bs/game/check-block/5
execute as @a[tag=!wonRound,team=bs.players] if score #block bs.dummy matches 601..700 run function sqweedy:bs/game/check-block/6

#re-runs this function if game still ongoing
execute if score #game_started bs.dummy matches 1 run schedule function sqweedy:bs/game/check-block 10t

#run for players that have found block
execute as @a[tag=!wonRound] if entity @s[tag=found] run function sqweedy:bs/game/found-block

#repeatedly set gamemode for spectators to spectator mode
gamemode spectator @a[team=bs.spectators]

#debugging
#tell Sqweedy hi