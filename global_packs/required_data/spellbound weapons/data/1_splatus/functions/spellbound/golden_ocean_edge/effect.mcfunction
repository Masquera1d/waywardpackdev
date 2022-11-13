#dash functions
scoreboard players add @s spellbound_golden_ocean_edge_effect 1

execute if block ~ ~0.1 ~ #1_splatus:spellbound/air unless score @s spellbound_golden_ocean_edge_effect2 matches 1.. run function 1_splatus:spellbound/golden_ocean_edge/jump



execute if block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing unless block ~ ~ ~ lava if block ^ ^ ^.5 #1_splatus:spellbound/permeable if score @s spellbound_golden_ocean_edge_effect matches 1..20 run tp @s ^ ^ ^.5
execute if block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing unless block ~ ~ ~ lava if block ^ ^ ^.3 #1_splatus:spellbound/permeable if score @s spellbound_golden_ocean_edge_effect matches 21..40 run tp @s ^ ^ ^.3
execute if block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing unless block ~ ~ ~ lava if block ^ ^ ^.1 #1_splatus:spellbound/permeable if score @s spellbound_golden_ocean_edge_effect matches 41..50 run tp @s ^ ^ ^.15
execute if block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing unless block ~ ~ ~ lava if block ^ ^ ^.1 #1_splatus:spellbound/permeable if score @s spellbound_golden_ocean_edge_effect matches 51..55 run tp @s ^ ^ ^.05



execute unless block ~ ~ ~ lava run particle effect ~ ~.5 ~ .2 .2 .2 1 5 force @a[distance=..32]
execute unless block ~ ~ ~ lava run particle minecraft:sculk_charge_pop ~ ~.5 ~ .3 .3 .3 .025 3 force @a[distance=..32]













execute if score @s spellbound_golden_ocean_edge_effect matches 60.. run effect clear @s dolphins_grace
execute if score @s spellbound_golden_ocean_edge_effect matches 60.. run scoreboard players reset @s spellbound_golden_ocean_edge_effect