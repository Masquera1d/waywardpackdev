
execute as @s[tag=!spellbound_incauldron] run data merge entity @s {NoGravity:1}
execute as @s[tag=!spellbound_incauldron] run tag @s add spellbound_incauldron


execute if block ~ ~.5 ~ water_cauldron run data modify entity @s Motion[1] set value 0.05
execute unless block ~ ~.5 ~ water_cauldron run data modify entity @s Motion[1] set value 0.0

execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:red_dye"}}] run function 1_splatus:spellbound/other/dyes/1
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:orange_dye"}}] run function 1_splatus:spellbound/other/dyes/2
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:yellow_dye"}}] run function 1_splatus:spellbound/other/dyes/3
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:lime_dye"}}] run function 1_splatus:spellbound/other/dyes/4
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:green_dye"}}] run function 1_splatus:spellbound/other/dyes/5
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:cyan_dye"}}] run function 1_splatus:spellbound/other/dyes/6
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:light_blue_dye"}}] run function 1_splatus:spellbound/other/dyes/7
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:blue_dye"}}] run function 1_splatus:spellbound/other/dyes/8
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:purple_dye"}}] run function 1_splatus:spellbound/other/dyes/9
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:magenta_dye"}}] run function 1_splatus:spellbound/other/dyes/10
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:pink_dye"}}] run function 1_splatus:spellbound/other/dyes/11
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:brown_dye"}}] run function 1_splatus:spellbound/other/dyes/12
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:light_gray_dye"}}] run function 1_splatus:spellbound/other/dyes/14
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:gray_dye"}}] run function 1_splatus:spellbound/other/dyes/15
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:black_dye"}}] run function 1_splatus:spellbound/other/dyes/16
execute align zyx positioned ~.5 ~.5 ~.5 if entity @e[distance=..0.5,type=item,nbt={Item:{id:"minecraft:white_dye"}}] run function 1_splatus:spellbound/other/dyes/13
