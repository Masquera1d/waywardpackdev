scoreboard players add @s spellbound_hammer_stun 1

execute if score @s spellbound_hammer_stun matches 1 run function 1_splatus:spellbound/other/damage/entity_damage1

execute if score @s spellbound_hammer_stun matches 1 run playsound minecraft:entity.blaze.hurt player @a[distance=..20] ~ ~ ~ 1.5 .5
execute if score @s spellbound_hammer_stun matches 1 run playsound minecraft:item.trident.hit_ground player @a[distance=..20] ~ ~ ~ 1.5 .75
execute if score @s spellbound_hammer_stun matches 1 run playsound minecraft:block.rooted_dirt.break player @a[distance=..20] ~ ~ ~ 1 .5
execute if score @s spellbound_hammer_stun matches 1 run scoreboard players set @p[scores={spellbound_hammer=1..}] spellbound_hammer_cooldown 0

execute if score @s spellbound_hammer_stun matches 1..3 run particle poof ~ ~ ~ .5 .05 .5 .05 30 force @a[distance=..32]

execute if score @s spellbound_hammer_stun matches 1..5 run tp @s ~ ~-0.15 ~
execute if score @s spellbound_hammer_stun matches 6..10 run tp @s ~ ~-0.05 ~

execute if score @s spellbound_hammer_stun matches 1..20 at @s run tp @s @s
execute if score @s spellbound_hammer_stun matches 1..20 at @s run data merge entity @s {NoAI:1b}
execute if score @s spellbound_hammer_stun matches 30 at @s run data merge entity @s {NoAI:0b}

execute if score @s spellbound_hammer_stun matches 21..25 run tp @s ~ ~0.15 ~
execute if score @s spellbound_hammer_stun matches 26..30 run tp @s ~ ~0.05 ~
execute if score @s spellbound_hammer_stun matches 30.. run scoreboard players reset @s spellbound_hammer_stun
