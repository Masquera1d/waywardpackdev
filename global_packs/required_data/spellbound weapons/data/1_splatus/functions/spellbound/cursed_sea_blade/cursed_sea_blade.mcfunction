
execute as @s[scores={spellbound_curse=1}] run advancement grant @s only minecraft:adventure/spellbound_all_weapons cursed_sea_blade

execute as @s[scores={spellbound_curse=1}] run item modify entity @s weapon.mainhand 1_splatus:cursed_sea_blade


#execute unless score @s spellbound_curse_cooldown matches 100.. if score @s spellbound_rotation matches 90 if predicate 1_splatus:sneaking run scoreboard players add @s spellbound_curse_cooldown 1
scoreboard players set @s spellbound_curse_cooldown 0
