execute run tag @p[scores={spellbound_end=1..}] add spellbound_end_excalibur_player
execute as @e[tag=!spellbound_end_excalibur_player,distance=..3] run function 1_splatus:spellbound/other/damage/entity_damage7


particle flash ~ ~1 ~ 0 0 0 1 5 force @a[distance=..64]
execute run particle minecraft:dragon_breath ~ ~1 ~ .5 .5 .5 .05 40 force @a[distance=..128]
execute run particle minecraft:end_rod ~ ~1 ~ 0 0 0 .5 120 force @a[distance=..128]
execute run playsound item.trident.thunder player @a[distance=..30] ~ ~ ~ 2 2

execute at @s run scoreboard players set @p spellbound_cooldown 0
