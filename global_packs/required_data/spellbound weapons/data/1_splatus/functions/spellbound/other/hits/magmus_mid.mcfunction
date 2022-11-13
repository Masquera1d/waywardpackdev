
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant6"]}
summon minecraft:area_effect_cloud ~ ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant7"]}
summon minecraft:area_effect_cloud ~ ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant8"]}
summon minecraft:area_effect_cloud ~1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}
summon minecraft:area_effect_cloud ~-1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant10"]}




execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~2 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant6"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-5 ~ ~2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant7"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~2 ~ ~-4 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant8"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-3 ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-1 ~ ~3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant10"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-2 ~ ~4 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant10"]}




execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-2 ~ ~-3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant6"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-3 ~ ~2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant7"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-3 ~ ~4 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant8"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~2 ~ ~-2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-2 ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant10"]}
execute if predicate 1_splatus:chance/20_percent run summon minecraft:area_effect_cloud ~-4 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant10"]}



particle explosion_emitter
kill @e[distance=..5,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area,sort=nearest,limit=1]
execute as @e[distance=..4.5,type=!item] run data merge entity @s {Fire:60s}
execute as @e[distance=..4.5] at @s run function 1_splatus:spellbound/other/damage/entity_damage6
playsound entity.generic.explode player @a[distance=..48] ~ ~ ~ 4 .8

kill @s