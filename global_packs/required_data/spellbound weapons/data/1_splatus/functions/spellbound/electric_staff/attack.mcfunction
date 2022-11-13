
# why are you in water?????
execute if block ~ ~ ~ water run playsound entity.zombie_villager.cure player @a[distance=..30] ~ ~ ~ 1.5 2
execute if block ~ ~ ~ water run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 1.5 1.25
execute if block ~ ~ ~ water run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 1.5 1.25
execute if block ~ ~ ~ water run particle end_rod ~ ~1 ~ 0 0 0 .2 20 force
execute if block ~ ~ ~ water run function 1_splatus:spellbound/other/damage/entity_damage6

execute as @s[predicate=1_splatus:holding/weapon/electric_staff,predicate=1_splatus:holding/enchant/unbreaking3] unless block ~ ~ ~ water if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/electric_staff,predicate=1_splatus:holding/enchant/unbreaking2] unless block ~ ~ ~ water if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/electric_staff,predicate=!1_splatus:holding/enchant/unbreaking3,predicate=!1_splatus:holding/enchant/unbreaking2] unless block ~ ~ ~ water if predicate 1_splatus:chance/75_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2

execute as @s[predicate=1_splatus:holding/weapon/electric_staff_offhand,predicate=1_splatus:holding/enchant/unbreaking3_offhand] unless block ~ ~ ~ water if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/electric_staff_offhand,predicate=1_splatus:holding/enchant/unbreaking2_offhand] unless block ~ ~ ~ water if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/electric_staff_offhand,predicate=!1_splatus:holding/enchant/unbreaking3_offhand,predicate=!1_splatus:holding/enchant/unbreaking2_offhand] unless block ~ ~ ~ water if predicate 1_splatus:chance/75_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2

#execute as @s run clear @s glowstone 1


# bam
execute as @s at @s run tag @s add spellbound_electric_staff_immune 

execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3,predicate=1_splatus:holding/weapon/electric_staff] at @s unless block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run summon marker ~ ~1.62 ~ {Tags:["spellbound_electric_raycast","spellbound_marker"]}
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3,predicate=1_splatus:holding/weapon/electric_staff] at @s unless block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run summon marker ~ ~1.62 ~ {Tags:["spellbound_electric_raycast","spellbound_electric_raycast_enchanted","spellbound_marker"]}

execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:holding/weapon/electric_staff_offhand] at @s unless block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run summon marker ~ ~1.62 ~ {Tags:["spellbound_electric_raycast","spellbound_marker"]}
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:holding/weapon/electric_staff_offhand] at @s unless block ~ ~ ~ #1_splatus:spellbound/allows_water_dashing run summon marker ~ ~1.62 ~ {Tags:["spellbound_electric_raycast","spellbound_electric_raycast_enchanted","spellbound_marker"]}

execute as @s at @s run data modify entity @e[limit=1,sort=nearest,tag=spellbound_electric_raycast] Rotation set from entity @s Rotation
execute as @s at @s run data modify entity @e[limit=1,sort=nearest,tag=spellbound_electric_raycast] data.Owner set from entity @s UUID

# break
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run particle minecraft:block yellow_concrete ~ ~1 ~ .4 .3 .4 .4 8 force
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run item replace entity @s weapon.mainhand with air

# break
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run particle minecraft:block yellow_concrete ~ ~1 ~ .4 .3 .4 .4 8 force
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run item replace entity @s weapon.mainhand with air


