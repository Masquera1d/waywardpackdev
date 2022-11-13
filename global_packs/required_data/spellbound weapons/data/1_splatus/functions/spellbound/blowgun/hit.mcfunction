
playsound minecraft:entity.arrow.hit player @a[distance=..20] ~ ~ ~ 1.5 1.5
playsound minecraft:block.sand.step player @a[distance=..20] ~ ~ ~ 1.5 1.5

particle poof ~ ~ ~ .1 .1 .1 .02 3 force @a[distance=..64]
particle block white_concrete_powder ~ ~ ~ .3 .3 .3 .15 10 force @a[distance=..64]
scoreboard players set @s spellbound_count 0
scoreboard players set @s spellbound_raycast 0
#tag @e[distance=..1.25] add spellbound_player4
execute as @e[distance=..1.25,sort=nearest,limit=1,type=!player,type=!#1_splatus:spellbound/misc] run function 1_splatus:spellbound/other/damage/entity_damage1

execute as @e[distance=..1.25,sort=nearest,limit=1,type=!player,type=!#1_splatus:spellbound/misc] run effect give @s wither 1 1 true


#execute if score count spellbound_count matches 1..5 run summon item ~ ~1 ~ {Item:{id:"arrow",Count:1b},Tags:["spellbound_player4"]}

execute as @e[distance=..1.25,sort=nearest,limit=1,type=!arrow,type=!item,type=!armor_stand,type=!area_effect_cloud,type=!#impact_projectiles] run particle dust 0.078 0.388 0.067 1.5 ~ ~.5 ~ .3 .5 .3 .2 10 normal


execute as @p[distance=..1.25,sort=nearest,limit=1] at @s if entity @s[advancements={1_splatus:used_shield=true}] run function 1_splatus:spellbound/blowgun/shield
execute as @p[distance=..1.25,sort=nearest,limit=1] at @s if entity @s[advancements={1_splatus:used_shield=false}] run function 1_splatus:spellbound/other/damage/entity_damage1

execute as @p[distance=..1.25,sort=nearest,limit=1] at @s if entity @s[advancements={1_splatus:used_shield=false}] run effect give @s poison 1 0 false




#flame

execute as @s[tag=spellbound_blowgun_arrow_raycast_flame] run function 1_splatus:spellbound/blowgun/boom


#drop

loot spawn ~ ~ ~ loot 1_splatus:other/randomize_5

execute store result score @s[tag=!spellbound_blowgun_arrow_raycast_infinity] spellbound_randomizer_output run data get entity @e[distance=..0.01,type=item,limit=1] Item.tag.SpellboundRandomizerOutput

kill @e[distance=..0.0001,type=item]
execute if score @s spellbound_randomizer_output matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b},Motion:[0.2,0.2,0.0]}
execute if score @s spellbound_randomizer_output matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b},Motion:[-0.2,0.2,0.0]}
execute if score @s spellbound_randomizer_output matches 3 run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b},Motion:[0.0,0.2,0.2]}
execute if score @s spellbound_randomizer_output matches 4 run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b},Motion:[0.0,0.2,-0.2]}


scoreboard players set @s spellbound_count 16
scoreboard players set @s spellbound_count2 128
kill @s
