
execute store result score @s spellbound_rotation2 run data get entity @s Rotation[0]
execute as @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] store result score @s spellbound_rotation2 run data get entity @s Rotation[0]


execute store result score entity spellbound_rotation2 run scoreboard players get @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_rotation2
execute store result score p spellbound_rotation2 run scoreboard players get @s spellbound_rotation2

scoreboard players operation p spellbound_rotation2 -= entity spellbound_rotation2


execute unless score p spellbound_rotation2 matches -135..135 at @s run function 1_splatus:spellbound/other/action/damage_shield
execute unless score p spellbound_rotation2 matches -135..135 run tag @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast] remove spellbound_blowgun_arrow_raycast_flame
execute unless score p spellbound_rotation2 matches -135..135 run kill @e[sort=nearest,limit=1,type=marker,tag=spellbound_blowgun_arrow_raycast]
execute if score p spellbound_rotation2 matches -135..135 run function 1_splatus:spellbound/other/damage/entity_damage1
execute if score p spellbound_rotation2 matches -135..135 run effect give @s poison 2 0 false


