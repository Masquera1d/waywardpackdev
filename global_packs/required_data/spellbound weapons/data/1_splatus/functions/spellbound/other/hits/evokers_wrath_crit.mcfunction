
execute positioned ^ ^ ^ run summon evoker_fangs ~ ~ ~ {Tags:["spellbound_fangs"]}
execute positioned ^ ^ ^ run summon evoker_fangs ~ ~ ~1.0 {Tags:["spellbound_fangs"]}
execute positioned ^ ^ ^ run summon evoker_fangs ~ ~ ~-1.0 {Tags:["spellbound_fangs"]}
execute positioned ^ ^ ^ run summon evoker_fangs ~1.0 ~ ~ {Tags:["spellbound_fangs"]}
execute positioned ^ ^ ^ run summon evoker_fangs ~-1.0 ~ ~ {Tags:["spellbound_fangs"]}

execute positioned ^ ^ ^ run summon area_effect_cloud ~1.0 ~ ~1.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area1"]}
execute positioned ^ ^ ^ run summon area_effect_cloud ~-1.0 ~ ~-1.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area1"]}
execute positioned ^ ^ ^ run summon area_effect_cloud ~1.0 ~ ~-1.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area1"]}
execute positioned ^ ^ ^ run summon area_effect_cloud ~-1.0 ~ ~1.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area1"]}

#execute positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area2"]}
#execute positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~-2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area2"]}
#execute positioned ^ ^ ^ run summon area_effect_cloud ~2 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area2"]}
#execute positioned ^ ^ ^ run summon area_effect_cloud ~-2 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area2"]}



summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex"],Invulnerable:1b}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex"],Invulnerable:1b}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex"],Invulnerable:1b}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex"],Invulnerable:1b}
summon vex ~ ~2 ~ {Tags:["spellbound_evoker_vex"],Invulnerable:1b}
execute if predicate 1_splatus:chance/10_percent run summon allay ~ ~2 ~ {Tags:["spellbound_evoker_vex"],Invulnerable:1b}




playsound minecraft:entity.vex.charge ambient @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:entity.vex.ambient ambient @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:entity.vex.charge ambient @a[distance=..20] ~ ~ ~ 1 .9
playsound minecraft:entity.vex.hurt ambient @a[distance=..20] ~ ~ ~ 1 .5

#execute positioned ^ ^ ^ at @s[predicate=1_splatus:holding/enchant/sweeping_edge3] run summon evoker_fangs ^ ^1 ^11 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_evoker_area","spellbound_evoker_area10"]}


execute as @e[type=area_effect_cloud,tag=spellbound_evoker_area,tag=!spellbound_evoker_area_checked] run data modify entity @s Owner set from entity @p UUID
execute as @e[type=area_effect_cloud,tag=spellbound_evoker_area,tag=!spellbound_evoker_area_checked] run tag @s add spellbound_evoker_area_checked


execute as @e[type=evoker_fangs,tag=spellbound_fangs,tag=!spellbound_fangs_checked] run data modify entity @s Owner set from entity @p UUID
execute as @e[type=evoker_fangs,tag=spellbound_fangs,tag=!spellbound_fangs_checked] run tag @s add spellbound_fangs_checked


execute run scoreboard players set @p[scores={spellbound_evoker=1..}] spellbound_evoker_cooldown 0
