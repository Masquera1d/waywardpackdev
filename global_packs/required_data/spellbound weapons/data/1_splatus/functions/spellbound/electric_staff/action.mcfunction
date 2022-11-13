execute as @s[scores={spellbound_e_staff_cooldown=49}] at @s run playsound minecraft:entity.illusioner.prepare_mirror ambient @a[distance=..20] ~ ~ ~ 1 1.5
execute as @s[scores={spellbound_e_staff_cooldown=49}] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 1.5 1.5

execute as @s[scores={spellbound_e_staff_cooldown=50},predicate=1_splatus:holding/weapon/electric_staff] at @s run item modify entity @s weapon.mainhand 1_splatus:electric_staff_ready
execute as @s[scores={spellbound_e_staff_cooldown=50},predicate=1_splatus:holding/weapon/electric_staff_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:electric_staff_ready

#execute as @s[scores={spellbound_e_staff_cooldown=49..}] at @s positioned ~ ~0.75 ~ run particle electric_spark ^-.2 ^ ^.6 .1 .1 .1 .2 2 force @a[distance=..64]



execute as @s[scores={spellbound_e_staff_cooldown=49..62}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar  [{"translate": "Electric Staff"},{"translate":" is charged! - 50/50"}]





# click\
execute as @s[scores={spellbound_e_staff_cooldown=50..,spellbound_right_click=1..}] at @s run function 1_splatus:spellbound/electric_staff/attack




execute as @s[scores={spellbound_e_staff_cooldown=..49,spellbound_right_click=1..}] anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force
execute as @s[scores={spellbound_e_staff_cooldown=..49,spellbound_right_click=1..}] run playsound minecraft:entity.leash_knot.break player @a[distance=..20] ~ ~ ~ 1 .5

execute as @s[scores={spellbound_e_staff_cooldown=1..,spellbound_right_click=1..}] at @s run scoreboard players set @s spellbound_e_staff_cooldown 0



