
######### ATTACK SPEEDS FOR CERTAIN WEAPONS ############


execute as @a[scores={spellbound_crucible=0,spellbound_crucible_energy=1..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_crucible=0,spellbound_crucible_energy=1..}] at @s run attribute @s minecraft:generic.attack_damage base set 1

execute as @a[scores={spellbound_end=0,spellbound_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_dagger=0,spellbound_dagger_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_dagger=0,spellbound_dagger_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_damage base set 1

execute as @a[scores={spellbound_golden_ocean_edge=0,spellbound_golden_ocean_edge_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_netherlight=0,spellbound_netherlight_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_moonlight_edge=0,spellbound_moonlight_edge_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_moonlight_edge=0,spellbound_moonlight_edge_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_damage base set 1

execute as @a[scores={spellbound_hammer=0,spellbound_hammer_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_evoker=0,spellbound_evoker_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_evoker=0,spellbound_evoker_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_damage base set 1

execute as @a[scores={spellbound_withering=0,spellbound_withering_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_speed base set 4

execute as @a[scores={spellbound_withering=0,spellbound_withering_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_damage base set 1

execute as @a[scores={spellbound_sand=0,spellbound_windswept_cooldown=0..}] at @s run attribute @s minecraft:generic.attack_damage base set 1

execute as @a[predicate=1_splatus:holding/tag/spellbound_netherite_sword] at @s run attribute @s minecraft:generic.attack_damage base set -999


#execute as @a[scores={spellbound_hammer=1,spellbound_hammer_cooldown=1..}] at @s run attribute @s minecraft:generic.attack_speed base set 2.72
#execute as @a[scores={spellbound_hammer=0,spellbound_hammer_cooldown=1..}] at @s run attribute @s minecraft:generic.attack_speed base set 4


execute as @a[scores={spellbound_magmus_charger=0}] run advancement revoke @s only 1_splatus:magmus_charger
execute as @a[scores={spellbound_blowgun=0}] run advancement revoke @s only 1_splatus:blowgun


execute as @a[predicate=!1_splatus:holding/weapon/crucible] at @s unless score @s spelbloud_crucible_lastused matches 101.. run scoreboard players add @s spelbloud_crucible_lastused 1
execute as @a[predicate=!1_splatus:holding/weapon/withering_sword] at @s unless score @s spellbound_wither_lastused matches 101.. run scoreboard players add @s spellbound_wither_lastused 1

execute if score count spellbound_count matches 0 run scoreboard players remove @a[scores={spellbound_crucible_energy=2..}] spellbound_crucible_energy 1
execute if score count spellbound_count matches 5 run scoreboard players remove @a[scores={spellbound_crucible_energy=2..}] spellbound_crucible_energy 1
execute if score count spellbound_count matches 10 run scoreboard players remove @a[scores={spellbound_crucible_energy=2..}] spellbound_crucible_energy 1
execute if score count spellbound_count matches 15 run scoreboard players remove @a[scores={spellbound_crucible_energy=2..}] spellbound_crucible_energy 1

### SET COOLDOWNS TO 0 (if not holding)

execute as @a[scores={spellbound_sand=0}] at @s run scoreboard players set @s spellbound_sand_cooldown -1
execute as @a[scores={spellbound_e_staff=0}] at @s run scoreboard players set @s spellbound_e_staff_cooldown -1
execute as @a[scores={spellbound_i_staff=0}] at @s run scoreboard players set @s spellbound_i_staff_cooldown -1
execute as @a[scores={spellbound_f_staff=0}] at @s run scoreboard players set @s spellbound_f_staff_cooldown -1
execute as @a[scores={spellbound_bonewand=0}] at @s run tag @s remove spellbound_player_usingbonewand
execute as @a[scores={spellbound_end=0}] at @s run scoreboard players set @s spellbound_cooldown -1
execute as @a[scores={spellbound_blazing=0}] at @s run scoreboard players set @s spellbound_b_cooldown -1
execute as @a[scores={spellbound_hammer=0}] at @s run scoreboard players set @s spellbound_hammer_cooldown -1
execute as @a[scores={spellbound_dagger=0}] at @s run scoreboard players set @s spellbound_dagger_cooldown -1
execute as @a[scores={spellbound_evoker=0}] at @s run scoreboard players set @s spellbound_evoker_cooldown -1
execute as @a[scores={spellbound_netherlight=0}] at @s run scoreboard players set @s spellbound_netherlight_cooldown -1
execute as @a[scores={spellbound_chainfiring=0}] at @s run scoreboard players set @s spellbound_chainfiring_cooldown -1
execute as @a[scores={spellbound_endlight=0}] at @s run scoreboard players set @s spellbound_endlight_cooldown -1
execute as @a[scores={spellbound_magmus_charger=0}] at @s run scoreboard players set @s spellbound_magmus_charger_cooldown -1
execute as @a[advancements={1_splatus:magmus_charger=false}] at @s run scoreboard players set @s spellbound_magmus_charger_cooldown -1
execute as @a[scores={spellbound_crucible=0,spelbloud_crucible_lastused=100..}] at @s run scoreboard players set @s spellbound_crucible_energy 0
execute as @a[scores={spellbound_crucible=0,spelbloud_crucible_lastused=100..}] at @s run scoreboard players set @s spellbound_crucible_energy_2 0
execute as @a[scores={spellbound_crucible=0}] at @s run scoreboard players set @s spellbound_crucible_hitcool 0
execute as @a[scores={spellbound_sand=0}] at @s run scoreboard players set @s spellbound_windswept_cooldown -1


execute as @a[scores={spellbound_withering=0,spellbound_wither_lastused=100..}] at @s run scoreboard players set @s spellbound_withering_damage 0
execute as @a[scores={spellbound_withering=0,spellbound_wither_lastused=100..}] at @s run scoreboard players set @s spellbound_withering_damage2 0
execute as @a[scores={spellbound_withering=0}] at @s run scoreboard players set @s spellbound_withering_hitcool 0

execute as @a[scores={spellbound_withering=0}] at @s run scoreboard players set @s spellbound_withering_cooldown -1


execute as @a[scores={spellbound_golden_ocean_edge=0,spellbound_golden_ocean_edge_cooldown=0..}] at @s run tag @s remove spellbound_golden_ocean_edge_player
execute as @a[scores={spellbound_golden_ocean_edge=0,spellbound_golden_ocean_edge_cooldown=0..}] at @s run scoreboard players set @s spellbound_golden_ocean_edge_cooldown -1
execute as @a[scores={spellbound_moonlight_edge=0,spellbound_moonlight_edge_cooldown=0..}] at @s run scoreboard players set @s spellbound_moonlight_edge_cooldown -1
execute as @a[scores={spellbound_echo_wand=0,spellbound_echo_wand_cooldown=0..}] at @s run scoreboard players set @s spellbound_echo_wand_cooldown -1
