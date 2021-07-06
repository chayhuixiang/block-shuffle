#Reset trigger scoreboard
scoreboard players set @s bs.voteskip 0

#add voteskip player count
execute if entity @s[tag=!voteskip] if score #voteskipPys bs.dummy < #voteskipThreshold bs.settings run scoreboard players add #voteskipPys bs.dummy 1

#round-skip sequence
execute if entity @s[tag=!voteskip] if score #voteskipPys bs.dummy = #voteskipThreshold bs.settings run function sqweedy:bs/game/skip-round

#update voteskip counter in chat
execute if entity @s[tag=!voteskip] if score #voteskipPys bs.dummy < #voteskipThreshold bs.settings run tellraw @a {"text":"Click here to voteskip round! ","color":"#ffa33f","clickEvent":{"action":"run_command","value":"/trigger bs.voteskip"},"extra":[{"score":{"name":"#voteskipPys","objective":"bs.dummy"}},{"text":"/"},{"score":{"name":"#voteskipThreshold","objective":"bs.settings"}}]}

#Fail text
execute if entity @s[tag=voteskip] if score #voteskipPys bs.dummy < #voteskipThreshold bs.settings run tellraw @s {"text":"You have already voted to skip this round!","color":"red"}

#add tag
tag @s add voteskip