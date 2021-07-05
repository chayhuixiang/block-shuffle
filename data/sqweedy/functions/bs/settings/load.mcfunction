#Load default settings
# difficulty - Easy (1)
# roundtime - 5mins (5)
# keepInventory - true (1)
# voteskip threshold - 50% (50)

execute unless score #difficulty bs.settings matches 1.. run scoreboard players set #difficulty bs.settings 1
execute unless score #roundtime bs.settings matches 5.. run scoreboard players set #roundtime bs.settings 5
execute unless score #keepinventory bs.settings matches 0 run scoreboard players set #keepinventory bs.settings 1
execute unless score #voteskip bs.settings matches 50.. run scoreboard players set #voteskip bs.settings 50