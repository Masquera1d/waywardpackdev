scoreboard players add @s spellbound_windswept_levitation 1

particle poof ~ ~ ~ 0 0 0 .02 1 force @a[distance=..64]


execute if score @s spellbound_windswept_levitation matches 1 run effect give @s minecraft:jump_boost 1 128 true

execute if score @s spellbound_windswept_levitation matches 1 run effect give @s levitation 1 12 true

execute if score @s spellbound_windswept_levitation matches 6 run effect clear @s levitation
execute if score @s spellbound_windswept_levitation matches 6 run effect give @s levitation 1 3 true


execute if score @s spellbound_windswept_levitation matches 11 run effect clear @s levitation
execute if score @s spellbound_windswept_levitation matches 11 run effect give @s levitation 1 1 true



execute if score @s spellbound_windswept_levitation matches 21 run effect clear @s levitation
execute if score @s spellbound_windswept_levitation matches 21 run effect give @s slow_falling 2 0 true
execute if score @s spellbound_windswept_levitation matches 51 run effect clear @s slow_falling
execute if score @s spellbound_windswept_levitation matches 51.. run scoreboard players reset @s spellbound_windswept_levitation


