
advancement grant @s only minecraft:adventure/spellbound_all_weapons dagger

scoreboard players add @s spellbound_dagger_cooldown 0
execute as @s[scores={spellbound_dagger_cooldown=..9}] at @s run scoreboard players add @s spellbound_dagger_cooldown 1

attribute @s minecraft:generic.attack_speed base set 4.85
execute as @s[predicate=1_splatus:holding/enchant/efficency5] at @s run attribute @s minecraft:generic.attack_damage base set 3.5
execute as @s[predicate=1_splatus:holding/enchant/efficency4] at @s run attribute @s minecraft:generic.attack_damage base set 3
execute as @s[predicate=1_splatus:holding/enchant/efficency3] at @s run attribute @s minecraft:generic.attack_damage base set 2.5
execute as @s[predicate=1_splatus:holding/enchant/efficency2] at @s run attribute @s minecraft:generic.attack_damage base set 2
execute as @s[predicate=!1_splatus:holding/enchant/efficency5,predicate=!1_splatus:holding/enchant/efficency4,predicate=!1_splatus:holding/enchant/efficency3,predicate=!1_splatus:holding/enchant/efficency2] at @s run attribute @s minecraft:generic.attack_damage base set 1.5