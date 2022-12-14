

execute as @s[predicate=1_splatus:holding/weapon/ice_staff,predicate=1_splatus:holding/enchant/unbreaking3] if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/ice_staff,predicate=1_splatus:holding/enchant/unbreaking2] if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/ice_staff,predicate=!1_splatus:holding/enchant/unbreaking3,predicate=!1_splatus:holding/enchant/unbreaking2] if predicate 1_splatus:chance/75_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage2


execute as @s[predicate=1_splatus:holding/weapon/ice_staff_offhand,predicate=1_splatus:holding/enchant/unbreaking3_offhand] if predicate 1_splatus:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/ice_staff_offhand,predicate=1_splatus:holding/enchant/unbreaking2_offhand] if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2
execute as @s[predicate=1_splatus:holding/weapon/ice_staff_offhand,predicate=!1_splatus:holding/enchant/unbreaking3_offhand,predicate=!1_splatus:holding/enchant/unbreaking2_offhand] if predicate 1_splatus:chance/75_percent run item modify entity @s[gamemode=!creative] weapon.offhand 1_splatus:damage2



#execute as @s[scores={spellbound_i_staff_cooldown=49..61}] run clear @s packed_ice 1

# amethyst playsound
execute as @s run playsound block.snow.place block @a[distance=..20]
execute as @s run playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ 1.5 .75
execute as @s run playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ 1.5 .75
execute as @s run playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ 1.5 2

# bam
execute as @s[predicate=1_splatus:holding/weapon/ice_staff,predicate=1_splatus:holding/enchant/luck_of_the_sea2] run summon armor_stand ^ ^ ^1.25 {Tags:["spellbound_ice_staff_ice","spellbound_ice_staff_ice_enchanted_low"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{SpellboundIceStaffBlock:1}}],Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"translate":"Ice Block"}'}
execute as @s[predicate=1_splatus:holding/weapon/ice_staff,predicate=1_splatus:holding/enchant/luck_of_the_sea3] run summon armor_stand ^ ^ ^1.25 {Tags:["spellbound_ice_staff_ice","spellbound_ice_staff_ice_enchanted"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{SpellboundIceStaffBlock:1}}],Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"translate":"Ice Block"}'}
execute as @s[predicate=1_splatus:holding/weapon/ice_staff,predicate=!1_splatus:holding/enchant/luck_of_the_sea3,predicate=!1_splatus:holding/enchant/luck_of_the_sea2] run summon armor_stand ^ ^ ^1.25 {Tags:["spellbound_ice_staff_ice"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{SpellboundIceStaffBlock:1}}],Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"translate":"Ice Block"}'}

execute as @s[predicate=1_splatus:holding/weapon/ice_staff_offhand,predicate=1_splatus:holding/enchant/luck_of_the_sea2_offhand] run summon armor_stand ^ ^ ^1.25 {Tags:["spellbound_ice_staff_ice","spellbound_ice_staff_ice_enchanted_low"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{SpellboundIceStaffBlock:1}}],Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"translate":"Ice Block"}'}
execute as @s[predicate=1_splatus:holding/weapon/ice_staff_offhand,predicate=1_splatus:holding/enchant/luck_of_the_sea3_offhand] run summon armor_stand ^ ^ ^1.25 {Tags:["spellbound_ice_staff_ice","spellbound_ice_staff_ice_enchanted"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{SpellboundIceStaffBlock:1}}],Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"translate":"Ice Block"}'}
execute as @s[predicate=1_splatus:holding/weapon/ice_staff_offhand,predicate=!1_splatus:holding/enchant/luck_of_the_sea3_offhand,predicate=!1_splatus:holding/enchant/luck_of_the_sea2_offhand] run summon armor_stand ^ ^ ^1.25 {Tags:["spellbound_ice_staff_ice"],ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b,tag:{SpellboundIceStaffBlock:1}}],Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"translate":"Ice Block"}'}

execute as @s run data modify entity @e[type=armor_stand,tag=spellbound_ice_staff_ice,sort=nearest,limit=1] Rotation set from entity @s Rotation


execute as @s run particle minecraft:poof ~ ~1.5 ~ .3 .3 .3 .075 10 force @a[distance=..32]

# break
#execute as @s[scores={spellbound_i_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundIceStaff:1,Damage:64}}]}] run particle minecraft:block orange_concrete ~ ~1 ~ .4 .3 .4 .4 8 force
#execute as @s[scores={spellbound_i_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundIceStaff:1,Damage:64}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_i_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundIceStaff:1,Damage:64}}]}] run item replace entity @s weapon.mainhand with air

# break
#execute as @s[scores={spellbound_i_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundIceStaff:1,Damage:63}}]}] run particle minecraft:block orange_concrete ~ ~1 ~ .4 .3 .4 .4 8 force
#execute as @s[scores={spellbound_i_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundIceStaff:1,Damage:63}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_i_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",Count:1b,tag:{SpellboundIceStaff:1,Damage:63}}]}] run item replace entity @s weapon.mainhand with air

