execute at @s run advancement grant @s only minecraft:adventure/spellbound_all_weapons warped_crossbow




execute as @s[predicate=1_splatus:holding/weapon/zg_crossbow,predicate=!1_splatus:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:ranged
execute as @s[predicate=1_splatus:holding/weapon/zg_crossbow_offhand,predicate=!1_splatus:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:ranged


execute at @s as @e[distance=..3,tag=!spellbound_arrow_checked2,type=arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run tag @s add spellbound_zgcrossbow_arrow
execute at @s as @e[distance=..3,tag=!spellbound_arrow_checked2,type=spectral_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run tag @s add spellbound_zgcrossbow_arrow




