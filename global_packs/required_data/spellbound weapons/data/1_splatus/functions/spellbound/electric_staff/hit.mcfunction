execute if entity @s[tag=spellbound_electric_raycast_enchanted] run summon minecraft:area_effect_cloud ^ ^ ^ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_electric_staff_laser","spellbound_electric_staff_laser_enchanted"]}
execute if entity @s[tag=!spellbound_electric_raycast_enchanted] run summon minecraft:area_effect_cloud ^ ^ ^ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_electric_staff_laser"]}

data modify entity @e[limit=1,sort=nearest,tag=spellbound_electric_staff_laser] Owner set from entity @s data.Owner

execute at @s run function 1_splatus:spellbound/electric_staff/summon_electirc
execute if block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run kill @s