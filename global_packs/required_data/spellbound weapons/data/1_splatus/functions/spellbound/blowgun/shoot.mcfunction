execute run tag @p[scores={spellbound_blowgun=1..}] add spellbound_player_immunetodart
execute run tag @s add spellbound_arrow_checked2
execute as @p[scores={spellbound_blowgun=1..}] at @s positioned ^ ^ ^1.251 run summon marker ~ ~1.62 ~ {Tags:["spellbound_blowgun_arrow_raycast","spellbound_marker"]}
execute as @p[scores={spellbound_blowgun=1..}] at @s if score @s spellbound_blowgun_cooldown matches ..8 positioned ^ ^ ^1.251 run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_blowgun_arrow_raycast] add spellbound_blowgun_arrow_raycast_speed_slow
execute as @p[scores={spellbound_blowgun=1..}] at @s if score @s spellbound_blowgun_cooldown matches 9..15 positioned ^ ^ ^1.251 run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_blowgun_arrow_raycast] add spellbound_blowgun_arrow_raycast_speed_normal
execute as @p[scores={spellbound_blowgun=1..}] at @s if score @s spellbound_blowgun_cooldown matches 16.. positioned ^ ^ ^1.251 run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_blowgun_arrow_raycast] add spellbound_blowgun_arrow_raycast_speed_fast
execute as @p[scores={spellbound_blowgun=1..}] at @s if score @s spellbound_blowgun_cooldown matches 32.. positioned ^ ^ ^1.251 run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_blowgun_arrow_raycast] add spellbound_blowgun_arrow_raycast_speed_biggy
execute as @p[scores={spellbound_blowgun=1..}] at @s positioned ^ ^ ^1.251 run data modify entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] data.Owner set from entity @s UUID

execute as @p[scores={spellbound_blowgun=1..}] at @s[predicate=1_splatus:holding/weapon/blowgun] run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.5
execute as @p[scores={spellbound_blowgun=1..}] at @s[predicate=1_splatus:holding/weapon/blowgun_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage0.5
execute as @p[scores={spellbound_blowgun=1..}] at @s[predicate=1_splatus:holding/weapon/blowgun,predicate=!1_splatus:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.5
execute as @p[scores={spellbound_blowgun=1..}] at @s[predicate=1_splatus:holding/weapon/blowgun_offhand,predicate=!1_splatus:holding/enchant/unbreaking3_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage0.5



execute as @p[scores={spellbound_blowgun=1..}] unless entity @s[predicate=!1_splatus:holding/enchant/infinity,predicate=!1_splatus:holding/enchant/infinity_offhand] as @e[sort=nearest,limit=1,type=marker] run tag @s add spellbound_blowgun_arrow_raycast_infinity
execute as @p[scores={spellbound_blowgun=1..}] if score @s spellbound_blowgun_cooldown matches 16.. unless entity @s[predicate=!1_splatus:holding/enchant/flame,predicate=!1_splatus:holding/enchant/flame_offhand] as @e[sort=nearest,limit=1,type=marker] run tag @s add spellbound_blowgun_arrow_raycast_flame


execute as @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] at @s store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_blowgun=1..}] Rotation[0]
execute as @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] at @s store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_blowgun=1..}] Rotation[1]


execute run playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1.5 1.5
execute anchored eyes run kill @s[type=arrow]

execute as @p[scores={spellbound_blowgun=1..}] at @s run scoreboard players set @s spellbound_blowgun_cooldown 0
