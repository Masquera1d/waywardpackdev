
execute if block ~ ~ ~ #1_splatus:spellbound/bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #1_splatus:spellbound/bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ bone_block
execute run particle cloud ~ ~ ~ .6 .6 .6 .05 15 force

# summon
execute as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=!1_splatus:holding/enchant/lure3,predicate=!1_splatus:holding/enchant/lure2] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area","spellbound_bone_wand_area1"]}
execute as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/enchant/lure3] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area_lureIII","spellbound_bone_wand_area","spellbound_bone_wand_area1"]}
execute as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/enchant/lure2] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area_lureII","spellbound_bone_wand_area","spellbound_bone_wand_area1"]}

execute as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=!1_splatus:holding/enchant/lure3_offhand,predicate=!1_splatus:holding/enchant/lure2_offhand] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area","spellbound_bone_wand_area1"]}
execute as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/enchant/lure3_offhand] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area_lureIII","spellbound_bone_wand_area","spellbound_bone_wand_area1"]}
execute as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/enchant/lure2_offhand] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_bone_wand_area_lureII","spellbound_bone_wand_area","spellbound_bone_wand_area1"]}

execute store result score @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_uuid run data get entity @s UUID[0]
execute store result score @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_uuid2 run data get entity @s UUID[1]
execute store result score @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_uuid3 run data get entity @s UUID[2]
execute store result score @e[distance=..1.5,sort=nearest,limit=1,type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_uuid4 run data get entity @s UUID[3]
