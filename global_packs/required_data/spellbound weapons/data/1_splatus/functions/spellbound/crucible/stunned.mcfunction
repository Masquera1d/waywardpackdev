

data merge entity @s[tag=!spellbound_player_immunetocrucible] {NoAI:1b}
execute if score @s spellbound_crucible_stunned matches 1 as @s[tag=!spellbound_player_immunetocrucible] run particle flash
execute if score @s spellbound_crucible_stunned matches 1 as @s[tag=!spellbound_player_immunetocrucible] run particle end_rod ~ ~.5 ~ .3 1 .3 .1 20 force @a[distance=..64]
execute if score @s spellbound_crucible_stunned matches 1 as @s[tag=!spellbound_player_immunetocrucible] run playsound minecraft:entity.iron_golem.damage player @a[distance=..30] ~ ~ ~ 2 .7

execute if score @s spellbound_crucible_stunned matches 1 as @s[type=!player,tag=!spellbound_player_immunetocrucible] run function 1_splatus:spellbound/other/damage/entity_damage12
execute if score @s spellbound_crucible_stunned matches 1 as @s[type=player,tag=!spellbound_player_immunetocrucible] run function 1_splatus:spellbound/other/damage/entity_damage7

tp @s[tag=!spellbound_player_immunetocrucible] @s

scoreboard players add @s spellbound_crucible_stunned 1
execute if score @s spellbound_crucible_stunned matches 50.. run data merge entity @s {NoAI:0b}
execute if score @s spellbound_crucible_stunned matches 50.. run tag @s remove spellbound_player_immunetocrucible
execute if score @s spellbound_crucible_stunned matches 50.. run scoreboard players reset @s spellbound_crucible_stunned
