scoreboard players add @s spellbound_count 1

execute run particle wax_on ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
execute as @s[type=area_effect_cloud,tag=spellbound_electric_staff_laser1] at @s run particle large_smoke ~ ~ ~ 0 0 0 .05 5 force @a[distance=..64]

execute if score @s spellbound_count matches 1 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..45] ~ ~ ~ 3 2
execute if score @s spellbound_count matches 1 run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 3 1.25
execute if score @s spellbound_count matches 1..6 run particle flash ~ ~ ~ 0 0 0 .1 2 force @a[distance=..64]
execute if score @s spellbound_count matches 1..6 run particle end_rod ~ ~ ~ 0 0 0 .5 5 force @a[distance=..64]
execute if score @s spellbound_count matches 1 as @e[distance=..1,type=!#1_splatus:spellbound/misc,tag=!spellbound_electric_staff_immune] run function 1_splatus:spellbound/other/damage/entity_damage7


#execute positioned ~ ~-0.75 ~ as @e[distance=..0.9,type=!#1_splatus:spellbound/misc,sort=nearest,limit=1] at @s run summon minecraft:snowball ~ ~3 ~ {Motion:[0.0,-5.0,0.0],Tags:["creatures_nonvariant","spellbound_damagewithuuid_snowball"],LeftOwner:1b,Item:{id:"minecraft:air",Count:1b}}


#execute positioned ~ ~-0.75 ~ as @e[tag=spellbound_damagewithuuid_snowball,type=snowball,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p[tag=spellbound_electric_staff_immune] UUID

execute if score @s spellbound_count matches 7.. run kill @s
