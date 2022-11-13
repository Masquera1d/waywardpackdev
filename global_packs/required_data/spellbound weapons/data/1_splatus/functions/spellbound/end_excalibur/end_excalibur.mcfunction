advancement grant @s only minecraft:adventure/spellbound_all_weapons end_excalibur



attribute @s minecraft:generic.attack_speed base set 2.95


execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge3] if score @s spellbound_cooldown matches 1..9 run scoreboard players set @s spellbound_cooldown 18 
execute as @s[predicate=1_splatus:holding/enchant/sweeping_edge2] if score @s spellbound_cooldown matches 1..9 run scoreboard players set @s spellbound_cooldown 9 


execute as @s[scores={spellbound_end=1..,spellbound_cooldown=..200}] at @s run scoreboard players add @s spellbound_cooldown 1
execute as @s[scores={spellbound_cooldown=1}] at @s run item modify entity @s weapon.mainhand 1_splatus:end_excalibur


execute as @s[scores={spellbound_end=1..}] at @s run function 1_splatus:spellbound/end_excalibur/action

execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={spellbound_end=1..,spellbound_cooldown=..58}] run scoreboard players set @s spellbound_cooldown 59