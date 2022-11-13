scoreboard players add @s spellbound_count 1

execute if score @s spellbound_count matches 1 run playsound minecraft:entity.phantom.ambient player @a[distance=..20] ~ ~ ~ 1 .8

execute as @s run particle poof ~ ~ ~ .1 .1 .1 .05 1 force @a[distance=..64]
execute as @s[tag=spellbound_sand_wind_enchanted] run particle poof ~ ~ ~ .5 .5 .5 .05 1 force @a[distance=..64]

execute if predicate 1_splatus:chance/20_percent run particle minecraft:block sand ~ ~1 ~ .5 .1 .5 .2 1 force @a[distance=..32]



execute as @p[distance=..1.25,sort=nearest,limit=1] at @s if entity @s[advancements={1_splatus:used_shield=true}] run function 1_splatus:spellbound/windswept_sword/shield


execute as @s[tag=!spellbound_sand_wind_enchanted] positioned ~ ~-0.5 ~ as @e[distance=..0.5,type=!#1_splatus:spellbound/misc] run effect give @s slowness 1 1 false
execute as @s[tag=spellbound_sand_wind_enchanted] positioned ~ ~-0.5 ~ as @e[distance=..1,type=!#1_splatus:spellbound/misc] run effect give @s slowness 1 1 false

execute as @s[tag=!spellbound_sand_wind_enchanted] positioned ~ ~-0.5 ~ as @e[distance=..0.5,type=!#1_splatus:spellbound/misc] at @s run particle minecraft:block sand ~ ~.15 ~ .3 .3 .3 .2 25 force @a[distance=..32]
execute as @s[tag=spellbound_sand_wind_enchanted] positioned ~ ~-0.5 ~ as @e[distance=..1,type=!#1_splatus:spellbound/misc] at @s run particle minecraft:block sand ~ ~.15 ~ .3 .1 .3 .2 25 force @a[distance=..32]



execute at @s if block ^ ^ ^.2 #1_splatus:spellbound/permeable_by_wind run tp @s[tag=!spellbound_sand_wind_heavy,tag=!spellbound_sand_wind_enchanted] ^ ^ ^.1 
execute at @s if block ^ ^ ^.6 #1_splatus:spellbound/permeable_by_wind run tp @s[tag=spellbound_sand_wind_heavy,tag=!spellbound_sand_wind_enchanted] ^ ^ ^.4

execute at @s if block ^ ^ ^.2 #1_splatus:spellbound/permeable_by_wind run tp @s[tag=!spellbound_sand_wind_heavy,tag=spellbound_sand_wind_enchanted] ^ ^ ^.15 
execute at @s if block ^ ^ ^.6 #1_splatus:spellbound/permeable_by_wind run tp @s[tag=spellbound_sand_wind_heavy,tag=spellbound_sand_wind_enchanted] ^ ^ ^.6

execute if score @s[tag=!spellbound_sand_wind_heavy] spellbound_count matches 15.. run kill @s
execute if score @s spellbound_count matches 30.. run kill @s