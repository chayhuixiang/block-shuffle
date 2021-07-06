#store playercount inside #playerCount in bs.dummy
execute store result score #playerCount bs.dummy run team list bs.players

#calculate voteskip threshold
scoreboard players operation #voteskipThreshold bs.settings = #playerCount bs.dummy
scoreboard players operation #voteskipThreshold bs.settings *= #voteskip bs.settings
scoreboard players operation #voteskipThreshold bs.settings /= #100 bs.dummy
execute if score #voteskipThreshold bs.settings matches 0 run scoreboard players set #voteskipThreshold bs.settings 1

#if no players left and game running
execute if score #playerCount bs.dummy matches 0 if score #game_started bs.dummy matches 1 run title @a title " "
execute if score #playerCount bs.dummy matches 0 if score #game_started bs.dummy matches 1 run title @a subtitle {"text":"No Players Left!","color": "#ffa33f"}
execute if score #playerCount bs.dummy matches 0 if score #game_started bs.dummy matches 1 run schedule clear sqweedy:bs/game/check-block
execute if score #playerCount bs.dummy matches 0 if score #game_started bs.dummy matches 1 run schedule clear sqweedy:bs/game/start-countdown
execute if score #playerCount bs.dummy matches 0 if score #game_started bs.dummy matches 1 run schedule clear sqweedy:bs/game/round-end
execute if score #playerCount bs.dummy matches 0 if score #game_started bs.dummy matches 1 run schedule function sqweedy:bs/triggers/end 5s