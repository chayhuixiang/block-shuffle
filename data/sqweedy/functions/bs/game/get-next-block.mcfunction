execute store result score #block bs.dummy if score #difficulty bs.settings matches 1 run loot spawn ~ ~-2 ~ loot sqweedy:easyrandom
execute store result score #block bs.dummy if score #difficulty bs.settings matches 2 run loot spawn ~ ~-2 ~ loot sqweedy:normalrandom
execute store result score #block bs.dummy if score #difficulty bs.settings matches 3 run loot spawn ~ ~-2 ~ loot sqweedy:hardrandom
execute store result score #block bs.dummy if score #difficulty bs.settings matches 4 run loot spawn ~ ~-2 ~ loot sqweedy:insanerandom

function sqweedy:bs/game/announce-block