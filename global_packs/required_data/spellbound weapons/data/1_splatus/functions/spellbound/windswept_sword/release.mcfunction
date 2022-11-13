playsound minecraft:entity.phantom.flap player @a[distance=..16] ~ ~ ~ 1 1.25
playsound minecraft:entity.phantom.ambient player @a[distance=..32] ~ ~ ~ 1 .52
playsound minecraft:entity.vex.ambient player @a[distance=..16] ~ ~ ~ 1 1.25

#particle poof ~ ~ ~ .4 .4 .4 .05 5 force @a[distance=..32]

execute at @s unless block ~ ~-0.0001 ~ #1_splatus:spellbound/permeable if score @s spellbound_rotation matches 84..90 at @s run scoreboard players set @s spellbound_windswept_levitation 0
execute at @s unless block ~ ~-0.0001 ~ #1_splatus:spellbound/permeable if score @s spellbound_rotation matches 84..90 at @s run function 1_splatus:spellbound/windswept_sword/levitate



execute as @s[predicate=!1_splatus:holding/enchant/sweeping_edge3] positioned ~ ~ ~ run summon marker ^ ^ ^1.0001 {Tags:["spellbound_sand_wind","spellbound_sand_wind_heavy","spellbound_marker"]}
execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] positioned ~ ~ ~ run summon marker ^ ^ ^1.0001 {Tags:["spellbound_sand_wind","spellbound_sand_wind_heavy","spellbound_sand_wind_enchanted","spellbound_marker"]}
data modify entity @e[sort=nearest,limit=1,type=marker,tag=spellbound_sand_wind] Rotation set from entity @s Rotation


execute as @s[predicate=!1_splatus:holding/enchant/unbreaking2,predicate=!1_splatus:holding/enchant/unbreaking3] at @s if predicate 1_splatus:chance/50_percent run item modify entity @s weapon.mainhand 1_splatus:damage0.5
execute as @s[predicate=1_splatus:holding/enchant/unbreaking2] at @s if predicate 1_splatus:chance/33_percent run item modify entity @s weapon.mainhand 1_splatus:damage0.5
execute as @s[predicate=1_splatus:holding/enchant/unbreaking3] at @s if predicate 1_splatus:chance/25_percent run item modify entity @s weapon.mainhand 1_splatus:damage0.5


execute as @s[predicate=1_splatus:holding/tag/0_durability] run particle minecraft:block sand ~ ~1 ~ .4 .3 .4 .4 8 force
execute as @s[predicate=1_splatus:holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=1_splatus:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air



scoreboard players set @s spellbound_windswept_cooldown 0