
advancement grant @s only minecraft:adventure/spellbound_all_weapons blazing_sword

execute as @s[scores={spellbound_blazing=1..,spellbound_b_cooldown=..60}] at @s run scoreboard players add @s spellbound_b_cooldown 1

execute as @s[scores={spellbound_b_cooldown=1}] run item modify entity @s weapon.mainhand 1_splatus:blazing_sword_extinguish

# fire
execute as @s[scores={spellbound_b_cooldown=60,spellbound_blazing=1}] at @s run playsound minecraft:entity.ender_dragon.flap player @a[distance=..30] ~ ~ ~ 1 2
execute as @s[scores={spellbound_b_cooldown=61,spellbound_blazing=1}] at @s run item modify entity @s weapon.mainhand 1_splatus:blazing_sword

execute as @s[scores={spellbound_b_cooldown=61,spellbound_blazing=1}] at @s if block ~ ~ ~ #1_splatus:spellbound/soul_type_block run item modify entity @s weapon.mainhand 1_splatus:blazing_sword_soul_fire
execute as @s[scores={spellbound_b_cooldown=61,spellbound_blazing=1}] at @s if block ~ ~-1 ~ #1_splatus:spellbound/soul_type_block run item modify entity @s weapon.mainhand 1_splatus:blazing_sword_soul_fire
execute as @s[scores={spellbound_b_cooldown=61,spellbound_blazing=1}] at @s if block ~ ~-2 ~ #1_splatus:spellbound/soul_type_block run item modify entity @s weapon.mainhand 1_splatus:blazing_sword_soul_fire
execute as @s[scores={spellbound_b_cooldown=61,spellbound_blazing=1}] at @s if block ~ ~-3 ~ #1_splatus:spellbound/soul_type_block run item modify entity @s weapon.mainhand 1_splatus:blazing_sword_soul_fire


execute as @s[scores={spellbound_b_cooldown=10,spellbound_blazing=1}] at @s run item modify entity @s weapon.mainhand 1_splatus:blazing_sword_extinguish


execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_blazing=1..,spellbound_b_cooldown=..58}] run scoreboard players set @s spellbound_b_cooldown 59