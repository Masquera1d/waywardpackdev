
execute run summon minecraft:area_effect_cloud ^ ^1 ^2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area1"]}
execute run summon minecraft:area_effect_cloud ^ ^1 ^3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area2"]}
execute run summon minecraft:area_effect_cloud ^ ^1 ^4 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area3"]}
execute run summon minecraft:area_effect_cloud ^ ^1 ^5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area4"]}
execute run summon minecraft:area_effect_cloud ^ ^1 ^6 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area5"]}

execute run summon minecraft:area_effect_cloud ^ ^1 ^7 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area6"]}
execute run summon minecraft:area_effect_cloud ^ ^1 ^8 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area7"]}
execute run summon minecraft:area_effect_cloud ^ ^1 ^9 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area8"]}
execute run summon minecraft:area_effect_cloud ^ ^1 ^10 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area9"]}
#execute run summon minecraft:area_effect_cloud ^ ^ ^11 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area10"]}



execute at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^1 ^11 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area10"]}
execute at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^1 ^12 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area11"]}
execute at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^1 ^13 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area12"]}
execute at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^1 ^14 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area13"]}
execute at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^1 ^15 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area14"]}
execute at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^1 ^16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area15"]}
execute at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^1 ^17 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area16"]}

execute as @e[type=area_effect_cloud,tag=spellbound_evoker_area,tag=!spellbound_evoker_area_checked] run data modify entity @s Owner set from entity @p UUID
execute as @e[type=area_effect_cloud,tag=spellbound_evoker_area,tag=!spellbound_evoker_area_checked] run tag @s add spellbound_evoker_area_checked

execute run scoreboard players set @p spellbound_evoker_cooldown 0
