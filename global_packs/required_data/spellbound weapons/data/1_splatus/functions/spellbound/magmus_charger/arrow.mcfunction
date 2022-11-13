scoreboard players add @s spellbound_count 1

execute if score @s[tag=spellbound_magmus_charger_arrow_max] spellbound_count matches 1 run playsound minecraft:item.firecharge.use player @a[distance=..32] ~ ~ ~ 2 .6
particle flame ~ ~ ~ .3 .3 .3 .005 1 force @a[distance=..64]




execute if score @s[tag=spellbound_magmus_charger_arrow_mid] spellbound_count matches 1 run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_magmus_charger_arrow_area","spellbound_magmus_charger_arrow_area_mid"]}



tp @e[limit=1,sort=nearest,type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area] @s



execute if block ~ ~-0.25 ~ lava run data modify entity @s Motion[1] set value 0.3




execute if entity @s[tag=spellbound_magmus_charger_arrow_mid,nbt={inGround:1b}] as @e[distance=..4.5,type=!#1_splatus:spellbound/misc] run data merge entity @s {Fire:60s}
execute if entity @s[tag=spellbound_magmus_charger_arrow_min,nbt={inGround:1b}] run function 1_splatus:spellbound/other/hits/magmus_min
execute if entity @s[tag=spellbound_magmus_charger_arrow_mid,nbt={inGround:1b}] run function 1_splatus:spellbound/other/hits/magmus_mid

execute if entity @s[tag=spellbound_magmus_charger_arrow_max] run function 1_splatus:spellbound/magmus_charger/summon
execute if entity @s[tag=spellbound_magmus_charger_arrow_max] run kill @s









execute if entity @s[tag=spellbound_magmus_charger_arrow_mid] run particle lava ~ ~ ~ 0 0 0 .1 1 force @a[distance=..128]


