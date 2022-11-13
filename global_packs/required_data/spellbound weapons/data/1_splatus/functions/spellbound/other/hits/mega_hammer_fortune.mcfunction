execute at @s run particle minecraft:poof ~ ~.5 ~ .3 .3 .3 .2 30 force @a[distance=..64]
execute at @s run particle minecraft:enchanted_hit ~ ~.5 ~ 0 0 0 .5 20 force @a[distance=..64]
execute at @s run playsound minecraft:block.anvil.land player @a[distance=..30] ~ ~ ~ 2 .75
execute at @s run playsound minecraft:block.netherite_block.break player @a[distance=..30] ~ ~ ~ 2 .5
execute at @s[type=!player] run function 1_splatus:spellbound/mega_hammer/move_fortune
execute at @s[type=player] run scoreboard players set @s spellbound_hammer_move 0
execute at @s[type=player] run function 1_splatus:spellbound/mega_hammer/player_move
execute at @s run function 1_splatus:spellbound/other/damage/entity_damage3
