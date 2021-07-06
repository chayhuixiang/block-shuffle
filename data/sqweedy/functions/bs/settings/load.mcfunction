#Load default settings
# difficulty - Easy (1)
# roundtime - 5mins (5)
# keepInventory - true (1)
# voteskip threshold - 50% (50)

execute unless score #difficulty bs.settings matches 1.. run function sqweedy:bs/settings/difficulty/easy
execute unless score #roundtime bs.settings matches 5.. run function sqweedy:bs/settings/roundtime/five-mins
execute unless score #keepinventory bs.settings matches 0 run function sqweedy:bs/settings/keepinventory/true
execute unless score #voteskip bs.settings matches 50.. run function sqweedy:bs/settings/voteskip/fifty