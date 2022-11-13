
execute run summon minecraft:area_effect_cloud ^ ^ ^2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area1"]}
execute run summon minecraft:area_effect_cloud ^ ^ ^3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area2"]}
execute run summon minecraft:area_effect_cloud ^ ^ ^4 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area3"]}
execute run summon minecraft:area_effect_cloud ^ ^ ^5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area4"]}
execute run summon minecraft:area_effect_cloud ^ ^ ^6 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area5"]}

execute run summon minecraft:area_effect_cloud ^ ^ ^7 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area6"]}
execute run summon minecraft:area_effect_cloud ^ ^ ^8 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area7"]}
execute run summon minecraft:area_effect_cloud ^ ^ ^9 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area8"]}
execute run summon minecraft:area_effect_cloud ^ ^ ^10 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area9"]}
#execute run summon minecraft:area_effect_cloud ^ ^ ^1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area10"]}



execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^ ^11 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area10"]}
execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^ ^12 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area11"]}
execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^ ^13 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area12"]}
execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^ ^14 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area13"]}
execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^ ^15 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area14"]}
execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^ ^16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area15"]}
execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon minecraft:area_effect_cloud ^ ^ ^17 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area_sneak","spellbound_evoker_area16"]}


execute as @e[type=area_effect_cloud,tag=spellbound_evoker_area,tag=!spellbound_evoker_area_checked] run data modify entity @s Owner set from entity @p UUID
execute as @e[type=area_effect_cloud,tag=spellbound_evoker_area,tag=!spellbound_evoker_area_checked] run tag @s add spellbound_evoker_area_checked


execute run scoreboard players set @p spellbound_evoker_cooldown 0
