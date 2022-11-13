
scoreboard players add @s spellbound_count 1
execute if score @s spellbound_count matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_moonlight_edge=1..}] Rotation[1]
execute if score @s spellbound_count matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_moonlight_edge=1..}] Rotation[0]

particle sweep_attack ~ ~ ~ 0 0 0 .03 1 force @a[distance=..128]
particle end_rod ~ ~ ~ .3 .1 .3 .03 1 force @a[distance=..128]





execute if score @s spellbound_count matches 2.. positioned ~ ~-1 ~ as @e[distance=..1.25,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:used_shield=true}] at @s run function 1_splatus:spellbound/moonlight_edge/shield
execute if score @s spellbound_count matches 2.. positioned ~ ~-1 ~ as @e[distance=..1.25,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:used_shield=false}] at @s run function 1_splatus:spellbound/other/damage/entity_damage7
execute if score @s spellbound_count matches 2.. positioned ~ ~-1 ~ as @e[distance=..1.25,type=!player,type=!#1_splatus:spellbound/misc_beam,tag=!spellbound_player_usingbeam] run function 1_splatus:spellbound/other/damage/entity_damage7


#POWER REDSTONE! 
execute if block ~ ~ ~ lever run function 1_splatus:spellbound/other/redstone/power_lever
execute if block ~ ~ ~ redstone_lamp run function 1_splatus:spellbound/other/redstone/power_redstone_lamp

function 1_splatus:spellbound/other/redstone/power_observer

execute if score @s spellbound_count matches 6.. unless block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/moonlight_edge/hit



execute at @s if score @s spellbound_count matches 2.. run tp @s ^ ^ ^1.25
execute at @s if score @s[tag=spellbound_moonlight_edge_heavybeam_sweeping] spellbound_count matches 2.. run tp @s ^ ^ ^.625


execute if score @s spellbound_count matches 30.. run kill @s
