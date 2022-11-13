
execute positioned ~ ~1 ~ positioned ^ ^ ^1.5 if block ~ ~ ~ #1_splatus:spellbound/bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ^ ^ ^1.5 if block ~ ~ ~ #1_splatus:spellbound/bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ bone_block
execute positioned ~ ~1 ~ positioned ^ ^ ^1.5 align xyz run particle cloud ~.5 ~.5 ~.5 .6 .6 .6 .05 15 force

# summon
execute as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=!1_splatus:holding/enchant/bone_enchant3,predicate=!1_splatus:holding/enchant/bone_enchant2] at @s positioned ~ ~1 ~ positioned ^ ^ ^1.5 align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area","spellbound_bone_wand_area1"]}
execute as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/enchant/bone_enchant3] at @s positioned ~ ~1 ~ positioned ^ ^ ^1.5 align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area_lureIII","spellbound_bone_wand_area","spellbound_bone_wand_area1"]}
execute as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/enchant/bone_enchant2] at @s positioned ~ ~1 ~ positioned ^ ^ ^1.5 align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area_lureII","spellbound_bone_wand_area","spellbound_bone_wand_area1"]}

execute as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=!1_splatus:holding/enchant/bone_enchant3_offhand,predicate=!1_splatus:holding/enchant/bone_enchant2_offhand] at @s positioned ~ ~1 ~ positioned ^ ^ ^1.5 align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area","spellbound_bone_wand_area1"]}
execute as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/enchant/bone_enchant3_offhand] at @s positioned ~ ~1 ~ positioned ^ ^ ^1.5 align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area_lureIII","spellbound_bone_wand_area","spellbound_bone_wand_area1"]}
execute as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/enchant/bone_enchant2_offhand] at @s positioned ~ ~1 ~ positioned ^ ^ ^1.5 align xyz run summon minecraft:area_effect_cloud ~.5 ~.5 ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area_lureII","spellbound_bone_wand_area","spellbound_bone_wand_area1"]}

execute align zyx positioned ~.5 ~1. ~.5 positioned ^ ^ ^1.5 store result score @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_uuid run data get entity @s UUID[0]
execute align zyx positioned ~.5 ~1 ~.5 positioned ^ ^ ^1.5 store result score @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_uuid2 run data get entity @s UUID[1]
execute align zyx positioned ~.5 ~1 ~.5 positioned ^ ^ ^1.5 store result score @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_uuid3 run data get entity @s UUID[2]
execute align zyx positioned ~.5 ~1 ~.5 positioned ^ ^ ^1.5 store result score @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_uuid4 run data get entity @s UUID[3]
