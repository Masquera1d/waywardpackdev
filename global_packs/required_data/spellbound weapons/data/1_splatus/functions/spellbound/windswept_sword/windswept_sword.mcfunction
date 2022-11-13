execute unless score @s spellbound_windswept_cooldown matches 20.. run scoreboard players add @s spellbound_windswept_cooldown 1



attribute @s generic.attack_speed base set 3.8


execute if predicate 1_splatus:sneaking if score @s spellbound_windswept_cooldown matches 20.. positioned ~ ~1 ~ positioned ^ ^ ^.5 run function 1_splatus:spellbound/windswept_sword/release