execute run tag @s add spellbound_blazing_sword_player
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area1"]}
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area2"]}
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^4 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area3"]}
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area4"]}
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^6 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area5"]}

execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^7 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area6"]}
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^8 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area7"]}
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^9 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area8"]}
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^10 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area9"]}
execute at @s[tag=spellbound_blazing_sword_player] run summon minecraft:area_effect_cloud ^ ^ ^11 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area10"]}



playsound minecraft:block.fire.extinguish player @a[distance=..30] ~ ~ ~ 1 1.25

#more if fire aspect 2
execute as @s[tag=spellbound_blazing_sword_player] at @s[predicate=1_splatus:holding/enchant/fire_aspect2] run summon minecraft:area_effect_cloud ^ ^ ^12 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area11"]}
execute as @s[tag=spellbound_blazing_sword_player] at @s[predicate=1_splatus:holding/enchant/fire_aspect2] run summon minecraft:area_effect_cloud ^ ^ ^13 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area12"]}
execute as @s[tag=spellbound_blazing_sword_player] at @s[predicate=1_splatus:holding/enchant/fire_aspect2] run summon minecraft:area_effect_cloud ^ ^ ^14 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area13"]}
execute as @s[tag=spellbound_blazing_sword_player] at @s[predicate=1_splatus:holding/enchant/fire_aspect2] run summon minecraft:area_effect_cloud ^ ^ ^15 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area14"]}
execute as @s[tag=spellbound_blazing_sword_player] at @s[predicate=1_splatus:holding/enchant/fire_aspect2] run summon minecraft:area_effect_cloud ^ ^ ^16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area","spellbound_blazing_sword_area15"]}





execute run tag @s remove spellbound_blazing_sword_player

execute run scoreboard players set @s spellbound_b_cooldown 0


