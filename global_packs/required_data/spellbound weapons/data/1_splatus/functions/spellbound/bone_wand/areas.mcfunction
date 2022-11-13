


scoreboard players add @s spellbound_count 1


### if someone tries being sneaky and taking the bone block
execute as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3] if block ~ ~ ~ air run scoreboard players set @s spellbound_count 100
execute as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3,limit=1]


## break (no lure) - 5 seconds
execute as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area,scores={spellbound_count=100..},tag=!spellbound_bone_wand_area_lureIII,tag=!spellbound_bone_wand_area_lureII] at @s run function 1_splatus:spellbound/bone_wand/break

## break (lure II) - 7.5 seconds
execute as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area,scores={spellbound_count=150..},tag=spellbound_bone_wand_area_lureII] at @s run function 1_splatus:spellbound/bone_wand/break

## break (lure III) - 10 seconds
execute as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area,scores={spellbound_count=200..},tag=spellbound_bone_wand_area_lureIII] at @s run function 1_splatus:spellbound/bone_wand/break


### huh there's no bone block
execute as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] at @s unless block ~ ~ ~ bone_block run scoreboard players set @s spellbound_count 100
execute as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] at @s unless block ~ ~ ~ bone_block run kill @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3,limit=1]


execute as @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] at @s unless block ~ ~ ~ bone_block run function 1_splatus:spellbound/bone_wand/break
