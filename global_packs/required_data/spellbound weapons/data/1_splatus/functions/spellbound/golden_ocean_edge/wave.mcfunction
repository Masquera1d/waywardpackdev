scoreboard players add @s spellbound_count 1
#execute if score @s spellbound_count matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_golden_ocean_edge=1..}] Rotation[1]
execute if score @s spellbound_count matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_golden_ocean_edge=1..}] Rotation[0]







#LAVA!!!! 
execute if block ~ ~ ~ lava run kill @s
execute if block ~ ~ ~ #1_splatus:spellbound/fire if predicate 1_splatus:chance/20_percent run function 1_splatus:spellbound/golden_ocean_edge/wave_remove_fire

execute if score @s spellbound_count matches 2.. at @s if block ~ ~-0.25 ~ #1_splatus:spellbound/permeable unless block ~ ~ ~ water run tp @s ~ ~-0.25 ~
execute if score @s spellbound_count matches 2.. at @s unless block ~ ~ ~ #1_splatus:spellbound/permeable run tp @s ~ ~0.25 ~


particle block blue_concrete ~ ~ ~ .2 .2 .2 0 2 force @a[distance=..64]
execute if predicate 1_splatus:chance/50_percent run particle poof ~ ~ ~ .2 .2 .2 .05 1 force @a[distance=..64]
particle falling_water ~ ~ ~ .2 .2 .2 0 14 force @a[distance=..64]


execute as @s if entity @e[distance=..1,type=blaze] as @e[distance=..1,type=blaze] run function 1_splatus:spellbound/other/damage/entity_damage3



execute if score @s spellbound_count matches 2.. at @s run tp @s ^ ^ ^.25

execute at @s if block ^ ^ ^.3 #1_splatus:spellbound/permeable run tag @e[distance=..0.599,type=!#1_splatus:spellbound/misc,nbt=!{NoAI:1b}] add spellbound_golden_ocean_edge_iscarried
execute at @s if block ^ ^ ^.3 #1_splatus:spellbound/permeable run tp @e[distance=..0.599,type=!#1_splatus:spellbound/misc,nbt=!{NoAI:1b}] ~ ~ ~

execute if score @s spellbound_count matches 2..9 at @s run tp @s ^ ^ ^.25

execute if score @s spellbound_count matches 2..9 at @s if block ^ ^ ^.3 #1_splatus:spellbound/permeable run tag @e[distance=..0.599,type=!#1_splatus:spellbound/misc,nbt=!{NoAI:1b}] add spellbound_golden_ocean_edge_iscarried
execute if score @s spellbound_count matches 2..9 at @s if block ^ ^ ^.3 #1_splatus:spellbound/permeable run tp @e[distance=..0.599,type=!#1_splatus:spellbound/misc,nbt=!{NoAI:1b}] ~ ~ ~


#kill events 

execute if score @s spellbound_count matches 11.. run kill @s
