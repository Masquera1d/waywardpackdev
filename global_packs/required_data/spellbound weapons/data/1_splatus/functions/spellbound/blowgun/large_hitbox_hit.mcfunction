
playsound minecraft:entity.arrow.hit player @a[distance=..20] ~ ~ ~ 1.5 1.5
playsound minecraft:block.sand.step player @a[distance=..20] ~ ~ ~ 1.5 1.5


particle cloud ~ ~ ~ .3 .3 .3 .15 5 force
scoreboard players set @s spellbound_count 0
scoreboard players set @s spellbound_raycast 0
#tag @e[distance=..1.25] add spellbound_player4
execute as @e[distance=..3,sort=nearest,limit=1] run function 1_splatus:spellbound/other/damage/entity_damage1
execute as @e[distance=..3,sort=nearest,limit=1,type=!player] run effect give @s wither 4 1 true
execute as @e[distance=..3,sort=nearest,limit=1,type=player] run effect give @s poison 5 0 false
execute as @e[distance=..3,sort=nearest,limit=1] run scoreboard players set @s spellbound_poisoned 1
#execute if score count spellbound_count matches 1..5 run summon item ~ ~1 ~ {Item:{id:"arrow",Count:1b},Tags:["spellbound_player4"]}

summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blowgun_hit_region"]}
execute as @e[distance=..3,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] run particle dust 0.078 0.388 0.067 2 ~ ~.5 ~ 1 1 1 .2 20 normal




#fire
execute if entity @s[tag=spellbound_endlight_arrow_flamed] run playsound minecraft:block.fire.extinguish player @a[distance=..30] ~ ~ ~ 1.5 1.2
execute if entity @s[tag=spellbound_endlight_arrow_flamed] run particle flame ~ ~ ~ .3 .3 .3 .2 3 force @a[distance=..128]
execute if entity @s[tag=spellbound_endlight_arrow_flamed] run particle large_smoke ~ ~ ~ .3 .3 .3 .1 12 force @a[distance=..128]
execute if entity @s[tag=spellbound_endlight_arrow_flamed] as @e[distance=..3,limit=1,sort=nearest,type=!player,type=!#1_splatus:spellbound/misc] run data merge entity @s {Fire:60s}