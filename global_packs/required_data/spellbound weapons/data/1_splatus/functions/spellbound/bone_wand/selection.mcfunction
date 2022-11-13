scoreboard players add @s spellbound_count 1


execute if score @s spellbound_count matches 1 at @s run tp @s ~ ~-512 ~

effect give @s glowing 
effect give @s invisibility 10000 1 true

execute if score @s spellbound_count matches 2.. unless entity @p[scores={spellbound_bonewand=1..},distance=..3] run function 1_splatus:spellbound/other/disappear


#execute unless block ~ ~.05 ~ #1_splatus:spellbound/air run team join spellbound_red @s
#execute if block ~ ~.05 ~ #1_splatus:spellbound/air run team leave @s
