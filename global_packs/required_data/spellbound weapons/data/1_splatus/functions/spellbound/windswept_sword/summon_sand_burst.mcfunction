

scoreboard players add @s spellbound_count 1

execute if score @s spellbound_count matches 1 run playsound block.sand.break player @a[distance=..32] ~ ~ ~ 2 2
execute if score @s spellbound_count matches 1 run playsound block.sand.break player @a[distance=..32] ~ ~ ~ 2 2
execute if score @s spellbound_count matches 1 run playsound block.gravel.break player @a[distance=..32] ~ ~ ~ 2 2
execute if score @s spellbound_count matches 1 run playsound block.gravel.break player @a[distance=..32] ~ ~ ~ 2 .75
execute if score @s spellbound_count matches 1 run playsound block.sand.break player @a[distance=..32] ~ ~ ~ 2 .5
execute if score @s spellbound_count matches 1 run playsound block.sand.break player @a[distance=..32] ~ ~ ~ 2 .5
execute if score @s spellbound_count matches 1 run scoreboard players reset @s spellbound_sand_cooldown


execute if score @s spellbound_count matches 1 as @s[predicate=!1_splatus:holding/enchant/unbreaking2,predicate=!1_splatus:holding/enchant/unbreaking3] at @s run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage1
execute if score @s spellbound_count matches 1 as @s[predicate=1_splatus:holding/enchant/unbreaking2] at @s if predicate 1_splatus:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage1
execute if score @s spellbound_count matches 1 as @s[predicate=1_splatus:holding/enchant/unbreaking3] at @s if predicate 1_splatus:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage1


execute if score @s spellbound_count matches 1 as @s[predicate=1_splatus:holding/weapon/windswept_sword,predicate=1_splatus:holding/tag/0_durability] run particle minecraft:block sand ~ ~1 ~ .4 .3 .4 .4 8 force
execute if score @s spellbound_count matches 1 as @s[predicate=1_splatus:holding/weapon/windswept_sword,predicate=1_splatus:holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 1 as @s[predicate=1_splatus:holding/weapon/windswept_sword,predicate=1_splatus:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air


execute at @s run tp @s ~ ~ ~ ~11.25 ~

execute at @s[predicate=!1_splatus:holding/enchant/sweeping_edge3] run summon marker ~ ~ ~ {Tags:["spellbound_windswept_sand","spellbound_marker"]}
execute at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon marker ~ ~ ~ {Tags:["spellbound_windswept_sand","spellbound_windswept_sand_enchanted","spellbound_marker"]}

execute at @s store result entity @e[distance=..0.1,type=marker,tag=spellbound_windswept_sand,limit=1,tag=!spellbound_windswept_sand_checked] Rotation[0] float 1 run data get entity @s Rotation[0]

execute at @s as @e[distance=..0.01,type=marker,tag=spellbound_windswept_sand] run tag @s add spellbound_windswept_sand_checked

execute at @s unless score @s spellbound_count matches 32.. run function 1_splatus:spellbound/windswept_sword/summon_sand_burst

execute if score @s spellbound_count matches 32.. run scoreboard players reset @s spellbound_count