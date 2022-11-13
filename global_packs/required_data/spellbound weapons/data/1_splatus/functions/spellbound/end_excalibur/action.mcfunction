


execute as @s[scores={spellbound_end=1..,spellbound_cooldown=1}] at @s run playsound minecraft:block.beacon.activate block @a[distance=..20] ~ ~ ~ 1 .8
execute as @s[scores={spellbound_end=1..,spellbound_cooldown=60}] at @s run playsound minecraft:entity.ender_eye.death block @a[distance=..20] ~ ~ ~ 1 1.25
#execute as @s[scores={spellbound_end=1..,spellbound_cooldown=40}] at @s run item modify entity @s weapon.mainhand 1_splatus:end_excalibur_ready

execute as @s[scores={spellbound_end=1..,spellbound_cooldown=1}] at @s run item modify entity @s weapon.mainhand 1_splatus:end_excalibur
execute as @s[scores={spellbound_end=1..,spellbound_cooldown=62}] at @s run item modify entity @s weapon.mainhand 1_splatus:end_excalibur_ready_loop

# decharge
execute as @s[scores={spellbound_end=1..,spellbound_cooldown=200}] at @s run playsound minecraft:block.conduit.deactivate ambient @a[distance=..20] ~ ~ ~ .5 1.9
execute as @s[scores={spellbound_end=1..,spellbound_cooldown=200}] at @s run item modify entity @s weapon.mainhand 1_splatus:end_excalibur