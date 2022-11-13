
# crafting
execute if predicate 1_splatus:weapons_achieveable as @e[type=item,nbt={Item:{tag:{EmptyStaff:1}}}] at @s if entity @e[distance=..1,type=minecraft:item,tag=spellbound_item_staff] run function 1_splatus:spellbound/other/item_merging/empty_staff
execute if predicate 1_splatus:weapons_achieveable as @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:fire_charge"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] run function 1_splatus:spellbound/other/item_merging/bow
execute if predicate 1_splatus:weapons_achieveable as @e[type=item,nbt={Item:{id:"minecraft:bamboo",Count:1b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:cobblestone"}}] run function 1_splatus:spellbound/other/item_merging/bamboo
execute if predicate 1_splatus:weapons_achieveable as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{SpellboundBrokenCrucible:1}}}] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:redstone"}}] run function 1_splatus:spellbound/other/item_merging/broken
execute if predicate 1_splatus:weapons_achieveable as @e[type=item,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_sword"}}] run function 1_splatus:spellbound/other/item_merging/heart_of_the_sea
execute if predicate 1_splatus:weapons_achieveable as @e[type=item,nbt={Item:{id:"minecraft:diamond_sword",Count:1b}},nbt=!{Item:{tag:{SpellboundItem:1}}}] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ender_pearl"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:amethyst_shard"}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run function 1_splatus:spellbound/other/item_merging/diamond_sword



execute as @a at @s store result score @s spellbound_rotation run data get entity @s Rotation[1]


execute unless score spellbound_recipes spellbound_count matches 0 run function 1_splatus:spellbound/other/recipe_message




execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",tag:{SpellboundCrucible:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",tag:{EndExcalibur:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",tag:{SpellboundMoonlightEdge:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",tag:{SpellboundWithering:1}}}] at @s unless block ~ ~-0.1 ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/other/action/convert_netherite

#dyes
execute if score spellbound_dyes spellbound_count matches 1 as @e[type=item,nbt={Item:{id:"minecraft:diamond_sword",tag:{SpellboundCrucible:1}}}] at @s if block ~ ~ ~ water_cauldron run function 1_splatus:spellbound/other/dyes/check

#fried weapon lol
execute as @a[predicate=1_splatus:holding/tag/spellbound_netherite_sword] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate":"Your weapon burned whilst converting to netherite. Drop it on the ground to revert it back"}


execute store result score gamerule_mobGriefing spellbound_count run gamerule mobGriefing

execute as @a at @s run function 1_splatus:spellbound/other/action/durability_check


execute as @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}}] run tag @s add spellbound_item_staff
execute as @e[type=item,nbt={Item:{id:"minecraft:packed_ice"}}] run tag @s add spellbound_item_staff
execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone"}}] run tag @s add spellbound_item_staff

