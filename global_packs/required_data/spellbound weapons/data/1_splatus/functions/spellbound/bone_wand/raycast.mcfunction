execute unless score @s spellbound_count matches -100.. as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/enchant/luck_of_the_sea2] run scoreboard players set @s spellbound_count -20
execute unless score @s spellbound_count matches -100.. as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=1_splatus:holding/enchant/luck_of_the_sea3] run scoreboard players set @s spellbound_count -40
execute unless score @s spellbound_count matches -100.. as @s[predicate=1_splatus:holding/weapon/bone_wand,predicate=!1_splatus:holding/enchant/luck_of_the_sea2,predicate=!1_splatus:holding/enchant/luck_of_the_sea3] run scoreboard players set @s spellbound_count 0

execute unless score @s spellbound_count matches -100.. as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/enchant/luck_of_the_sea2_offhand] run scoreboard players set @s spellbound_count -20
execute unless score @s spellbound_count matches -100.. as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=1_splatus:holding/enchant/luck_of_the_sea3_offhand] run scoreboard players set @s spellbound_count -40
execute unless score @s spellbound_count matches -100.. as @s[predicate=1_splatus:holding/weapon/bone_wand_offhand,predicate=!1_splatus:holding/enchant/luck_of_the_sea2_offhand,predicate=!1_splatus:holding/enchant/luck_of_the_sea3] run scoreboard players set @s spellbound_count 0



scoreboard players add @s spellbound_count 1


execute unless block ^ ^ ^.1 #1_splatus:spellbound/bone_wand_replaceable run scoreboard players set @s spellbound_count 999

execute if score @s spellbound_count matches 10.. align zyx positioned ~.5 ~ ~.5 run function 1_splatus:spellbound/bone_wand/box
execute unless score @s spellbound_count matches 10.. positioned ^ ^ ^.1 if block ~ ~ ~ #1_splatus:spellbound/bone_wand_replaceable run function 1_splatus:spellbound/bone_wand/raycast
execute if score @s spellbound_count matches 10.. run scoreboard players reset @s spellbound_count
