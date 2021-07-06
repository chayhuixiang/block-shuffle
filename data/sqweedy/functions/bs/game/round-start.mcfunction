#Set spacing in chat
tellraw @a " "

#Set players blocks
function sqweedy:bs/game/get-next-block

#Check block the player is standing on
function sqweedy:bs/game/check-block

#scoreboard settings
scoreboard players set #voteskipPys bs.dummy 0
tag @a remove voteskip
tag @a remove found
tag @a remove wonRound

#showvoteskip text
tellraw @a {"text":"Click here to voteskip round! ","color":"#ffa33f","hoverEvent": {"action": "show_text","value": "Click here to voteskip round"},"clickEvent":{"action":"run_command","value":"/trigger bs.voteskip"},"extra":[{"score":{"name":"#voteskipPys","objective":"bs.dummy"}},{"text":"/"},{"score":{"name":"#voteskipThreshold","objective":"bs.settings"}}]}

#schedule end game
execute if score #roundtime bs.settings matches 8 run schedule function sqweedy:bs/game/round-end 480s
execute if score #roundtime bs.settings matches 5 run schedule function sqweedy:bs/game/round-end 300s
execute if score #roundtime bs.settings matches 10 run schedule function sqweedy:bs/game/round-end 600s

#debugging
tell Sqweedy round-start triggered!