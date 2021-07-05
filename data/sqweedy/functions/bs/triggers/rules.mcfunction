#Reset trigger scoreboard
scoreboard players set @s bs.rules 0

tellraw @s [" "]
tellraw @s [{"text":"Rules: ","color": "#f88914","bold": true,"underlined": true}]
tellraw @s [{"text": "- No Player Limit","color": "#ffa33f"}]
tellraw @s [{"text": "- Everybody will be given a block to step on before time runs out","color": "#ffa33f"}]
tellraw @s [{"text": "- You gain a point if you step on the block","color": "#ffa33f"}]
tellraw @s [{"text": "- Most number of points at the end of the game wins!","color": "#ffa33f"}]

#back to main menu
tellraw @s [" "]
tellraw @s [{"text":"<- Back to Main Menu","color": "#b7ee56","clickEvent": {"action": "run_command","value": "/trigger bs.menu"},"hoverEvent": {"action": "show_text","value": "Back to Main Menu"}}]