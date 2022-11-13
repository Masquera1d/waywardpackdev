advancement grant @s only minecraft:adventure/spellbound_all_weapons evokers_wrath

execute as @s[scores={spellbound_evoker=1}] at @s run scoreboard players add @s spellbound_evoker_cooldown 0
execute as @s[scores={spellbound_evoker=1,spellbound_evoker_cooldown=..50}] at @s run scoreboard players add @s spellbound_evoker_cooldown 1
execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_evoker=1,spellbound_evoker_cooldown=..49}] at @s run scoreboard players set @s spellbound_evoker_cooldown 50

attribute @s minecraft:generic.attack_speed base set 3.3

attribute @s minecraft:generic.attack_damage base set 3




#item textures
execute as @s[scores={spellbound_evoker_cooldown=1..49}] at @s run item modify entity @s weapon.mainhand 1_splatus:evokers_wrath
execute as @s[scores={spellbound_evoker_cooldown=50}] at @s run item modify entity @s weapon.mainhand 1_splatus:evokers_wrath_ready

execute as @s[scores={spellbound_evoker_cooldown=50}] at @s run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..30] ~ ~ ~ 0.5 1.85



#sneak


execute as @s[scores={spellbound_evoker_cooldown=50..}] at @s if entity @s[predicate=1_splatus:sneaking,predicate=!1_splatus:holding/enchant/unbreaking2,predicate=!1_splatus:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.5
execute as @s[scores={spellbound_evoker_cooldown=50..}] at @s if entity @s[predicate=1_splatus:sneaking,predicate=1_splatus:holding/enchant/unbreaking2] if predicate 1_splatus:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.5
execute as @s[scores={spellbound_evoker_cooldown=50..}] at @s if entity @s[predicate=1_splatus:sneaking,predicate=1_splatus:holding/enchant/unbreaking3] if predicate 1_splatus:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand 1_splatus:damage0.5



execute as @s[scores={spellbound_evoker_cooldown=50..}] at @s if entity @s[predicate=1_splatus:sneaking] run particle minecraft:effect ~ ~.5 ~ .5 .5 .5 .2 60 force @a[distance=..32]
execute as @s[scores={spellbound_evoker_cooldown=50..}] at @s if entity @s[predicate=1_splatus:sneaking] run playsound minecraft:entity.vex.ambient player @a[distance=..20] ~ ~ ~ 1 .75
execute as @s[scores={spellbound_evoker_cooldown=50..}] at @s if entity @s[predicate=1_splatus:sneaking] run playsound minecraft:entity.vex.ambient player @a[distance=..20] ~ ~ ~ 1 2
execute as @s[scores={spellbound_evoker_cooldown=50..}] at @s if entity @s[predicate=1_splatus:sneaking] positioned ~ ~-.25 ~ run function 1_splatus:spellbound/other/hits/evokers_wrath_sneak
execute as @s[scores={spellbound_evoker_cooldown=50..}] at @s if entity @s[predicate=1_splatus:sneaking] run scoreboard players reset @s spellbound_evoker_cooldown