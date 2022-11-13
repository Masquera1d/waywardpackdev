tag @s add spellbound_player_immunetocrucible
execute at @s rotated as @s run summon minecraft:marker ~.5 ~ ~.5 {Tags:["spellbound_crucible_releasedenergy","spellbound_marker"],CustomName:'{"translate":"Crucible Energy"}'}
playsound minecraft:item.trident.thunder player @a[distance=..48] ~ ~ ~ 3 .85
playsound minecraft:block.beacon.power_select player @a[distance=..48] ~ ~ ~ 3 .85
playsound minecraft:block.beacon.power_select player @a[distance=..48] ~ ~ ~ 3 1.25
playsound minecraft:ambient.cave player @a[distance=..48] ~ ~ ~ 3 2

playsound minecraft:entity.allay.ambient_without_item player @a[distance=..48] ~ ~ ~ 3 .55
playsound minecraft:entity.allay.ambient_without_item player @a[distance=..48] ~ ~ ~ 3 .55



execute if score @s spellbound_crucible_dye matches 1 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 1
execute if score @s spellbound_crucible_dye matches 2 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 2
execute if score @s spellbound_crucible_dye matches 3 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 3
execute if score @s spellbound_crucible_dye matches 4 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 4
execute if score @s spellbound_crucible_dye matches 5 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 5
execute if score @s spellbound_crucible_dye matches 6 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 6
execute if score @s spellbound_crucible_dye matches 7 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 7
execute if score @s spellbound_crucible_dye matches 8 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 8
execute if score @s spellbound_crucible_dye matches 9 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 9
execute if score @s spellbound_crucible_dye matches 10 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 10
execute if score @s spellbound_crucible_dye matches 11 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 11
execute if score @s spellbound_crucible_dye matches 12 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 12
execute if score @s spellbound_crucible_dye matches 13 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 13
execute if score @s spellbound_crucible_dye matches 14 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 14
execute if score @s spellbound_crucible_dye matches 15 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 15
execute if score @s spellbound_crucible_dye matches 16 positioned ^-.25 ^ ^.5 run scoreboard players set @e[sort=nearest,limit=1,type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 16


particle end_rod ~ ~1 ~ .3 .3 .3 .3 100 force @a[distance=..128]
particle flash ~ ~1 ~ 0 0 0 0 10 force @a[distance=..64]
scoreboard players set @s spellbound_crucible_energy 1
scoreboard players set @s spelbound_crucible_hit 0