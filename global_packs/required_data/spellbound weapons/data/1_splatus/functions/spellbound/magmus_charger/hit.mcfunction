

execute if score @s spellbound_count matches 101 if entity @s[tag=!spellbound_magmus_charger_arrow_area_max_power5,tag=!spellbound_magmus_charger_arrow_area_max_power4,tag=!spellbound_magmus_charger_arrow_area_max_power3] as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/other/damage/entity_damage3


execute if score @s spellbound_count matches 101 if entity @s[tag=spellbound_magmus_charger_arrow_area_max_power5] as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/other/damage/entity_damage7


execute if score @s spellbound_count matches 101 if entity @s[tag=spellbound_magmus_charger_arrow_area_max_power4] as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/other/damage/entity_damage7

execute if score @s spellbound_count matches 101 if entity @s[tag=spellbound_magmus_charger_arrow_area_max_power3] as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run function 1_splatus:spellbound/other/damage/entity_damage6


execute if score @s spellbound_count matches 101 as @s[tag=spellbound_magmus_charger_arrow_area_max_spectral] as @e[distance=..2,sort=nearest,limit=1,type=!#1_splatus:spellbound/misc] at @s run effect give @s glowing 12

execute if score @s spellbound_count matches 101.. run particle large_smoke ~ ~ ~ .3 .3 .3 .2 10 force @a[distance=..128]
execute if score @s spellbound_count matches 101.. run playsound minecraft:entity.blaze.hurt player @a[distance=..32] ~ ~ ~ 3 .75

execute if score @s spellbound_count matches 101..109 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if score @s spellbound_count matches 105 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if score @s spellbound_count matches 109 run particle flash ~ ~ ~ 0 0 0 0 4 force @a[distance=..128]

execute if score @s spellbound_count matches 101 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;16711680],FadeColors:[I;16744770]}]}}}}
execute if score @s spellbound_count matches 105 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;15627074],FadeColors:[I;15770975]}]}}}}
execute if score @s spellbound_count matches 109 run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;16765764],FadeColors:[I;15987064]}]}}}}

execute if score @s spellbound_count matches 101 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner
execute if score @s spellbound_count matches 105 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner
execute if score @s spellbound_count matches 109 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner

execute if score @s spellbound_count matches 120.. run function 1_splatus:spellbound/other/hits/magmus_max
execute if score @s spellbound_count matches 120.. run kill @s
