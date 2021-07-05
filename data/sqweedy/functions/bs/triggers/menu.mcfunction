#Reset trigger scoreboard
scoreboard players set @s bs.menu 0

tellraw @s [" "]
tellraw @s ["",{"text":"                    ۞ B L O C K  S H U F F L E ۞","color":"#ffa33f"}]
tellraw @s [{"text": "                     -Made by Sqweedy and co.-","color": "gray","italic": true}]
tellraw @s [" "]

#conditionally render Join Game hover text based on whether game has started
execute if score #game_started bs.dummy matches 1 if entity @s[team=bs.spectators] run tellraw @s [{"text":"> ","color":"#b7ee56"},{"text":"[Join Game]","color":"#b7ee56","clickEvent":{"action":"run_command","value":"/trigger bs.join"},"hoverEvent":{"action":"show_text","value":{"text":"Click Here to Join Existing Game!"}}}]
execute unless score #game_started bs.dummy matches 1 if entity @s[team=bs.spectators] run tellraw @s [{"text":"> ","color":"#b7ee56"},{"text":"[Join Game]","color":"#b7ee56","clickEvent":{"action":"run_command","value":"/trigger bs.join"},"hoverEvent":{"action":"show_text","value":{"text":"Click Here to Join Game!"}}}]
execute if score #game_started bs.dummy matches 1 if entity @s[team=bs.players] run tellraw @s [{"text":"> ","color":"#b7ee56"},{"text":"[Leave Game]","color":"#b7ee56","clickEvent":{"action":"run_command","value":"/trigger bs.leave"},"hoverEvent":{"action":"show_text","value":{"text":"Click Here to Leave Existing Game!"}}}]
execute unless score #game_started bs.dummy matches 1 if entity @s[team=bs.players] run tellraw @s [{"text":"> ","color":"#b7ee56"},{"text":"[Leave Game]","color":"#b7ee56","clickEvent":{"action":"run_command","value":"/trigger bs.leave"},"hoverEvent":{"action":"show_text","value":{"text":"Click Here to Leave Game!"}}}]

tellraw @s [{"text":"> ","color":"#b7ee56"},{"text":"[Rules]","color":"#b7ee56", "clickEvent":{"action":"run_command","value":"/trigger bs.rules"},"hoverEvent":{"action":"show_text","value":{"text":"Show Block Shuffle Rules"}}}]
tellraw @s [{"text":"> ","color":"#b7ee56"},{"text":"[Settings]","color":"#b7ee56", "clickEvent":{"action":"run_command","value":"/trigger bs.settings"},"hoverEvent":{"action":"show_text","value":{"text":"Configure Block Shuffle Settings"}}}]

tellraw @s [" "]
execute unless score #game_started bs.dummy matches 1 run tellraw @s [{"text":"               Click here to start game!","bold": true,"color": "#f88914","clickEvent": {"action": "run_command","value": "/trigger bs.start"},"hoverEvent": {"action": "show_text","value": "Click here to start game"}}]
execute if score #game_started bs.dummy matches 1 run tellraw @s [{"text":"                Click here to end game!","bold": true,"color": "#f88914","clickEvent": {"action": "run_command","value": "/trigger bs.end"},"hoverEvent": {"action": "show_text","value": "Click here to end game"}}]