advancement grant @s only minecraft:adventure/spellbound_all_weapons chainfiring_crossbow


execute as @s[predicate=1_splatus:holding/weapon/chainfiring,predicate=!1_splatus:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:ranged
execute as @s[predicate=1_splatus:holding/weapon/chainfiring_offhand,predicate=!1_splatus:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:ranged

scoreboard players add @s[scores={spellbound_chainfiring_cooldown=..4}] spellbound_chainfiring_cooldown 1
scoreboard players add @s[scores={spellbound_chainfiring_cooldown=100..}] spellbound_chainfiring_cooldown 1
scoreboard players add @s spellbound_chainfiring_cooldown 0


execute if entity @s[gamemode=!creative,gamemode=!spectator] if score @s spellbound_chainfiring_cooldown matches 15.. if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run function 1_splatus:spellbound/chainfiring/action
execute unless entity @s[gamemode=!creative,gamemode=!spectator] if score @s spellbound_chainfiring_cooldown matches 15.. run function 1_splatus:spellbound/chainfiring/action


execute if entity @s[gamemode=!creative,gamemode=!spectator] if score @s spellbound_chainfiring_cooldown matches 200.. if entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",Slot:-106b}]}] run function 1_splatus:spellbound/chainfiring/action_firework
execute unless entity @s[gamemode=!creative,gamemode=!spectator] if score @s spellbound_chainfiring_cooldown matches 200.. run function 1_splatus:spellbound/chainfiring/action_firework



execute if score @s spellbound_chainfiring_cooldown matches 5 as @e[distance=..6,type=firework_rocket,tag=!spellbound_arrow_checked2] if score @s spellbound_uuid = @p[scores={spellbound_chainfiring_cooldown=5}] spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run function 1_splatus:spellbound/chainfiring/action_firework2
execute if score @s spellbound_chainfiring_cooldown matches 5 as @e[distance=..6,type=arrow,tag=!spellbound_arrow_checked2,tag=!spellbound_chainfiring_arrow_despawn] if score @s spellbound_uuid = @p[scores={spellbound_chainfiring_cooldown=5}] spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run function 1_splatus:spellbound/chainfiring/action2
execute if score @s spellbound_chainfiring_cooldown matches 5 as @e[distance=..6,type=arrow,tag=!spellbound_arrow_checked2,tag=!spellbound_chainfiring_arrow_despawn] if score @s spellbound_uuid = @p[scores={spellbound_chainfiring_cooldown=5}] spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 run function 1_splatus:spellbound/chainfiring/action2


execute if score @s spellbound_chainfiring_cooldown matches 5 as @e[distance=..4,type=firework_rocket,tag=!spellbound_arrow_checked2,tag=!spellbound_chainfiring_firework] store result score @s spellbound_uuid run data get entity @s Owner[0]
execute if score @s spellbound_chainfiring_cooldown matches 5 as @e[distance=..4,type=firework_rocket,tag=!spellbound_arrow_checked2,tag=!spellbound_chainfiring_firework] store result score @s spellbound_uuid2 run data get entity @s Owner[1]

execute if score @s spellbound_chainfiring_cooldown matches 116..199 run scoreboard players set @s spellbound_chainfiring_cooldown 4
execute if score @s spellbound_chainfiring_cooldown matches 206..299 run scoreboard players set @s spellbound_chainfiring_cooldown 4
