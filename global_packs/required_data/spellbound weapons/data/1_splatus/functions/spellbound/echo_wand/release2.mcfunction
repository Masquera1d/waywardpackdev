execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3,predicate=1_splatus:holding/weapon/echo_wand] positioned ~ ~1.25 ~ run summon minecraft:marker ^ ^ ^ {Tags:["spellbound_echo_wand_area2","spellbound_marker"]}
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3,predicate=1_splatus:holding/weapon/echo_wand] positioned ~ ~1.25 ~ run summon minecraft:marker ^ ^ ^ {Tags:["spellbound_echo_wand_area2","spellbound_echo_wand_area2_enchanted","spellbound_marker"]}

execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:holding/weapon/echo_wand_offhand] positioned ~ ~1.25 ~ run summon minecraft:marker ^ ^ ^ {Tags:["spellbound_echo_wand_area2","spellbound_marker"]}
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:holding/weapon/echo_wand_offhand] positioned ~ ~1.25 ~ run summon minecraft:marker ^ ^ ^ {Tags:["spellbound_echo_wand_area2","spellbound_echo_wand_area2_enchanted","spellbound_marker"]}


playsound minecraft:block.sculk_shrieker.break player @a[distance=..20] ~ ~ ~ 1 .5

playsound minecraft:entity.allay.item_taken player @a[distance=..32] ~ ~ ~ 1 .75

playsound minecraft:entity.allay.ambient_without_item player @a[distance=..32] ~ ~ ~ 1 .6

execute as @s[predicate=!1_splatus:holding/enchant/unbreaking2_offhand,predicate=!1_splatus:holding/enchant/unbreaking3,predicate=1_splatus:holding/weapon/echo_wand_offhand] if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/enchant/unbreaking3_offhand,predicate=1_splatus:holding/weapon/echo_wand_offhand] if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/enchant/unbreaking2_offhand,predicate=1_splatus:holding/weapon/echo_wand_offhand] if predicate 1_splatus:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2

execute as @s[predicate=!1_splatus:holding/enchant/unbreaking2,predicate=!1_splatus:holding/enchant/unbreaking3,predicate=1_splatus:holding/weapon/echo_wand] if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/enchant/unbreaking3,predicate=1_splatus:holding/weapon/echo_wand] if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/enchant/unbreaking2,predicate=1_splatus:holding/weapon/echo_wand] if predicate 1_splatus:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2