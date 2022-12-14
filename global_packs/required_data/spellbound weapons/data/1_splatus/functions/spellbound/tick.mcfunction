

function 1_splatus:spellbound/main




### DETECT WHETHER HOLDING ITEM OR NOT - Inputs into scoreboards
execute as @a[predicate=1_splatus:holding/spellbound_item,predicate=!1_splatus:holding/tag/spellbound_netherite_sword] run scoreboard players set @s spellbound_weapon 1
execute as @a[scores={spellbound_weapon=1..}] run function 1_splatus:spellbound/other/checkitem

##uuid checks
execute as @a[predicate=1_splatus:holding/spellbound_item,tag=!spellbound_uuid_checked] run function 1_splatus:spellbound/other/action/uuid_check
execute as @a[predicate=1_splatus:holding/spellbound_item] at @s as @e[distance=..6,type=#1_splatus:spellbound/chainfiring_ammo,tag=!spellbound_arrow_checked2,tag=!spellbound_arrow_checked] run function 1_splatus:spellbound/other/action/arrow_check


# functions for general items
execute as @a[scores={spellbound_end=1..}] run function 1_splatus:spellbound/end_excalibur/end_excalibur
execute as @a[scores={spellbound_blazing=1..}] at @s run function 1_splatus:spellbound/blazing_sword/blazing_sword
execute as @a[scores={spellbound_curse=1..}] run function 1_splatus:spellbound/cursed_sea_blade/cursed_sea_blade

execute as @a[scores={spellbound_sand=1..}] at @s run function 1_splatus:spellbound/windswept_sword/windswept_sword
execute as @a[scores={spellbound_delete=1..}] run function 1_splatus:spellbound/delete_sword/root
execute as @a[scores={spellbound_withering=1..}] at @s run function 1_splatus:spellbound/withering_sword/withering_sword
execute as @a[scores={spellbound_hammer=1..}] at @s run function 1_splatus:spellbound/mega_hammer/mega_hammer
execute as @a[scores={spellbound_dagger=1..}] run function 1_splatus:spellbound/dagger/dagger
execute as @a[scores={spellbound_evoker=1..}] at @s run function 1_splatus:spellbound/evokers_wrath/evokers_wrath
execute as @a[scores={spellbound_bonewand=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/bone_wand/bone_wand


execute as @a[scores={spellbound_crucible=1..}] at @s run function 1_splatus:spellbound/crucible/crucible
execute as @a[scores={spellbound_golden_ocean_edge=1..}] at @s run function 1_splatus:spellbound/golden_ocean_edge/golden_ocean_edge
execute as @a[scores={spellbound_moonlight_edge=1..}] at @s run function 1_splatus:spellbound/moonlight_edge/moonlight_edge
execute as @a[predicate=1_splatus:holding/spellbound_sword] at @s run item modify entity @s weapon.mainhand 1_splatus:spellbound_sword


execute as @a[scores={spellbound_echo_wand=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/echo_wand/echo_wand
execute as @a[scores={spellbound_f_staff=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/fire_staff/root
execute as @a[scores={spellbound_i_staff=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/ice_staff/root
execute as @a[scores={spellbound_e_staff=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/electric_staff/root

execute as @a[scores={spellbound_zgcrossbow=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] run function 1_splatus:spellbound/zgcrossbow/zgcrossbow
execute as @a[scores={spellbound_chainfiring=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/chainfiring/chainfiring
execute as @a[scores={spellbound_blowgun=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/blowgun/blowgun
execute as @a[scores={spellbound_endlight=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/endlight/endlight
execute as @a[scores={spellbound_magmus_charger=1..},predicate=!1_splatus:holding/tag/ranged_both,predicate=!1_splatus:holding/tag/bow_both] at @s run function 1_splatus:spellbound/magmus_charger/magmus_charger

########################################################################################################################################################


# mob spawning 
execute if predicate 1_splatus:weapons_achieveable as @e[type=pillager,tag=!spellbound_spawnattempted,team=!in.sanctum] run function 1_splatus:spellbound/chainfiring/spawn
execute if predicate 1_splatus:weapons_achieveable as @e[type=wither_skeleton,tag=!spellbound_spawnattempted] run function 1_splatus:spellbound/blazing_sword/spawn
execute if predicate 1_splatus:weapons_achieveable as @e[type=wither_skeleton,tag=!spellbound_spawnattempted] run function 1_splatus:spellbound/withering_sword/spawn
execute if predicate 1_splatus:weapons_achieveable as @e[type=zombie,tag=!spellbound_spawnattempted] run function 1_splatus:spellbound/dagger/spawn
#execute if predicate 1_splatus:weapons_achieveable as @e[type=husk,tag=!spellbound_spawnattempted] run function 1_splatus:spellbound/windswept_sword/spawn



########################################################################################################################################################

#markers
execute as @e[type=marker,tag=spellbound_marker] at @s run function 1_splatus:spellbound/other/weapon_entity

execute as @e[type=bat,tag=spellbound_dusties] at @s run function 1_splatus:spellbound/withering_sword/dusties

# AREAS
execute as @e[tag=spellbound_evoker_vex] at @s run function 1_splatus:spellbound/evokers_wrath/vex
execute as @e[type=area_effect_cloud,tag=spellbound_blazing_sword_area_instant] at @s run function 1_splatus:spellbound/blazing_sword/area
execute as @e[type=area_effect_cloud,tag=spellbound_blazing_sword_area] at @s run function 1_splatus:spellbound/blazing_sword/blazing_sword_areas
execute if entity @e[type=area_effect_cloud,tag=spellbound_evoker_area] run function 1_splatus:spellbound/evokers_wrath/areas
execute as @e[type=area_effect_cloud,tag=spellbound_firestaff_area] at @s unless entity @e[distance=..4,type=fireball,tag=spellbound_firestaff_fireball] at @e[distance=..4,type=!#1_splatus:spellbound/misc,sort=nearest,limit=1,nbt={HurtTime:10s}] run function 1_splatus:spellbound/fire_staff/area
execute as @e[type=area_effect_cloud,tag=spellbound_firestaff_area] at @s unless entity @e[distance=..4,type=fireball,tag=spellbound_firestaff_fireball] run function 1_splatus:spellbound/fire_staff/area

execute if entity @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] run function 1_splatus:spellbound/bone_wand/areas

execute as @e[type=marker,tag=spellbound_electric_raycast] at @s run function 1_splatus:spellbound/electric_staff/raycast


execute as @a[scores={spellbound_hammer_move=1..}] at @s run function 1_splatus:spellbound/mega_hammer/player_move
execute as @a[scores={spellbound_windswept_levitation=1..}] at @s run function 1_splatus:spellbound/windswept_sword/levitate

# item entities
execute as @e[tag=spellbound_zgcrossbow_arrow] at @s run function 1_splatus:spellbound/zgcrossbow/arrow
execute if entity @e[tag=spellbound_endlight_arrow] run function 1_splatus:spellbound/endlight/arrow_info
execute as @e[tag=spellbound_magmus_charger_arrow] at @s run function 1_splatus:spellbound/magmus_charger/arrow

execute as @e[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_min] at @s unless entity @e[tag=spellbound_magmus_charger_arrow,distance=..5] run function 1_splatus:spellbound/other/hits/magmus_min
execute as @e[type=magma_cube,tag=spellbound_bone_wand_selection] at @s run function 1_splatus:spellbound/bone_wand/selection


execute as @e[type=#1_splatus:spellbound/fish,tag=spellbound_cursedfish] at @s run function 1_splatus:spellbound/cursed_sea_blade/the_actual_thing_is_cursed
execute as @e[type=#1_splatus:spellbound/fish,tag=spellbound_cursedfish_aimed] at @s run function 1_splatus:spellbound/cursed_sea_blade/aimed_pufferfish



scoreboard players add @e[type=area_effect_cloud,tag=spellbound_blazing_sword_area] spellbound_count 1
scoreboard players add @e[type=area_effect_cloud,tag=spellbound_evoker_area] spellbound_count 1
scoreboard players add @e[type=area_effect_cloud,tag=spellbound_bone_wand_area] spellbound_count 1

execute as @e[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] at @s unless entity @e[tag=spellbound_magmus_charger_arrow,distance=..5] at @e[distance=..4,type=!#1_splatus:spellbound/misc,sort=nearest,limit=1,nbt={HurtTime:10s}] run function 1_splatus:spellbound/other/hits/magmus_mid
execute as @e[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] at @s unless entity @e[tag=spellbound_magmus_charger_arrow,distance=..5] run function 1_splatus:spellbound/other/hits/magmus_mid

execute as @e[type=!#1_splatus:spellbound/misc,scores={spellbound_blastoff=1..}] at @s run function 1_splatus:spellbound/magmus_charger/blastoff

execute as @e[type=area_effect_cloud,tag=spellbound_netherlight_beam] at @s run function 1_splatus:spellbound/netherlight/beam
execute as @e[scores={spellbound_crucible_stunned=1..}] at @s run function 1_splatus:spellbound/crucible/stunned
execute as @e[type=area_effect_cloud,tag=spellbound_golden_ocean_edge_wave] at @s run function 1_splatus:spellbound/golden_ocean_edge/wave
execute as @e[type=area_effect_cloud,tag=spellbound_golden_ocean_edge_wave2] at @s run function 1_splatus:spellbound/golden_ocean_edge/wave

execute as @e[tag=spellbound_golden_ocean_edge_iscarried] at @s run function 1_splatus:spellbound/golden_ocean_edge/carried
execute as @e[type=marker,tag=spellbound_moonlight_edge_beam] at @s run function 1_splatus:spellbound/moonlight_edge/beam
execute as @e[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] at @s run function 1_splatus:spellbound/moonlight_edge/heavy_beam

# redstone 
execute as @e[type=area_effect_cloud,tag=spellbound_power_observer] at @s run function 1_splatus:spellbound/other/redstone/area_power_observer
execute as @e[type=area_effect_cloud,tag=spellbound_power_redstonelamp] at @s run function 1_splatus:spellbound/other/redstone/area_power_redstone_lamp

execute as @e[type=player,tag=spellbound_player_usingbeam] at @s run function 1_splatus:spellbound/moonlight_edge/used_beam

#execute as @e[scores={spellbound_netherlight_stun=1..}] at @s run function 1_splatus:spellbound/netherlight/stun


execute as @e[type=area_effect_cloud,tag=spellbound_electric_staff_laser] at @s run function 1_splatus:spellbound/electric_staff/laser



scoreboard players enable @a spellbound_recipes
execute as @a[scores={spellbound_recipes=1}] at @s run function 1_splatus:spellbound/other/recipes/main
execute as @a[scores={spellbound_recipes=2..}] at @s run function 1_splatus:spellbound/other/recipes/main2
execute as @a[scores={spellbound_recipes=1..}] at @s run scoreboard players set @s spellbound_recipes 0
execute as @a[scores={spellbound_recipes=..-1}] at @s run scoreboard players set @s spellbound_recipes 0

execute as @e[scores={spellbound_hammer_stun=1..}] at @s run function 1_splatus:spellbound/mega_hammer/stun
execute as @a[scores={spellbound_golden_ocean_edge_effect=1..}] at @s run function 1_splatus:spellbound/golden_ocean_edge/effect
execute as @a[scores={spellbound_golden_ocean_edge_effect2=1..}] at @s run function 1_splatus:spellbound/golden_ocean_edge/jump
execute as @a[scores={spellbound_sand_jump=1..}] at @s run function 1_splatus:spellbound/windswept_sword/jump



execute as @a at @s store result score @s spellbound_fallspeed run data get entity @s Motion[1] 100

execute as @a[predicate=1_splatus:sneaking,tag=!spellbound_player_sneaking] at @s run scoreboard players add @s spellbound_sneak_count 1
execute as @a[predicate=1_splatus:sneaking,tag=!spellbound_player_sneaking] at @s run tag @s add spellbound_player_sneaking
execute as @a[predicate=!1_splatus:sneaking,tag=spellbound_player_sneaking] at @s run tag @s remove spellbound_player_sneaking


execute as @e[type=fireball,tag=spellbound_firestaff_fireball] at @s run tp @e[type=area_effect_cloud,tag=spellbound_firestaff_area,distance=..4,sort=nearest,limit=1] @s

execute as @e[type=#1_splatus:spellbound/chainfiring_ammo,tag=spellbound_player3] at @s rotated as @p run function 1_splatus:spellbound/other/target_forward3



execute if score count spellbound_count matches 1 run scoreboard players set @a spellbound_sneak_count 0

function 1_splatus:spellbound/cooldowns


### RIGHT CLICK 
scoreboard players set @a[scores={spellbound_right_click=1..}] spellbound_right_click 0


#### FROZEN ###
execute as @e[type=armor_stand,tag=spellbound_ice_staff_ice] at @s positioned ~ ~1 ~ run function 1_splatus:spellbound/ice_staff/ice
execute as @e[scores={spellbound_freeze=1..}] at @s run function 1_splatus:spellbound/ice_staff/freeze

### EVERY 5 SECONDS
execute if score count5 spellbound_count matches 1 run function 1_splatus:spellbound/other/5-seconds


#execute as @e[type=skeleton] store result score @s b run data get entity @s HandItems[0].tag.SpellboundChainfiring
#execute as @e[type=pillager] store result score @s spellbound_chainfiring run data get entity @s HandItems[0].tag.SpellboundChainfiring

execute as @e[type=item,tag=!spellbound_itemhitlava,nbt={Item:{tag:{SpellboundCrucible:1}}}] at @s if block ~ ~ ~ #1_splatus:spellbound/hot run function 1_splatus:spellbound/other/action/bounce
execute as @e[type=item,tag=!spellbound_itemhitlava,nbt={Item:{tag:{SpellboundMagmusCharger:1}}}] at @s if block ~ ~ ~ #1_splatus:spellbound/hot run function 1_splatus:spellbound/other/action/bounce


execute as @a[scores={spellbound_death=1..}] run function 1_splatus:spellbound/other/action/death

### DAMAGE DEALT 
execute as @a[scores={spellbound_playerhit=1..}] at @s run function 1_splatus:spellbound/hit
scoreboard players set @a[scores={spellbound_playerhit=1..}] spellbound_playerhit 0
execute as @a[scores={spellbound_playerhit2=1..}] at @s run function 1_splatus:spellbound/hit
scoreboard players set @a[scores={spellbound_playerhit2=1..}] spellbound_playerhit2 0

scoreboard players set @a[scores={spellbound_death=1..}] spellbound_death 0



execute as @a unless entity @s[predicate=!1_splatus:holding/tag/no,predicate=!1_splatus:holding/tag/no_offhand] run function 1_splatus:spellbound/other/action/no

advancement revoke @a only 1_splatus:used_shield



execute store result score daytime spellbound_count run time query daytime


tag @a[scores={spellbound_e_staff=1..}] remove spellbound_electric_staff_immune


tag @e[type=#1_splatus:spellbound/chainfiring_ammo] add spellbound_arrow_checked2