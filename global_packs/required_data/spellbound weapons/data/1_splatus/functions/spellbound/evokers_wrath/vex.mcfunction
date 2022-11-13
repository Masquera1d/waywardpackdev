
scoreboard players add @s spellbound_count 1

effect give @s weakness 10000 255 true

execute if score @s spellbound_count matches 10.. if predicate 1_splatus:chance/5_percent run function 1_splatus:spellbound/other/disappear

execute at @s at @s run tp @s ^ ^ ^.15
execute at @s at @s run tp @s ~ ~.15 ~

execute at @s at @s if predicate 1_splatus:chance/10_percent run particle effect ~ ~.25 ~ 0 0 0 0 1 force @a[distance=..32]

execute if predicate 1_splatus:chance/5_percent at @s run tp @s ~.25 ~ ~
execute if predicate 1_splatus:chance/5_percent at @s run tp @s ~-.25 ~ ~
execute if predicate 1_splatus:chance/5_percent at @s run tp @s ~ ~ ~.25
execute if predicate 1_splatus:chance/5_percent at @s run tp @s ~ ~ ~-.25




