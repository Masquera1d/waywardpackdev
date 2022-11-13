advancement grant @s only minecraft:adventure/spellbound_all_weapons bone_wand


execute if score count spellbound_count matches 1 if score spellbound_tip spellbound_count matches 1 run tellraw @s[tag=!spellbound_player_hasbeenchecked_bonewand] [{"translate":"","color":"gray"},{"translate": "Weapon Tip:","color": "yellow"},{"translate":" Triple clicking "},{"keybind":"key.sneak","color": "gray"},{"translate":" will break your currently existing bone blocks.","color": "gray"}]
execute if score count spellbound_count matches 1 if score spellbound_tip spellbound_count matches 1 run tag @s add spellbound_player_hasbeenchecked_bonewand


execute as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=!1_splatus:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:ranged
execute as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=!1_splatus:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:ranged



#execute as @s[predicate=!1_splatus:sneaking] positioned ^ ^ ^1.5 positioned ~ ~1 ~ align zyx run tp @e[type=magma_cube,tag=spellbound_bone_wand_selection] ~.5 ~-.05 ~.5
#execute as @s[predicate=1_splatus:sneaking] positioned ^ ^ ^1.5 positioned ~ ~ ~ align zyx run tp @e[type=magma_cube,tag=spellbound_bone_wand_selection] ~.5 ~-.05 ~.5

execute positioned ^ ^ ^1.5 align zyx positioned ~.5 ~1 ~.5 run function 1_splatus:spellbound/bone_wand/box
#execute if entity @s[predicate=1_splatus:sneaking] positioned ~ ~1.65 ~ align zyx positioned ~.5 ~.5 ~.5 run function 1_splatus:spellbound/bone_wand/raycast

tag @s add spellbound_player_usingbonewand







execute run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]
execute as @s[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b,tag:{SpellboundBoneWand:1}}]}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]

execute run item modify entity @s[predicate=1_splatus:holding/weapon/bone_wand] weapon.mainhand 1_splatus:bone_wand
execute run item modify entity @s[predicate=1_splatus:holding/weapon/bone_wand_offhand] weapon.offhand 1_splatus:bone_wand




### right click
execute as @s[scores={spellbound_bonewand=1..,spellbound_right_click=1..}] at @s positioned ~ ~1 ~ positioned ^ ^ ^1.5 if block ~ ~ ~ #1_splatus:spellbound/bone_wand_replaceable unless entity @e[distance=..0.5,type=area_effect_cloud,tag=spellbound_bone_wand_area] positioned ~ ~-1 ~ positioned ^ ^ ^-1.5 run function 1_splatus:spellbound/bone_wand/right_click
#execute as @s[scores={spellbound_bonewand=1..,spellbound_right_click=1..},predicate=1_splatus:sneaking] at @s positioned ~ ~ ~ positioned ^ ^ ^1.5 if block ~ ~ ~ #1_splatus:spellbound/air unless entity @e[distance=..0.5,type=area_effect_cloud,tag=spellbound_bone_wand_area] positioned ~ ~ ~ positioned ^ ^ ^-1.5 run function 1_splatus:spellbound/bone_wand/right_click_sneaking

### right click 2
execute as @s[scores={spellbound_bonewand=1..,spellbound_right_click=1..},predicate=1_splatus:holding/weapon/bone_wand,predicate=!1_splatus:holding/enchant/unbreaking3,predicate=!1_splatus:holding/enchant/unbreaking2] at @s if predicate 1_splatus:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2

execute as @s[scores={spellbound_bonewand=1..,spellbound_right_click=1..},predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/enchant/unbreaking2] at @s if predicate 1_splatus:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[scores={spellbound_bonewand=1..,spellbound_right_click=1..},predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/enchant/unbreaking3] at @s if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2


execute as @s[scores={spellbound_bonewand=1..,spellbound_right_click=1..},predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=!1_splatus:holding/enchant/unbreaking3_offhand,predicate=!1_splatus:holding/enchant/unbreaking2_offhand] at @s if predicate 1_splatus:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2

execute as @s[scores={spellbound_bonewand=1..,spellbound_right_click=1..},predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/enchant/unbreaking2_offhand] at @s if predicate 1_splatus:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[scores={spellbound_bonewand=1..,spellbound_right_click=1..},predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/enchant/unbreaking3_offhand] at @s if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2




# break
execute as @s[scores={spellbound_bonewand=1},predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/tag/0_durability] run particle minecraft:block bone_block ~ ~1 ~ .4 .3 .4 .4 8 force
execute as @s[scores={spellbound_bonewand=1},predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/tag/0_durability] at @s run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 1.5
execute as @s[scores={spellbound_bonewand=1},predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/tag/0_durability] at @s run playsound entity.skeleton.death player @a[distance=..10] ~ ~ ~ 1 2
execute as @s[scores={spellbound_bonewand=1},predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air

execute as @s[scores={spellbound_bonewand=1},predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/tag/0_durability_offhand] run particle minecraft:block bone_block ~ ~1 ~ .4 .3 .4 .4 8 force
execute as @s[scores={spellbound_bonewand=1},predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/tag/0_durability_offhand] at @s run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 1.5
execute as @s[scores={spellbound_bonewand=1},predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/tag/0_durability_offhand] at @s run playsound entity.skeleton.death player @a[distance=..10] ~ ~ ~ 1 2
execute as @s[scores={spellbound_bonewand=1},predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/tag/0_durability_offhand] run item replace entity @s weapon.offhand with air



# break all with triple shift
execute as @s[scores={spellbound_bonewand=1,spellbound_sneak_count=3..}] at @s as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 at @s run fill ~ ~ ~ ~ ~ ~ air replace bone_block


