

scoreboard players add @s spellbound_count 1



execute if score @s spellbound_count matches 1..8 store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute if score @s spellbound_count matches 1..8 store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]

#movement

execute if block ^ ^ ^1 #1_splatus:spellbound/permeable if score @s spellbound_count matches 1..5 at @s run tp @s ^ ^ ^.8
execute if block ^ ^ ^1 #1_splatus:spellbound/permeable if score @s spellbound_count matches 6..10 at @s run tp @s ^ ^ ^.4
execute if block ^ ^ ^1 #1_splatus:spellbound/permeable if score @s spellbound_count matches 11..15 at @s run tp @s ^ ^ ^.2
execute if block ^ ^ ^1 #1_splatus:spellbound/permeable if score @s spellbound_count matches 16 at @s run tp @s ^ ^ ^.05

execute if score @s spellbound_count matches 20.. run particle squid_ink ~ ~1 ~ .05 .05 .05 .02 1 force @a[distance=..128]


#trail
execute if score @s spellbound_count matches 1..16 run execute positioned ~ ~1 ~ run particle sculk_soul ~ ~ ~ 0 0 0 0.005 1 force @a[distance=..64]
execute if score @s spellbound_count matches 1..16 run execute positioned ~ ~1 ~ run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
execute if score @s spellbound_count matches 16 run execute positioned ~ ~1 ~ run particle soul_fire_flame ~ ~ ~ 0 0 0 .2 15 force @a[distance=..64]




#boom

execute if score @s spellbound_count matches 16..60 run execute positioned ~ ~1 ~ run particle minecraft:sculk_charge 0 ~ ~1 ~ 1 1 1 .1 1 force @a[distance=..64]
execute if score @s spellbound_count matches 16..60 run execute positioned ~ ~1 ~ run particle sculk_soul ~ ~ ~ 0 0 0 .2 1 force @a[distance=..64]
execute if score @s spellbound_count matches 16 run playsound minecraft:entity.glow_squid.squirt player @a[distance=..32] ~ ~ ~ 2 .5


execute if score @s spellbound_count matches 8 run execute positioned ~ ~1 ~ run particle sonic_boom ~ ~ ~ 0 0 0 .02 1 force @a[distance=..64]


execute if score count0.25 spellbound_count matches 1 if score @s spellbound_count matches ..50 run execute positioned ~ ~1 ~ run particle enchant ~ ~ ~ 0 0 0 3 25 force @a[distance=..64]
execute if score count0.25 spellbound_count matches 1 if score @s spellbound_count matches 10..50 run playsound minecraft:entity.glow_squid.squirt player @a[distance=..32] ~ ~ ~ 2 .75

#execute if score count0.25 spellbound_count matches 1 if score @s[tag=spellbound_echo_wand_area2_enchanted] spellbound_count matches 41..55 run execute positioned ~ ~1 ~ run particle sonic_boom ~ ~ ~ 1.5 1.5 1.5 .02 1 force @a[distance=..64]
execute if score count0.25 spellbound_count matches 1 if score @s[tag=spellbound_echo_wand_area2_enchanted] spellbound_count matches 41..55 run playsound minecraft:entity.glow_squid.squirt player @a[distance=..32] ~ ~ ~ 2 .75



#pull


execute if score @s spellbound_count matches 16..50 as @e[type=!player,distance=..8,type=!#1_splatus:spellbound/misc_echo,nbt=!{NoAI:1b}] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.1
execute if score @s spellbound_count matches 16..50 as @e[type=!player,distance=..4,type=!#1_splatus:spellbound/misc_echo,nbt=!{NoAI:1b}] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.1
execute if score @s spellbound_count matches 16..50 as @e[distance=..2,type=!#1_splatus:spellbound/misc_echo,nbt=!{NoAI:1b}] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.2

execute if score @s spellbound_count matches 16..50 as @a[distance=..8,gamemode=!creative,gamemode=!spectator] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.1
execute if score @s spellbound_count matches 16..50 as @a[distance=..4,gamemode=!creative,gamemode=!spectator] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.1
execute if score @s spellbound_count matches 16..50 as @a[distance=..2,gamemode=!creative,gamemode=!spectator] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.2



execute if score @s[tag=spellbound_echo_wand_area2_enchanted] spellbound_count matches 51..65 as @e[type=!player,distance=..8,type=!#1_splatus:spellbound/misc_echo,nbt=!{NoAI:1b}] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.1
execute if score @s[tag=spellbound_echo_wand_area2_enchanted] spellbound_count matches 51..65 as @e[type=!player,distance=..4,type=!#1_splatus:spellbound/misc_echo,nbt=!{NoAI:1b}] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.1
execute if score @s[tag=spellbound_echo_wand_area2_enchanted] spellbound_count matches 51..65 as @e[distance=..2,type=!#1_splatus:spellbound/misc_echo,nbt=!{NoAI:1b}] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.2

execute if score @s[tag=spellbound_echo_wand_area2_enchanted] spellbound_count matches 51..65 as @a[distance=..8,gamemode=!creative,gamemode=!spectator] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.1
execute if score @s[tag=spellbound_echo_wand_area2_enchanted] spellbound_count matches 51..65 as @a[distance=..4,gamemode=!creative,gamemode=!spectator] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.1
execute if score @s[tag=spellbound_echo_wand_area2_enchanted] spellbound_count matches 51..65 as @a[distance=..2,gamemode=!creative,gamemode=!spectator] at @s facing entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_echo_wand_area2] eyes if block ^ ^ ^.6 #1_splatus:spellbound/permeable run tp @s ^ ^ ^.2





execute if score @s spellbound_count matches 70.. run kill @s