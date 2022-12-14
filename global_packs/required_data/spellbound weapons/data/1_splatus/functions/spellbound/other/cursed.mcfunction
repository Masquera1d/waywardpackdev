scoreboard players add @s spellbound_curse_time 1
execute as @s[scores={spellbound_curse_time=1..2},type=ender_dragon] run data merge entity @s {DeathLootTable:"1_splatus:entity/fish_curse_wither"}
execute as @s[scores={spellbound_curse_time=1..2},type=wither] run data merge entity @s {DeathLootTable:"1_splatus:entity/fish_curse_wither"}
execute as @s[scores={spellbound_curse_time=1..2},type=!wither,type=!ender_dragon] run data merge entity @s {DeathLootTable:"1_splatus:entity/fish_curse"}
execute as @s[scores={spellbound_curse_time=200}] run data merge entity @s {DeathLootTable:"s"}

execute as @s[tag=spellbound_iscursed,scores={spellbound_curse_time=200..}] run tag @s remove spellbound_iscursed
execute as @s[scores={spellbound_curse_time=200..}] run scoreboard players set @s spellbound_curse_time 0
execute at @s run particle minecraft:block minecraft:water ~ ~1 ~ .3 .3 .3 3 3 force @a[distance=..32]
