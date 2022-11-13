
#no amo? that sucks for you!
execute as @s[scores={spellbound_right_click=1..}] at @s unless entity @s[predicate=!1_splatus:holding/tag/1_durability,predicate=!1_splatus:holding/tag/1_durability_offhand] run title @s[tag=!1_splatus_actionbar_disabled] actionbar {"translate": "Your Echo Wand is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={spellbound_right_click=1..}] at @s unless entity @s[predicate=!1_splatus:holding/tag/1_durability,predicate=!1_splatus:holding/tag/1_durability_offhand] run scoreboard players set @s spellbound_echo_wand_cooldown 0

execute as @s[predicate=1_splatus:holding/weapon/echo_wand] run item modify entity @s weapon.mainhand 1_splatus:echo_wand
execute as @s[predicate=1_splatus:holding/weapon/echo_wand_offhand] run item modify entity @s weapon.offhand 1_splatus:echo_wand






execute as @s[predicate=1_splatus:holding/weapon/echo_wand,predicate=!1_splatus:holding/tag/ranged] at @s run item modify entity @s weapon.mainhand 1_splatus:ranged
execute as @s[predicate=1_splatus:holding/weapon/echo_wand_offhand,predicate=!1_splatus:holding/tag/ranged_offhand] at @s run item modify entity @s weapon.offhand 1_splatus:ranged


execute if score spellbound_nocooldown spellbound_count matches 1 if score @s spellbound_echo_wand_cooldown matches ..98 at @s run scoreboard players set @s spellbound_echo_wand_cooldown 99

advancement grant @s only minecraft:adventure/spellbound_all_weapons echo_wand

execute if entity @s[predicate=!1_splatus:holding/tag/1_durability,predicate=!1_splatus:holding/tag/1_durability_offhand] unless score @s spellbound_echo_wand_cooldown matches 101.. run scoreboard players add @s spellbound_echo_wand_cooldown 1

execute if score @s[predicate=!1_splatus:sneaking] spellbound_echo_wand_cooldown matches 1..99 at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging... - "},{"score":{"objective":"spellbound_echo_wand_cooldown","name": "@s"}},{"translate": "/100"}]
execute if score @s[predicate=!1_splatus:sneaking] spellbound_echo_wand_cooldown matches 100.. at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Echo Wand"},{"translate":" is charged! - 100/100"}]

execute if score @s[predicate=1_splatus:sneaking] spellbound_echo_wand_cooldown matches 1..99 at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Charging... - ","color": "#5781ff"},{"score":{"objective":"spellbound_echo_wand_cooldown","name": "@s"}},{"translate": "/100"}]
execute if score @s[predicate=1_splatus:sneaking] spellbound_echo_wand_cooldown matches 100.. at @s run title @s[tag=!1_splatus_actionbar_disabled] actionbar [{"translate": "Echo Wand is charged! - 100/100","color": "#5781ff"}]


execute if score count spellbound_count matches 1 unless score spellbound_tip spellbound_count matches 0 run tellraw @s[tag=!spellbound_player_hasbeenchecked_echowand] [{"translate":"","color":"gray"},{"translate": "Weapon Tip:","color": "yellow"},{"translate":" Holding "},{"keybind":"key.sneak","color": "gray"},{"translate":" whilst aiming will make your suction area deal 0 damage and use less durability","color": "gray"}]
execute if score count spellbound_count matches 1 unless score spellbound_tip spellbound_count matches 0 run tag @s add spellbound_player_hasbeenchecked_echowand


execute if score @s spellbound_echo_wand_cooldown matches 70 run playsound minecraft:block.bell.resonate player @a[distance=..20] ~ ~ ~ 1.5 1.5
execute if score @s spellbound_echo_wand_cooldown matches 95..100 positioned ~ ~1.25 ~ run particle minecraft:sculk_soul ^-.2 ^ ^.6 .3 .3 .3 .05 1 force @a[distance=..64]
execute if score @s spellbound_echo_wand_cooldown matches 100 run playsound minecraft:entity.warden.tendril_clicks player @a[distance=..20] ~ ~ ~ 1.5 1
execute if score @s spellbound_echo_wand_cooldown matches 100 run playsound minecraft:block.amethyst_cluster.step player @a[distance=..20] ~ ~ ~ 1.5 1.5


execute if score @s spellbound_echo_wand_cooldown matches 100.. if score @s[predicate=1_splatus:sneaking] spellbound_right_click matches 1 run function 1_splatus:spellbound/echo_wand/release2
execute if score @s spellbound_echo_wand_cooldown matches 100.. if score @s[predicate=!1_splatus:sneaking] spellbound_right_click matches 1 run function 1_splatus:spellbound/echo_wand/release
execute if score @s spellbound_right_click matches 1 positioned ~ ~1.25 ~ run particle minecraft:sculk_soul ^ ^ ^1 .2 .2 .2 .05 10 force @a[distance=..32]
execute if score @s spellbound_right_click matches 1 if score @s spellbound_echo_wand_cooldown matches 100.. run scoreboard players reset @s spellbound_echo_wand_cooldown



#enchant
execute as @s[predicate=1_splatus:holding/enchant/lure3,predicate=1_splatus:holding/weapon/echo_wand] if score @s spellbound_echo_wand_cooldown matches 1..9 run scoreboard players set @s spellbound_echo_wand_cooldown 20
execute as @s[predicate=1_splatus:holding/enchant/lure2,predicate=1_splatus:holding/weapon/echo_wand] if score @s spellbound_echo_wand_cooldown matches 1..9 run scoreboard players set @s spellbound_echo_wand_cooldown 10

execute as @s[predicate=1_splatus:holding/enchant/lure3_offhand,predicate=1_splatus:holding/weapon/echo_wand_offhand] if score @s spellbound_echo_wand_cooldown matches 1..9 run scoreboard players set @s spellbound_echo_wand_cooldown 20
execute as @s[predicate=1_splatus:holding/enchant/lure2_offhand,predicate=1_splatus:holding/weapon/echo_wand_offhand] if score @s spellbound_echo_wand_cooldown matches 1..9 run scoreboard players set @s spellbound_echo_wand_cooldown 10






kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]