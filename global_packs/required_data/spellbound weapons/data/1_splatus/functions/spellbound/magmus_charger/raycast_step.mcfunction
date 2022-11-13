execute at @s if score @s spellbound_count matches ..20 run scoreboard players add @s spellbound_count2 1
scoreboard players add @s spellbound_count 1

execute if score @s spellbound_count2 matches 1..4 store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute if score @s spellbound_count2 matches 1..4 store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]

execute at @s run particle flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..512]
execute at @s if predicate 1_splatus:chance/10_percent run particle lava ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]

execute at @s unless block ~ ~ ~ water if score @s spellbound_count matches ..20 run tp @s ^ ^ ^.25

execute at @s if block ~ ~ ~ water if score @s spellbound_count matches ..20 run tp @s ^ ^ ^.1
execute at @s if block ~ ~ ~ lava run tp @s ~ ~.4 ~


execute at @s if score @s spellbound_count matches ..20 if predicate 1_splatus:chance/50_percent run tp @s ^.05 ^ ^
execute at @s if score @s spellbound_count matches ..20 if predicate 1_splatus:chance/50_percent run tp @s ^-.05 ^ ^




execute at @s if block ~ ~ ~ #1_splatus:spellbound/breakable_by_magmus if score gamerule_mobGriefing spellbound_count matches 1 run function 1_splatus:spellbound/magmus_charger/oops_ice


execute at @s if score @s spellbound_count matches ..20 unless block ~ ~ ~ #1_splatus:spellbound/permeable run scoreboard players set @s spellbound_count 100
execute if score @s spellbound_count2 matches 250.. if score @s spellbound_count matches ..99 run scoreboard players set @s spellbound_count 100
execute unless block ~ ~ ~ water positioned ~ ~-.5 ~ if entity @e[distance=..1.25,type=!#1_splatus:spellbound/misc] if score @s spellbound_count matches ..99 if score @s spellbound_count2 matches 8.. run scoreboard players set @s spellbound_count 100
execute if block ~ ~ ~ water positioned ~ ~-.5 ~ if entity @e[distance=..1.25,type=!#1_splatus:spellbound/misc] if score @s spellbound_count matches ..99 if score @s spellbound_count2 matches 24.. run scoreboard players set @s spellbound_count 100


#max


execute at @s if score @s spellbound_count matches ..20 run function 1_splatus:spellbound/magmus_charger/raycast_step
execute at @s if score @s spellbound_count matches 21..35 run scoreboard players reset @s spellbound_count





execute at @s if score @s spellbound_count matches 100.. run function 1_splatus:spellbound/magmus_charger/hit










