



execute unless block ~ ~ ~ water run playsound item.firecharge.use player @a[distance=..32] ~ ~ ~ 1 1
execute if block ~ ~ ~ water run playsound block.fire.extinguish player @a[distance=..32] ~ ~ ~ 1 .8
execute if block ~ ~ ~ water run playsound minecraft:entity.leash_knot.break player @a[distance=..20] ~ ~ ~ 1 .5
execute if block ~ ~ ~ water run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute if block ~ ~ ~ water run playsound minecraft:block.fire.extinguish ambient @a[distance=..20] ~ ~ ~ 1 2

# actual hit
execute unless block ~ ~ ~ water run particle flame ^ ^ ^1.5 .3 .3 .3 .1 10 force

execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3,predicate=1_splatus:holding/weapon/fire_staff] unless block ~ ~ ~ water run summon area_effect_cloud ^ ^ ^ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_despawn_128blocks","spellbound_firestaff_area"],NoGravity:1b,Invulnerable:1b}
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3,predicate=1_splatus:holding/weapon/fire_staff] unless block ~ ~ ~ water run summon area_effect_cloud ^ ^ ^ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_despawn_128blocks","spellbound_firestaff_area","spellbound_firestaff_area_enchanted"],NoGravity:1b,Invulnerable:1b}

execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] unless block ~ ~ ~ water run summon area_effect_cloud ^ ^ ^ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_despawn_128blocks","spellbound_firestaff_area"],NoGravity:1b,Invulnerable:1b}
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] unless block ~ ~ ~ water run summon area_effect_cloud ^ ^ ^ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_despawn_128blocks","spellbound_firestaff_area","spellbound_firestaff_area_enchanted"],NoGravity:1b,Invulnerable:1b}


execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3,predicate=1_splatus:holding/weapon/fire_staff] unless block ~ ~ ~ water run summon fireball ^ ^ ^ {Tags:["spellbound_despawn_128blocks","spellbound_firestaff_fireball"],ExplosionPower:1}
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3,predicate=1_splatus:holding/weapon/fire_staff] unless block ~ ~ ~ water run summon fireball ^ ^ ^ {Tags:["spellbound_despawn_128blocks","spellbound_firestaff_fireball","spellbound_firestaff_fireball_enchanted"],ExplosionPower:1}

execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] unless block ~ ~ ~ water run summon fireball ^ ^ ^ {Tags:["spellbound_despawn_128blocks","spellbound_firestaff_fireball"],ExplosionPower:1}
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] unless block ~ ~ ~ water run summon fireball ^ ^ ^ {Tags:["spellbound_despawn_128blocks","spellbound_firestaff_fireball","spellbound_firestaff_fireball_enchanted"],ExplosionPower:1}




execute as @s unless block ~ ~ ~ water as @e[type=fireball,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID
execute as @s[predicate=!1_splatus:holding/enchant/luck_of_the_sea3] unless block ~ ~ ~ water as @e[type=fireball,sort=nearest,limit=1] at @s rotated as @p run function 1_splatus:spellbound/other/target_forward
execute as @s[predicate=1_splatus:holding/enchant/luck_of_the_sea3] unless block ~ ~ ~ water as @e[type=fireball,sort=nearest,limit=1] at @s rotated as @p run function 1_splatus:spellbound/other/target_forward_extra_speed_fireball

#break
execute as @s[predicate=1_splatus:holding/weapon/fire_staff,predicate=1_splatus:holding/enchant/unbreaking3] unless block ~ ~ ~ water if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/fire_staff,predicate=1_splatus:holding/enchant/unbreaking2] unless block ~ ~ ~ water if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/fire_staff,predicate=!1_splatus:holding/enchant/unbreaking3,predicate=!1_splatus:holding/enchant/unbreaking2] unless block ~ ~ ~ water if predicate 1_splatus:chance/75_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2

execute as @s[predicate=1_splatus:holding/weapon/fire_staff_offhand,predicate=1_splatus:holding/enchant/unbreaking3_offhand] unless block ~ ~ ~ water if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/fire_staff_offhand,predicate=1_splatus:holding/enchant/unbreaking2_offhand] unless block ~ ~ ~ water if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/fire_staff_offhand,predicate=!1_splatus:holding/enchant/unbreaking3_offhand,predicate=!1_splatus:holding/enchant/unbreaking2_offhand] unless block ~ ~ ~ water if predicate 1_splatus:chance/75_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2


#execute as @s unless block ~ ~ ~ water run clear @s fire_charge 1



# break
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:64}}]}] run particle minecraft:block orange_concrete ~ ~1 ~ .4 .3 .4 .4 8 force
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:64}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:64}}]}] run item replace entity @s weapon.mainhand with air

# break
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:63}}]}] run particle minecraft:block orange_concrete ~ ~1 ~ .4 .3 .4 .4 8 force
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:63}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_f_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{FireStaff:1,Damage:63}}]}] run item replace entity @s weapon.mainhand with air
