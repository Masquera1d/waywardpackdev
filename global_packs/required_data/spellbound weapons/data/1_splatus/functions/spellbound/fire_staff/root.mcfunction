

advancement grant @s only minecraft:adventure/spellbound_all_weapons fire_staff


execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_f_staff_cooldown=..59},predicate=!1_splatus:holding/tag/1_durability] at @s run scoreboard players set @s spellbound_f_staff_cooldown 59
execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_f_staff_cooldown=..59},predicate=!1_splatus:holding/tag/1_durability_offhand] at @s run scoreboard players set @s spellbound_f_staff_cooldown 59

#no amo? that sucks for you!
execute as @s[scores={spellbound_right_click=1..},predicate=1_splatus:holding/tag/1_durability,predicate=1_splatus:holding/weapon/fire_staff] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Fire Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_right_click=1..},predicate=1_splatus:holding/tag/1_durability,predicate=1_splatus:holding/weapon/fire_staff] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_right_click=1..},predicate=1_splatus:holding/tag/1_durability,predicate=1_splatus:holding/weapon/fire_staff] at @s run playsound minecraft:entity.leash_knot.break player @a[distance=..20] ~ ~ ~ 1 .5

execute as @s[scores={spellbound_right_click=1..},predicate=1_splatus:holding/tag/1_durability_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Fire Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_right_click=1..},predicate=1_splatus:holding/tag/1_durability_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] at @s anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_right_click=1..},predicate=1_splatus:holding/tag/1_durability_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] at @s run playsound minecraft:entity.leash_knot.break player @a[distance=..20] ~ ~ ~ 1 .5


execute as @s[predicate=1_splatus:holding/weapon/fire_staff] at @s run item modify entity @s weapon.mainhand 1_splatus:fire_staff
execute as @s[predicate=1_splatus:holding/weapon/fire_staff_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:fire_staff



execute as @s[predicate=1_splatus:holding/weapon/fire_staff,predicate=!1_splatus:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:ranged
execute as @s[predicate=1_splatus:holding/weapon/fire_staff_offhand,predicate=!1_splatus:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:ranged


execute as @s[scores={spellbound_f_staff_cooldown=..49},predicate=1_splatus:holding/weapon/fire_staff,predicate=!1_splatus:holding/tag/1_durability] at @s run scoreboard players add @s spellbound_f_staff_cooldown 1
execute as @s[scores={spellbound_f_staff_cooldown=..49},predicate=1_splatus:holding/weapon/fire_staff_offhand,predicate=!1_splatus:holding/tag/1_durability_offhand] at @s run scoreboard players add @s spellbound_f_staff_cooldown 1

# ready
function 1_splatus:spellbound/fire_staff/action





#charging....
execute as @s[scores={spellbound_f_staff_cooldown=1..49}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging... - "},{"score":{"objective":"spellbound_f_staff_cooldown","name": "@s"}},{"translate": "/50"}]



# area_effect_cloud
#execute as @e[type=area_effect_cloud,tag=spellbound_firestaff_fireball] at @s run tp @e[tag=spellbound_firestaff_area,sort=nearest,limit=1]

# kill fishing rod
execute as @s at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]
execute as @s[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b,tag:{FireStaff:1}}]}] at @s run kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]

# WATER BAD
execute as @e[type=fireball,tag=spellbound_firestaff_fireball] at @s if block ~ ~ ~ water run scoreboard players add @e[distance=..4,sort=nearest,limit=1,type=fireball] spellbound_freeze 0
execute as @e[type=fireball,tag=spellbound_firestaff_fireball] at @s if block ~ ~ ~ water run scoreboard players set @e[distance=..4,sort=nearest,limit=1,type=fireball,scores={spellbound_freeze=0}] spellbound_freeze 4




execute as @s[predicate=1_splatus:holding/enchant/lure3,predicate=1_splatus:holding/weapon/fire_staff] if score @s spellbound_f_staff_cooldown matches 1..9 run scoreboard players set @s spellbound_f_staff_cooldown 18
execute as @s[predicate=1_splatus:holding/enchant/lure2,predicate=1_splatus:holding/weapon/fire_staff] if score @s spellbound_f_staff_cooldown matches 1..9 run scoreboard players set @s spellbound_f_staff_cooldown 9


execute as @s[predicate=1_splatus:holding/enchant/lure3_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] if score @s spellbound_f_staff_cooldown matches 1..9 run scoreboard players set @s spellbound_f_staff_cooldown 18
execute as @s[predicate=1_splatus:holding/enchant/lure2_offhand,predicate=1_splatus:holding/weapon/fire_staff_offhand] if score @s spellbound_f_staff_cooldown matches 1..9 run scoreboard players set @s spellbound_f_staff_cooldown 9
