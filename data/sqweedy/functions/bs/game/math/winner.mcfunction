#winner gets winner tag
scoreboard players operation #max bs.dummy = @a[limit=1] bs.blocks_found
execute as @a run scoreboard players operation #max bs.dummy > @s bs.blocks_found
tag @a remove winner
execute as @a if score @s bs.blocks_found = #max bs.dummy run tag @s add winner