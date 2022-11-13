scoreboard players add @s spellbound_count 1
execute if score @s spellbound_count matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_moonlight_edge=1..}] Rotation[1]
execute if score @s spellbound_count matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_moonlight_edge=1..}] Rotation[0]

particle sweep_attack ~ ~ ~
particle end_rod ~ ~ ~ .3 .1 .3 .03 1 force @a[distance=..64]

execute if score @s spellbound_count matches 4.. positioned ~ ~-1 ~ as @e[distance=..1,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:used_shield=false}] at @s run function 1_splatus:spellbound/other/damage/entity_damage1
execute if score @s spellbound_count matches 4.. positioned ~ ~-1 ~ as @e[distance=..1,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:used_shield=true}] at @s run function 1_splatus:spellbound/other/action/damage_shield
execute if score @s spellbound_count matches 4.. positioned ~ ~-1 ~ as @e[distance=..1,type=player,tag=!spellbound_player_usingbeam] if entity @s[advancements={1_splatus:used_shield=true}] as @e[sort=nearest,limit=1,type=marker,tag=spellbound_moonlight_edge_beam] at @s run function 1_splatus:spellbound/moonlight_edge/hit
execute if score @s spellbound_count matches 4.. positioned ~ ~-1 ~ as @e[distance=..1,type=!player,type=!#1_splatus:spellbound/misc_beam,tag=!spellbound_player_usingbeam] run function 1_splatus:spellbound/other/damage/entity_damage1


execute if score @s spellbound_count matches 1.. unless block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/moonlight_edge/hit




execute if score @s spellbound_count matches 2.. run tp @s ^ ^ ^.75

execute if score @s spellbound_count matches 10.. run kill @s

