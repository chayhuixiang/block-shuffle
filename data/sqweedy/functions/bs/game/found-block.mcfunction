#play beacon sound
execute at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~

#track player points
scoreboard players add @s bs.blocks_found 1
tellraw @a [{"selector":"@s"},{"text":" found their block!","color": "#92cd28"}]

#update found block player counter
scoreboard players add #doneChallengePys bs.dummy 1

#check if round has ended
execute if score #doneChallengePys bs.dummy = #playerCount bs.dummy run function sqweedy:bs/game/round-end

#add won round tag
tag @s add wonRound

#clear found tag
tag @s remove found