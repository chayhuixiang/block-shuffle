#Set players blocks
function sqweedy:bs/game/get-next-block

#Check block the player is standing on
function sqweedy:bs/game/check-block

#re-show menu
execute as @a run trigger bs.menu

#schedule end game
execute if score #roundtime bs.settings matches 8 run schedule function sqweedy:bs/game/round-end 480s
execute if score #roundtime bs.settings matches 5 run schedule function sqweedy:bs/game/round-end 300s
execute if score #roundtime bs.settings matches 10 run schedule function sqweedy:bs/game/round-end 600s

#debugging
tell Sqweedy round-start triggered!