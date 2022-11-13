execute if predicate 1_splatus:chance/75_percent run summon minecraft:area_effect_cloud ~ ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}
execute if predicate 1_splatus:chance/75_percent run summon minecraft:area_effect_cloud ~ ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant7"]}
execute if predicate 1_splatus:chance/75_percent run summon minecraft:area_effect_cloud ~-1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant4"]}
execute if predicate 1_splatus:chance/75_percent run summon minecraft:area_effect_cloud ~1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant3"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant2"]}

execute if entity @s[tag=spellbound_firestaff_area_enchanted] if predicate 1_splatus:chance/75_percent run summon minecraft:area_effect_cloud ~1 ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}
execute if entity @s[tag=spellbound_firestaff_area_enchanted] if predicate 1_splatus:chance/75_percent run summon minecraft:area_effect_cloud ~-1 ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}
execute if entity @s[tag=spellbound_firestaff_area_enchanted] if predicate 1_splatus:chance/75_percent run summon minecraft:area_effect_cloud ~-1 ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}
execute if entity @s[tag=spellbound_firestaff_area_enchanted] if predicate 1_splatus:chance/75_percent run summon minecraft:area_effect_cloud ~1 ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}


execute as @e[distance=..4.5,type=!#1_splatus:spellbound/misc] run data merge entity @s {Fire:60s}
particle explosion ~ ~1 ~ 2 2 2 0 4 force
particle large_smoke ~ ~.25 ~ 1 0 1 0 30 force
execute as @e[distance=..2.75] run function 1_splatus:spellbound/other/damage/entity_damage3
kill @s