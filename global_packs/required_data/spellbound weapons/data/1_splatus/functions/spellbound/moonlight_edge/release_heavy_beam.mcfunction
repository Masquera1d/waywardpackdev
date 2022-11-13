

tag @s add spellbound_player_immunetomoonlightedge

# break
execute as @s[predicate=!1_splatus:holding/enchant/unbreaking2,predicate=!1_splatus:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.1
execute as @s[predicate=1_splatus:holding/enchant/unbreaking3] if predicate 1_splatus:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.1
execute as @s[predicate=1_splatus:holding/enchant/unbreaking2] if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.1

execute as @s[predicate=1_splatus:holding/weapon/moonlight_edge,predicate=1_splatus:holding/tag/0_durability] run particle minecraft:block amethyst_block ~ ~1 ~ .4 .3 .4 .4 8 force
execute as @s[predicate=1_splatus:holding/weapon/moonlight_edge,predicate=1_splatus:holding/tag/0_durability] run playsound item.shield.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=1_splatus:holding/weapon/moonlight_edge,predicate=1_splatus:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air

execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] positioned ~ ~.68 ~ run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:999999999,Tags:["spellbound_moonlight_edge_heavybeam","spellbound_moonlight_edge_heavybeam_sweeping"],CustomName:'{"translate":"Moonlight Edge Beam"}'}

execute as @s[predicate=!1_splatus:holding/enchant/sweeping_edge3] positioned ~ ~.68 ~ run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:999999999,Tags:["spellbound_moonlight_edge_heavybeam"],CustomName:'{"translate":"Moonlight Edge Beam"}'}

playsound minecraft:block.amethyst_block.break player @a[distance=..20] ~ ~ ~ 1.35 .5
playsound minecraft:entity.vex.hurt player @a[distance=..20] ~ ~ ~ 1.25 .75
playsound minecraft:entity.vex.hurt player @a[distance=..20] ~ ~ ~ 1.25 .75
playsound minecraft:entity.vex.hurt player @a[distance=..20] ~ ~ ~ 1.25 1
playsound minecraft:block.amethyst_cluster.step player @a[distance=..20] ~ ~ ~ 1.25 1.25
playsound minecraft:block.amethyst_cluster.step player @a[distance=..20] ~ ~ ~ 1.25 1
playsound minecraft:block.amethyst_cluster.place player @a[distance=..20] ~ ~ ~ 1 .9
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ .5 1.15

#tag @s add spellbound_player_immunetomoonlightedge
#execute as @e[distance=..4,tag=!spellbound_player_immunetomoonlightedge] run function 1_splatus:spellbound/other/damage/entity_damage6


particle end_rod ~ ~.5 ~ .5 .8 .5 .2 45 force @a[distance=..64]
particle flash ~ ~.5 ~ 0 0 0 .08 1 force @a[distance=..64]
#effect give @s resistance 2 2 false
tag @s add spellbound_player_usingbeam

scoreboard players set @s spellbound_moonlight_edge_cooldown 0