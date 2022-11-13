execute as @s[scores={spellbound_i_staff_cooldown=49}] at @s run playsound minecraft:entity.illusioner.prepare_mirror ambient @a[distance=..20] ~ ~ ~ 1 1.5
execute as @s[scores={spellbound_i_staff_cooldown=49}] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 1.5 1.5

execute as @s[scores={spellbound_i_staff_cooldown=50},predicate=1_splatus:holding/weapon/ice_staff] at @s run item modify entity @s weapon.mainhand 1_splatus:ice_staff_ready
execute as @s[scores={spellbound_i_staff_cooldown=50},predicate=1_splatus:holding/weapon/ice_staff_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:ice_staff_ready



#execute as @s[scores={spellbound_i_staff_cooldown=49..}] at @s positioned ~ ~0.75 ~ run particle electric_spark ^-.2 ^ ^.6 .1 .1 .1 .2 2 force @a[distance=..64]

execute as @s[scores={spellbound_i_staff_cooldown=49..62}] at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Ice Staff"},{"translate":" is charged! - 50/50"}]




execute as @s[scores={spellbound_i_staff=0}] at @s run scoreboard players set @s spellbound_i_staff_cooldown 0




# click\
execute as @s[scores={spellbound_i_staff_cooldown=50..,spellbound_right_click=1..}] at @s positioned ~ ~ ~ run function 1_splatus:spellbound/ice_staff/attack





execute as @s[scores={spellbound_i_staff_cooldown=..49,spellbound_right_click=1..}] anchored eyes run particle smoke ^ ^ ^1 .3 .3 .3 .05 10 force @a[distance=..32]
execute as @s[scores={spellbound_i_staff_cooldown=..49,spellbound_right_click=1..}] run playsound minecraft:entity.leash_knot.break player @a[distance=..20] ~ ~ ~ 1 .5


execute as @s[scores={spellbound_i_staff_cooldown=..60,spellbound_right_click=1..}] run scoreboard players set @s spellbound_i_staff_cooldown 0