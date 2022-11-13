advancement grant @s only minecraft:adventure/spellbound_all_weapons blowgun


execute if entity @s[advancements={1_splatus:blowgun=true}] run scoreboard players add @s spellbound_blowgun_cooldown 1
execute if entity @s[advancements={1_splatus:blowgun=false}] run scoreboard players set @s spellbound_blowgun_cooldown 0

execute as @s[predicate=1_splatus:holding/weapon/blowgun,predicate=!1_splatus:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:ranged
execute as @s[predicate=1_splatus:holding/weapon/blowgun_offhand,predicate=!1_splatus:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:ranged

advancement revoke @s only 1_splatus:blowgun


execute as @e[distance=..6,type=arrow,tag=!spellbound_arrow_checked2,nbt=!{inGround:1b},tag=!spellbound_endlight_arrow] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 run function 1_splatus:spellbound/blowgun/shoot