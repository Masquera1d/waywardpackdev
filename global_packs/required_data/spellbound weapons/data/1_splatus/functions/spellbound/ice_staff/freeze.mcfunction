scoreboard players add @s spellbound_freeze 1
#execute as @s[scores={spellbound_freeze=2}] at @s run effect give @s slowness 2 0 false
execute as @s[scores={spellbound_freeze=1..}] at @s run tp @s[type=!fireball] @s
execute as @s[scores={spellbound_freeze=1..}] at @s run particle dust 0.722 0.776 0.839 1 ~ ~1 ~ .3 .5 .3 .2 5 force @a[distance=..32]
execute as @s[scores={spellbound_freeze=1..25}] at @s run data merge entity @s {Fire:-1,HasVisualFire:false,NoAI:1b}



execute as @s[scores={spellbound_freeze=2},type=!blaze] at @s run function 1_splatus:spellbound/other/damage/entity_damage3
execute as @s[scores={spellbound_freeze=2},type=blaze] at @s run function 1_splatus:spellbound/other/damage/entity_damage12

### fireball
execute as @s[scores={spellbound_freeze=2},type=#1_splatus:spellbound/fireball] at @s positioned ~ ~.25 ~ run function 1_splatus:spellbound/ice_staff/incinerate

execute as @s[scores={spellbound_freeze=15..},tag=!spellbound_frostenchanted] at @s run data merge entity @s {NoAI:0b}
execute as @s[scores={spellbound_freeze=15..},tag=!spellbound_frostenchanted] at @s run scoreboard players set @s spellbound_freeze 0


execute as @s[scores={spellbound_freeze=25..}] at @s run data merge entity @s {NoAI:0b}
execute as @s[scores={spellbound_freeze=25..}] at @s run tag @s remove spellbound_frostenchanted
execute as @s[scores={spellbound_freeze=25..}] at @s run scoreboard players set @s spellbound_freeze 0