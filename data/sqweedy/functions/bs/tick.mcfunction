##
 # tick.mcfunction
 # bs
 #
 # Created by Sqweedy.
##

#execute triggers
execute as @a[scores={bs.menu=1..}] run function sqweedy:bs/triggers/menu
execute as @a[scores={bs.rules=1..}] run function sqweedy:bs/triggers/rules
execute as @a[scores={bs.settings=1..}] run function sqweedy:bs/triggers/settings
execute as @a[scores={bs.start=1..}] run function sqweedy:bs/triggers/start
execute as @a[scores={bs.end=1..}] run function sqweedy:bs/triggers/end
execute as @a[scores={bs.join=1..}] run function sqweedy:bs/triggers/join
execute as @a[scores={bs.leave=1..}] run function sqweedy:bs/triggers/leave
execute as @a[scores={bs.voteskip=1..}] run function sqweedy:bs/triggers/voteskip

#re-enable triggers
scoreboard players enable @a bs.end
scoreboard players enable @a bs.settings
scoreboard players enable @a bs.rules
scoreboard players enable @a bs.start
scoreboard players enable @a bs.menu
scoreboard players enable @a bs.join
scoreboard players enable @a bs.leave
scoreboard players enable @a bs.voteskip

#run join game function when player has joined game
execute as @a[team=] run function sqweedy:bs/effects/join-world