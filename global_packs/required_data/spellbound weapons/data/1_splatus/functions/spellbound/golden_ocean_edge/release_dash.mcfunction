# break
execute as @s[predicate=!1_splatus:holding/enchant/unbreaking2,predicate=!1_splatus:holding/enchant/unbreaking3] if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.5
execute as @s[predicate=1_splatus:holding/enchant/unbreaking2] if predicate 1_splatus:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.5
execute as @s[predicate=1_splatus:holding/enchant/unbreaking3] if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.5



# break

execute as @s[predicate=1_splatus:holding/weapon/golden_ocean_edge,predicate=1_splatus:holding/tag/0_durability] run particle minecraft:block gold_block ~ ~1 ~ .4 .3 .4 .4 8 force
execute as @s[predicate=1_splatus:holding/weapon/golden_ocean_edge,predicate=1_splatus:holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=1_splatus:holding/weapon/golden_ocean_edge,predicate=1_splatus:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air


# water is special 
execute if block ~ ~ ~ lava run playsound minecraft:block.fire.extinguish player @a[distance=..30] ~ ~ ~ 1.25 1.25
execute unless block ~ ~ ~ lava run effect give @s[distance=..2.5] water_breathing 1 5 false
execute unless block ~ ~ ~ lava run effect give @s[distance=..2.5] dolphins_grace 3 5 false
execute unless block ~ ~ ~ lava run playsound minecraft:entity.dolphin.splash player @a[distance=..30] ~ ~ ~ 1.25 1.5
execute run particle effect ~ ~.5 ~ .7 .7 .7 .1 40 force @a[distance=..64]
#execute run playsound minecraft:entity.zombie.converted_to_drowned player @a[distance=..30] ~ ~ ~ 1.25 .75
execute unless block ~ ~ ~ lava run playsound minecraft:item.trident.riptide_3 ambient @a[distance=..30] ~ ~ ~ 2 1.25
execute run scoreboard players reset @s spellbound_golden_ocean_edge_effect
execute run function 1_splatus:spellbound/golden_ocean_edge/effect
execute run particle poof ~ ~.5 ~ .3 .5 .3 .2 15 force @a[distance=..32]
execute run playsound minecraft:ambient.underwater.enter player @a[distance=..32] ~ ~ ~ 1 1.5

execute if block ~ ~ ~ lava run particle large_smoke ~ ~1 ~ .3 .5 .3 .05 30 force @a[distance=..32]

execute unless block ~ ~ ~ lava run playsound minecraft:entity.zombie.converted_to_drowned player @a[distance=..30] ~ ~ ~ 1.25 1.75
playsound minecraft:entity.generic.swim player @a[distance=..30] ~ ~ ~ 1.25 .75

scoreboard players set @s spellbound_golden_ocean_edge_cooldown 0



tag @s add spellbound_golden_ocean_edge_player
