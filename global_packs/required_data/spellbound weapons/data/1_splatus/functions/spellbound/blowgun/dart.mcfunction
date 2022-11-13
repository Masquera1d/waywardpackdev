

scoreboard players add @s spellbound_count 1
scoreboard players add @s spellbound_count2 1

execute at @s if score @s spellbound_count2 matches 30.. run tp @s ~ ~-.02 ~
execute at @s if score @s spellbound_count2 matches 60.. run tp @s ~ ~-.02 ~
execute at @s if score @s spellbound_count2 matches 90.. run tp @s ~ ~-.02 ~



execute at @s[tag=spellbound_blowgun_arrow_raycast_speed_slow] run tp @s ^ ^ ^.04
execute at @s[tag=spellbound_blowgun_arrow_raycast_speed_normal] run tp @s ^ ^ ^.2
execute at @s[tag=spellbound_blowgun_arrow_raycast_speed_fast] run tp @s ^ ^ ^.5


particle dust 0.882 0.933 0.922 .8 ~ ~ ~ 0 0 0 0 1 force @a[distance=..256]

#hit
execute at @s if score @s spellbound_count2 matches 5.. positioned ~ ~-1 ~ if entity @e[distance=..1,type=!#1_splatus:spellbound/misc] run function 1_splatus:spellbound/blowgun/hit
execute at @s unless block ~ ~ ~ #1_splatus:spellbound/permeable run function 1_splatus:spellbound/blowgun/hit


execute at @s positioned ~ ~-1 ~ unless entity @e[distance=..1.25,type=!#1_splatus:spellbound/misc] positioned ~ ~1 ~ if block ~ ~ ~ #1_splatus:spellbound/permeable unless score @s spellbound_count matches 12.. run function 1_splatus:spellbound/blowgun/dart
execute if score @s spellbound_count matches 4.. run scoreboard players reset @s spellbound_count
execute if score @s spellbound_count2 matches 96.. run function 1_splatus:spellbound/blowgun/hit_out



