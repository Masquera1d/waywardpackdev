
attribute @s minecraft:generic.attack_speed base set 3.15
attribute @s minecraft:generic.attack_damage base set 1.25

item modify entity @s weapon.mainhand 1_splatus:witherblade

scoreboard players operation @s spellbound_withering_damage += @s spellbound_withering_damage2
scoreboard players set @s spellbound_withering_damage2 0


execute unless score @s spellbound_withering_hitcool matches 20.. run scoreboard players add @s spellbound_withering_hitcool 1



execute unless score @s spellbound_withering_cooldown matches 31.. run scoreboard players add @s spellbound_withering_cooldown 1

execute as @s[scores={spellbound_withering=1}] at @s run advancement grant @s only minecraft:adventure/spellbound_all_weapons withering

scoreboard players operation @s spellbound_withering_damage += @s spellbound_withering_damage2
scoreboard players set @s spellbound_withering_damage2 0

scoreboard players set @s spellbound_withering_kill 0




execute unless score @s spellbound_withering_cooldown matches 100.. if score @s spellbound_withering_damage matches 300.. run function 1_splatus:spellbound/withering_sword/ready

execute if score @s spellbound_withering_cooldown matches 100.. if predicate 1_splatus:sneaking run scoreboard players add @s spellbound_withering_cooldown 1



execute if score @s spellbound_withering_cooldown matches 100.. unless predicate 1_splatus:sneaking run scoreboard players set @s spellbound_withering_cooldown 100
execute if score @s spellbound_withering_cooldown matches 100.. as @s[nbt={HurtTime:9s}] run scoreboard players set @s spellbound_withering_cooldown 100
execute if score @s spellbound_withering_cooldown matches 100.. if score @s spellbound_withering_movement matches 1.. run scoreboard players set @s spellbound_withering_cooldown 100
execute if score @s spellbound_withering_cooldown matches 100.. run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate":"Witherblade has absorbed max souls! Hold down "},{"keybind":"key.sneak"},{"translate": " to heal"}]


execute if score @s spellbound_withering_cooldown matches 100 if predicate 1_splatus:chance/25_percent run particle soul ~ ~1 ~ .05 .05 .05 .1 1 force @a[distance=..64]
execute if score @s spellbound_withering_cooldown matches 105.. run particle soul_fire_flame ~ ~1 ~ .1 .1 .1 .15 2 force @a[distance=..64]
execute if score @s spellbound_withering_cooldown matches 105 run playsound block.bell.resonate player @a[distance=..20] ~ ~ ~ 1 1.5
execute if score @s spellbound_withering_cooldown matches 102 run playsound minecraft:entity.allay.item_given player @a[distance=..20] ~ ~ ~ 1 .65
execute if score @s spellbound_withering_cooldown matches 102 run playsound minecraft:entity.allay.item_given player @a[distance=..20] ~ ~ ~ 1 .5
execute if score @s spellbound_withering_cooldown matches 120.. run function 1_splatus:spellbound/withering_sword/heal

scoreboard players set @s spellbound_withering_movement 0


scoreboard players set @s spellbound_wither_lastused 0
