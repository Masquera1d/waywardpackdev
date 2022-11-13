

scoreboard players add count0.25 spellbound_count 1
execute if score count0.25 spellbound_count matches 5.. run scoreboard players set count0.25 spellbound_count 0

scoreboard players add count spellbound_count 1
execute if score count spellbound_count matches 20 run scoreboard players set count spellbound_count 0

scoreboard players add 2tick spellbound_count 1
execute if score 2tick spellbound_count matches 2 run scoreboard players set 2tick spellbound_count 0

scoreboard players add count5 spellbound_count 1
execute if score count5 spellbound_count matches 100 run scoreboard players set count5 spellbound_count 0





### SEA BLADE

execute as @e[type=!#1_splatus:spellbound/misc,scores={spellbound_curse_time=1..}] at @s run function 1_splatus:spellbound/other/cursed

# despawn
execute as @e[type=fireball,tag=spellbound_despawn_128blocks] at @s run scoreboard players add @s spellbound_count 1
execute as @e[type=fireball,tag=spellbound_despawn_128blocks] at @s if score @s spellbound_count matches 60.. run kill @s
execute as @e[type=fireball,tag=spellbound_despawn_128blocks,tag=spellbound_firestaff_fireball_enchanted] at @s if score @s spellbound_count matches 30.. run kill @s




### netherlight
execute as @a[scores={spellbound_netherlight=1..,spellbound_netherlight_cooldown=..19}] at @s run scoreboard players add @s spellbound_netherlight_cooldown 1



### arrow
execute as @e[tag=spellbound_chainfiring_arrow,nbt={inGround:1b}] at @s run scoreboard players reset @s spellbound_uuid
execute as @e[tag=spellbound_chainfiring_arrow,nbt={inGround:1b}] at @s run scoreboard players reset @s spellbound_uuid2

execute as @e[tag=spellbound_chainfiring_arrow_despawn,nbt={inGround:1b}] at @s run particle poof ~ ~ ~ 0 0 0 .05 2 normal
execute as @e[tag=spellbound_chainfiring_arrow_despawn,nbt={inGround:1b}] at @s run kill @s




execute as @e[type=area_effect_cloud,tag=spellbound_endlight_area] at @s unless entity @e[tag=spellbound_endlight_arrow,distance=..5] at @e[distance=..4,type=!#1_splatus:spellbound/misc,sort=nearest,limit=1,nbt={HurtTime:10s}] run function 1_splatus:spellbound/endlight/arrow
execute as @e[type=area_effect_cloud,tag=spellbound_endlight_area] at @s unless entity @e[tag=spellbound_endlight_arrow,distance=..5] run function 1_splatus:spellbound/endlight/arrow


### magmus_charger


### fish

execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",tag:{DetectCursedMobDeath:1}}}] at @s run function 1_splatus:spellbound/cursed_sea_blade/fish


execute if score count spellbound_count matches 0 run function 1_splatus:spellbound/other/clock_5_tick
execute if score count spellbound_count matches 4 run function 1_splatus:spellbound/other/clock_5_tick
execute if score count spellbound_count matches 8 run function 1_splatus:spellbound/other/clock_5_tick
execute if score count spellbound_count matches 12 run function 1_splatus:spellbound/other/clock_5_tick
execute if score count spellbound_count matches 16 run function 1_splatus:spellbound/other/clock_5_tick


execute if score 2tick spellbound_count matches 1 run function 1_splatus:spellbound/other/clock_10_tick




### stunned by crucible 



